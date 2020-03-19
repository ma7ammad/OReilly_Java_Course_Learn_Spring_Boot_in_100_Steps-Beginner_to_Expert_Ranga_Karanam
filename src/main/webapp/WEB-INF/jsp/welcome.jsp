<%@ include file="common/header.jspf" %>

<HTML>

	<HEAD>	
		<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
		<TITLE>WELCOME</TITLE>
		
	</HEAD>
	
	<BODY BGCOLOR="FFFFFF">
			<%@ include file="common/navigation.jspf" %>

			
			<H2>Mohamed heet u van harte welcom ${name }</H2>
			<H2><a href = "/list-todos"> click here </a> to manage your Todo's</H2>
			
			
			Send me mail at <a href="mailto:support@mohamedadam.com">
			
			support@mohamedadam.com</a>.
			
			
			<HR>
<%@ include file="common/footer.jspf" %>