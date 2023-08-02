<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page isErrorPage="true" %>
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
<title>Error Page</title>
	<link href="css/mystyle.css" rel="stylesheet" type="text/css">
</head>
<body>

		<div class="container text-center">
			<img src="img/Error.png" class="img-fluid">
			<h3>Sorry ! Something went wrong</h3>
			<p><%=exception %></p>
			<a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home</a>
		
		</div>

</body>
</html>