<%@page import="com.tech.blog.entities.User"%>
<%@page errorPage="error.jsp" %>
<%  
	User user=(User)session.getAttribute("currentuser");

	if(user==null){
		
		response.sendRedirect("Login.jsp");
	}



%>



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
  <nav class="navbar navbar-expand-lg navbar-dark primary-background">
  <a class="navbar-brand" href="index.jsp"><span class="fa fa-asterisk"></span>Tech Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#"><span class="fa fa-pencil-square-o"></span> LearnCode with Akshay <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         <span class="fa fa-sitemap"></span> Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Programming Language</a>
          <a class="dropdown-item" href="#">Project Implementation</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Data Structure</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"> <span class="fa fa-phone-square"></span> Contact</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"> <span class="fa fa-plus"></span> DoPost</a>
      </li>
    </ul>
    <ul class="navbar-nav mr-right">
    <li class="nav-item">
        <a class="nav-link" href="#!" data-toggle="modal" data-target="#profile-modal"> <span class="fa fa-user-circle"></span> <%=user.getName() %></a>
      </li>
    	<li class="nav-item">
        <a class="nav-link" href="LogoutServlet"> <span class="fa fa-user-plus"></span> Logout</a>
      </li>
    </ul>
  </div>
</nav>
<!--  Nav bar end -->

		<!-- Profile Modal -->
		<!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header primary-background text-white text-center">
        <h5 class="modal-title" id="exampleModalLabel">TechBlog</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="container text-center">
      
      <img src="pic/default.png" class="imf-fluid" style="border-radius: 50%; max-width: 125px;"><br>
      
      <h5 class="modal-title" id="exampleModalLabel"><%= user.getName() %></h5>
      <div id="profile-details">
      		<table class="table table-striped">
					  
					  <tbody>
					    <tr>
					      <th scope="row">ID</th>
					      <td><%=user.getId() %></td>
					      
					    </tr>
					    <tr>
					      <th scope="row">Email</th>
					      <td><%=user.getEmail() %></td>
					      
					    </tr>
					    <tr>
					      <th scope="row">Gender</th>
					      <td><%=user.getGender() %></td>
					      
					    </tr>
					     <tr>
					      <th scope="row">About</th>
					      <td><%=user.getAbout() %></td>
					    </tr>
					  </tbody>
					</table>
					</div>
					
					<!-- Profile edit work -->
					
					<div id="profile-edit" style="display: none;">
					
					<h4 class="mt-2">Please Edit Carefully</h4>
					<form action="EditServlet" method="post" enctype="multipart/form-data">
							<table class="table">
							<tr>
								<td>ID:</td>
								<td><%= user.getId() %></td>
							</tr>
							<tr>
							    <td>Email :</td>
							    <td><input type="email" class="form-control" name="email" value="<%= user.getEmail()%>">  </td>
							</tr>
							<tr>
								<td>Name:</td>
								<td><input type="text" class="form-control" name="name" value="<%= user.getName()%>">  </td>
							</tr>
							<tr>
								<td>Password:</td>
								<td><input type="password" class="form-control" name="password" value="<%=user.getPassword()%>"></td>
							</tr>
							<tr>
								<td>Gender:</td>
								<td><%=user.getGender().toUpperCase() %></td>
							</tr>
							<tr>
								<td>About:</td>
								<td>
									<textarea rows="3" class="form-control" name="about"><%=user.getAbout() %>
									</textarea>
								</td>
							</tr>
							<tr>
								<td>New Profile :</td>
								<td>
								<input type="file" name="image" class="form-control">
								</td>
							</tr>
							</table>
							<div class="container">
								<button type="submit" class="btn btn-outline-primary">Save</button>
							</div>
					</form>
					</div>
      </div>
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button id="edit-profile-button"type="button" class="btn btn-primary">EDIT</button>
      </div>
    </div>
  </div>
</div>
		
		<!-- End of Profile Model -->
		
		
		<!-- Add post Model -->
		<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Provide post details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      	<form action="AddPostServlet" method="post">
      			<div class="form-group">
      				<select class="form-control">
      					<option selected disabled>Select Category</option>
      					<option>cat1</option>
      					<option>cat2</option>
      					<option>cat3</option>
      					
      				
      				</select>
      			
      			</div>
      	
      			<div class="form-group">
      				<input type="text" placeholder="Enter Post Title" class="form-control">
      			</div>
      			<div class="form-group">
      				<textarea class="form-control" style="height: 200px;" placeholder="Enter your Content" ></textarea>
      			</div>
      			<div class="form-group">
      				<textarea class="form-control" style="height: 200px;" placeholder="Enter your Code (if any)" ></textarea>
      			</div>
      			<div class="form-group">
      			 <label>Select your pic</label>
      			 <input type="file">
      			</div>
      	</form>
      
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
		<!-- End post Model -->
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
				
				<script>
						$(document).ready(function(){
							
							// logic for one click edit to orignal or original to edit
							let editStatus=false;
							
							$('#edit-profile-button').click(function() 
							{
								if(editStatus==false)
								{
							//	alert("button clicked")
							// hide profile details target
								$("#profile-details").hide()
								// show profile edit
								
								$("#profile-edit").show();
								editStatus=true;
								$(this).text("Back")
								}
								else
								{
									$("#profile-details").show()
									
									// show profile edit
									$("#profile-edit").hide();
									
									editStatus=false;
								 $(this).text("Edit")
								}
							})
							
							
						});
				</script>
		
			
			
			
			
</body>
</html>