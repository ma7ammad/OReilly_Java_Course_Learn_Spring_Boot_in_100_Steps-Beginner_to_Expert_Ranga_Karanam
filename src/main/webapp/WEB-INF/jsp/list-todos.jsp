<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<HTML>
	<HEAD>
		<TITLE> ${name} Todo's</TITLE>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
	</HEAD>
	<BODY BGCOLOR="#f3e6a6">
<%@ include file="common/navigation.jspf" %>
		
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
						<th>Update</th> 
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<!-- JSTL for loop -->
					<c:forEach items="${todos}" var="todo">
						<tr>
							<th>${todo.desc}</th>
							<th><fmt:formatDate value="${todo.targetDate}" pattern="dd/MM/yyyy hh:mm"/></th>
							<th>${todo.done}</th>
							<th><a class="btn btn-success" href="/update-todo?id=${todo.id}">Update </a></th>
							<th><a class="btn btn-warning" href="/delete-todo?id=${todo.id}">Delete </a></th>
						</tr>
					</c:forEach>
					
				</tbody>
			</table>
			<HR>
			<br>
			<div><a class="button" href = "/add-todo"> Add a new Todo</a></div>			
		</div>
<%@ include file="common/footer.jspf" %>