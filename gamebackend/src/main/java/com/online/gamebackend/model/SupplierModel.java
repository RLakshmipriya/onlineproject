package com.online.gamebackend.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="supplier")
public class SupplierModel {
	    @Id
		@GeneratedValue
		@Column(name="supplier_id")
		private int sid;
		@Column(name="supplier_name")
		private String sname;
		@Column(name="supplier_email")
		private String semail;
		@Column(name="supplier_contact")
		private String scontact;
		@Column(name="supplier_address")
		private String saddress;
		public int getSid() {
			return sid;
		}
		public void setSid(int sid) {
			this.sid = sid;
		}
		public String getSname() {
			return sname;
		}
		public void setSname(String sname) {
			this.sname = sname;
		}
		public String getSemail() {
			return semail;
		}
		public void setSemail(String semail) {
			this.semail = semail;
		}
		public String getScontact() {
			return scontact;
		}
		public void setScontact(String scontact) {
			this.scontact = scontact;
		}
		public String getSaddress() {
			return saddress;
		}
		public void setSaddress(String saddress) {
			this.saddress = saddress;
		}
		

		
	
}
	
