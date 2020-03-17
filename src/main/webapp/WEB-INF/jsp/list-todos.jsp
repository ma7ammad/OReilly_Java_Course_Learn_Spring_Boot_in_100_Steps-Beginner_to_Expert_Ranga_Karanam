<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<HTML>
	<HEAD>
		<TITLE> ${name} Todo's</TITLE>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	</HEAD>
	<BODY BGCOLOR="#f3e6a6">
		<div class="container">
			<HR>
			<h1>${name } Todo's are</h1>
			<table class="table table-striped">
				<caption>Following is the list of ${name } todos:</caption> 
				<thead>
					<tr>
						<th>Description</th>
						<th>Target Date</th>
						<th>Is it done?</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<!-- JSTL for loop -->
					<c:forEach items="${todos}" var="todo">
						<tr>
							<th>${todo.desc}</th>
							<th>${todo.targetDate}</th>
							<th>${todo.done}</th>
							<th><a class="btn btn-warning" href="/delete-todo?id=${todo.id}">Delete </a></th>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
			<HR>
			<br>
			<div><a class="button" href = "/add-todo"> Add a new Todo</a></div>			
		</div>
		
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</BODY>

</HTML>