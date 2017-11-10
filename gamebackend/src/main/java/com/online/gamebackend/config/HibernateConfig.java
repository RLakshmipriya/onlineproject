package com.online.gamebackend.config;

import java.util.Properties;


import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;

import com.online.gamebackend.model.Cart;
import com.online.gamebackend.model.CartItem;
import com.online.gamebackend.model.CategoryModel;
import com.online.gamebackend.model.CustomerModel;
import com.online.gamebackend.model.ProductModel;
import com.online.gamebackend.model.SupplierModel;


@Configuration
@ComponentScan({"com.online.gamebackend"})
//@EnableTransactionManagement
public class HibernateConfig {
	@Autowired
	@Bean(name ="dataSource")
	public DataSource dataSource() {
		DriverManagerDataSource ds = new DriverManagerDataSource();
		ds.setDriverClassName("org.h2.Driver");
		ds.setUrl("jdbc:h2:tcp://localhost/~/flora");
		ds.setUsername("sa");
		ds.setPassword("");
		return (DataSource) ds;
	}

	private Properties getHibernateProperties() {
		Properties prop = new Properties();
		prop.put("hibernate.show_sql", "true");//not-a-must
		prop.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		prop.put("hibernate.format_sql", "true");//not-a-must		
		prop.put("hibernate.hbm2ddl.auto", "update");
		return prop;
	}

	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory sessionFactory(DataSource dataSource) {
		LocalSessionFactoryBuilder builder = new LocalSessionFactoryBuilder(dataSource);
		builder.addProperties(getHibernateProperties());
		builder.addAnnotatedClass(CustomerModel.class);
		builder.addAnnotatedClass(ProductModel.class);
		builder.addAnnotatedClass(SupplierModel.class);
		builder.addAnnotatedClass(CategoryModel.class);
		builder.addAnnotatedClass(Cart.class);
		builder.addAnnotatedClass(CartItem.class);
		return builder.buildSessionFactory();
	}

	// Create a transaction manager
/*	@Bean
	@Autowired
	public HibernateTransactionManager txManager(SessionFactory sessionFactory) {
		return new HibernateTransactionManager(sessionFactory);
	}*/

}

