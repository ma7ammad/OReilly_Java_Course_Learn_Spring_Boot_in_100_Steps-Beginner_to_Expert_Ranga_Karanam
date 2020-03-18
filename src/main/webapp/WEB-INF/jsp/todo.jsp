<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<HTML>

	<HEAD>	
		<TITLE>Todo</TITLE>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">	
	</HEAD>

	<BODY BGCOLOR="FFFFFF">
		<div class="container">
			<HR>
			Add todo for ${name}
		
				<form:form method="post" modelAttribute="todo"> <!-- commandName deprecated, modelAttribute instead -->
					<fieldset class="form-group">
						<form:label path="desc">Description</form:label>
						<form:input path="desc" class="form-controle" name="desc" type="text" required="required"/>
						<form:errors path="desc" cssClass="text-warning"/>
					</fieldset>
					
					<fieldset class="form-group">
						<form:label path="targetDate">Target Date</form:label>
						<form:input path="targetDate" class="form-controle" name="targetDate" type="text"/>
						<form:errors path="targetDate" cssClass="text-warning"/>
					</fieldset>
					
					<button type="submit" class="btn btn-success">Add</button>
				</form:form>
		</div>
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
		
		<script
		src="webjars/bootstrap-datetimepicker/2.4.2/js/bootstrap-datetimepicker.js"></script>
	<script>
		$('#targetDate').datetimepicker({
				format:"dd/mm/yyyy HH:mm",
  				dateFormat: "dd/mm/yyyy", 
 			    timeFormat: "HH:mm",
 			  inline:true,
			  lang:'en'
			});
	</script>
	
	</BODY>

</HTML>