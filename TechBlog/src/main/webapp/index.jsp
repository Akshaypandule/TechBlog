<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- CSS link -->
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" 
			integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" 
			crossorigin="anonymous">

			<!-- Font Awesome intro 4 link for icons use -->
			<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<title>Insert title here</title>
	
	
	
			<!-- mystyle.css page link  -->
			<link href="css/mystyle.css" rel="stylesheet" type="text/css">
			
</head>
<body>

			<!-- Navbar -->
			<%@include file="navbar.jsp" %>
			
			<!-- Banner -->
			<div class="container-fluid p-0 m-0"> <!-- get all page -->
				<div class="jumbotron primary-background text-white">
					<div class="container">
					<h3 class="display-4">Welcome to TechBlog</h3>
					<p>Welcome to technical blog ,world of technology
					A programming language is a system of notation for writing computer programs.Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language.
					</p>
					<p>
						The description of a programming language is usually split into the two components of syntax (form) and semantics (meaning), which are usually defined by a formal language.
					</p>
					<button class="btn btn-outline-light btn-lg"><span class="fa fa-external-link"></span> Start ! its Free</button>
					<a href="Login.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user fa-spin"></span> Login</a>
					</div>
					
				</div>
			</div>
			
			<!-- Cards -->
			<div class="container">
				<div class="row mb-2">
					<div class="col-md-4">
					  <div class="card-body">
					    <h5 class="card-title">Java Programming</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
					  </div>
					</div>
					<div class="col-md-4">
					  <div class="card-body">
					    <h5 class="card-title">Java Programming</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
					  </div>
					</div>
					<div class="col-md-4">
					  <div class="card-body">
					    <h5 class="card-title">Java Programming</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
					  </div>
					</div>
					</div>
					<div class="row">
					<div class="col-md-4">
					  <div class="card-body">
					    <h5 class="card-title">Java Programming</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
					  </div>
					</div>
					<div class="col-md-4">
					  <div class="card-body">
					    <h5 class="card-title">Java Programming</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
					  </div>
					</div>
					<div class="col-md-4">
					  <div class="card-body">
					    <h5 class="card-title">Java Programming</h5>
					    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
					    <a href="#" class="btn primary-background text-white">Read More</a>
					  </div>
					</div>
					</div>
				</div>
			
			
			
	
	
	
	
	
	

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