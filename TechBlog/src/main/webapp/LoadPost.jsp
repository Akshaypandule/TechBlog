<%@page import="com.tech.blog.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@page import="com.tech.blog.dao.Postdao"%>

<div class="row">
<%
		Postdao post=new Postdao(ConnectionProvider.getConnection());
		 int cid=Integer.parseInt(request.getParameter("cid"));
		 List<Post> dm=null;
		 if(cid==0){
			 dm=post.getAllPost();
		 }
		 else{
			 
			 dm=post.getPostBycatid(cid);
			 
		 }
		 
		List<Post> d=post.getAllPost();
		
		for(Post p:d){
			
%>
			 <div class="col-md-6">
			 	<div class="card">
			 		<div class="card-body">
			 			<b><%=p.getpTitile() %></b>
			 			<p><%=p.getpContent() %></p>
			 			<pre><%=p.getpCode() %></pre>
			 		</div>
			 	
			 	</div>
			 
			 
			 </div>
					
			
			
			
<%
		}




%>
</div>