<!DOCTYPE html>
<html lang="en">
<%@include file=header.jsp %>
<body>

<div class="container">
  <h2>Register form</h2>
  <form class="form-horizontal" action="/action_page.php">
    <br><div class="form-group">
      <label class="control-label col-sm-2" for="email">First Name:</label>
      <div class="col-sm-10">
        <input type="firstname" class="form-control" id="firstname" placeholder="Enter firstname" name="firstname">
      </div></br>
    </div>
    <br><div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Last Name:</label>
      <div class="col-sm-10">          
        <input type="lastname" class="form-control" id="lastname" placeholder="Enter lastname" name="lastname">
      </div>
	  </div></br>
	  <br><div class="form-group">
      <label class="control-label col-sm-2" for="email">Contact Number:</label>
      <div class="col-sm-10">
        <input type="contact no" class="form-control" id="contact no" placeholder="Enter contact no" name="contact no">
      </div></br>
    </div>
    <br><div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
      </div>
	  </div></br>
	  
	  <div class="form-group">
      <label class="control-label col-sm-2" for="email">Conform Password:</label>
      <div class="col-sm-10">
        <input type="conform Password" class="form-control" id="conform pwd" placeholder="Enter conform password" name="conform password">
      </div>
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-success">Submit</button>
      </div>
    </div>
  </form>
</div>
<%@include file=footer.jsp %>
</body>
</html>