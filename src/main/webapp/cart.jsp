<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart...</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <link rel="stylesheet" href="CSS/styleMain.css">

</head>
<body>
<jsp:include page="page_header.jsp" />
	<div class="mainContainer">
		
	<h3>List of selected products </h3></h4>
	<table class="table table-hover" >
		<thead>
			<tr>
				<th>Product ID</th>
				<th>Product Name</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${cart.products}" var="product">
				<tr>
					<td><c:out value="${product.productId}" /></td>
					<td><c:out value="${product.name}" /></td>
					<td><c:out value="${product.price}" /></td>
 					<td><form  action="Cart" method="POST" >
 							<input type="submit" name="remove" value="Remove From Cart" class="btn btn-primary"/>
 							<input type="hidden" name="productId" value=<c:out value="${product.productId}"/> />
 						</form>
 					</td>
 												 
				</tr>
			</c:forEach>
		</tbody>
	</table>
<c:if test="${ cart.products[0] != null }">
	<p><a href="AddressController">Continue to Billing and Shipping Address</a></p>
</c:if>
	</div>
<jsp:include page="page_footer.jsp" />
</body>
</html>