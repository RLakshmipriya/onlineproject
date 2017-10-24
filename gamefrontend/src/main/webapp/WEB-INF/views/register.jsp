<!DOCTYPE html>
<html lang="en">
<%@include file="header.jsp" %>
<body>

<div class="container">
  <h2>Register form</h2>
  <form class="form-horizontal" action="register" method="POST">
    
    <br><div class="form-group">
      <label class="control-label col-sm-2" for="name"> Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
      </div>
	  </div></br>
	  <br><div class="form-group">
      <label class="control-label col-sm-2" for="email"> Email:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
	  </div></br>
	  <br><div class="form-group">
      <label class="control-label col-sm-2" for="contact">Contact :</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="contact" placeholder="Enter contact " name="contact">
      </div></br>
    </div>
    <br><div class="form-group">
      <label class="control-label col-sm-2" for="place">Place:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="place" placeholder="Enter place" name="place">
      </div>
	  </div></br>
    <br><div class="form-group">
      <label class="control-label col-sm-2" for="password">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
      </div>
	  </div></br>
	   
	  
	 
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <!-- <button type="submit" class="btn btn-success">Submit</button> -->
        <input type="submit" name="butsumbit" class="btn btn-success" value="Register">
      </div>
    </div>
  </form>
</div>
<%@include file="footer.jsp" %>
</body>
</html>