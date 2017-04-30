<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Waga webstore</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="CSS/styleMain.css">
</head>
<body>
<jsp:include page="page_header.jsp" />
<div class="mainContainer">
		<fieldset class="border1">
		 <legend> About Us: </legend>
			<p>welcome to the best webstore website in the state. we offer every electronics equipmment for out customers.</p>

			<p>Webpage made by:</p>
			
			<ul>
				<li><a href="https://www.linkedin.com/in/abenezer-debissa/">Abenezer Debissa</a></li>
				<li> <a href="https://www.linkedin.com/in/esayas-g-gebreegziabher/">Esayas Gebregziher</a></li>
				<li><a href="https://www.linkedin.com/in/sirakh/">Sirak Hagos</a></li>
			</ul>
				
			<br>
			<form action="AboutController" method="post">
  				<p><label>Email: <input type="text" name="uemail"  class="form-control"></label></p>
 			 	<p><label>Comment:<textarea name="comment" cols="60" rows="8" class="form-control">any comment....</textarea> </label></p>
 			 	<input type="submit" value="submit" class="btn btn-primary"/>
			</form>
</fieldset>
</div>

	<jsp:include page="page_footer.jsp" />
</body>
</html>