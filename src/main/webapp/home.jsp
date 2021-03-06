<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home: products</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <script src="javaScript/script.js"></script>  
  <link rel="stylesheet" href="CSS/styleMain.css"> 

</head>

<body>
<jsp:include page="page_header.jsp" />
	<div class="mainContainer">
		<div class="bigContainer">
		Welcome ${userName}
	
			<div id="listProducts"> 
				welcome to our shopping app...
			 </div>
		</div>
		
 		<div class="rightBox">
		<h4>List Of Products Added to the Cart</h4>
		<table  border=1 width="300px">
				<c:forEach items="${cart.products}" var="product">
					<tr>
						<td><c:out value="${product.productId}" /></td>
						<td><c:out value="${product.name}" /></td>
						<td><c:out value="${product.price}" /></td>
	 					
					</tr>
				</c:forEach>
		</table>
		</div> 
		
	</div>
	<hr>
<jsp:include page="page_footer.jsp" />
</body>
</html>