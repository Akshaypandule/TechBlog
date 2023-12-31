<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
			crossorigin="anonymous">

			<!-- Font Awesome intro 4 link for icons use -->
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Register Page</title>
	
	
			<!-- mystyle.css page link  -->
			<link href="css/mystyle.css" rel="stylesheet" type="text/css">


</head>
<body>

		<%@include file="navbar.jsp" %>
		<main class="primary-background p-5" style="padding-bottom: 80px;">
			<div class="container">
				<div class="col-md-6 offset-md-3" >
				 <div class="card">
				 	<div class="card-header text-center fa-2x">
				 	<span class="fa fa-user-circle"></span><br>
				 	Register Here
				 	
				 	
				 	</div>
				 	<div class="card-body">
				 	<form action="UserServlet" method="post">
				 			<div class="form-group">
						    <label for="user_name">User Name</label>
						    <input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
						  </div>
						  
						  <div class="form-group">
						    <label for="exampleInputEmail1">Email address</label>
						    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
						    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
						  </div>
						  
						  <div class="form-group">
						    <label for="Gender">Select Gender</label>
						    <br>
						    <input type="radio" id="Gender" name="gender" value="male"> Male
						    <input type="radio" id="Gender" name="gender" value="female"> Female
						  </div>
						  
						    <div class="form-group">
						    <label for="exampleInputPassword1">Password</label>
						    <input name="password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
						  </div>
						  <div class="form-group">
						  	<textarea  class="form-control"rows="5" name="about" placeholder="Enter Something about Self"></textarea>
						  
						  </div>
						  
						  <div class="form-check">
						    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
						    <label class="form-check-label" for="exampleCheck1">agree term and condition</label>
						  </div>
						  <br>
						  <button type="submit" class="btn btn-primary">Submit</button>
				 </form>
				 	
				 	
				 	</div>
				 
				 </div>
				
				
				</div>
			
			</div>
		
		
		</main>









<!-- Java Script -->
				<script src="https://code.jquery.com/jquery-3.7.0.min.js" 
				integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
			 	crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" 
				integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" 
				crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" 
				integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" 
				crossorigin="anonymous"></script>

</body>
</html>