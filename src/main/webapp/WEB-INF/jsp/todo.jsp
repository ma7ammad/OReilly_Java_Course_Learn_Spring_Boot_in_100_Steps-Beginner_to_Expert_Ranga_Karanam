<HTML>

	<HEAD>	
		<TITLE>WELCOME</TITLE>
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">	
	</HEAD>

	<BODY BGCOLOR="FFFFFF">
		<div class="container">
			<HR>
			Add todo for ${name}
		
				<form method="post">
					<fieldset class="form-group">
						<label>Description</label>
						<input class="form-controle" name="desc" type="text" required="required"/>
					</fieldset>
					
					<button type="submit" class="btn btn-success">Add</button>
				</form>
		</div>
		<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
		<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	</BODY>

</HTML>