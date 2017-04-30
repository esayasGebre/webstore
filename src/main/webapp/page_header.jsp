<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%-- <%@taglib prefix="t" tagdir="/WEB-INF/tags"%> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Z hopping</title>
<link rel="stylesheet" href="CSS/styleHF.css">
  <link rel="stylesheet" href="CSS/styleMain.css"> 
</head>
<body>
	<div class="header">
		<img src="CSS/2bg.jpg" alt=" header image">
		<!-- <img src="CSS/my1.png"> -->
	</div>
	<div class="mainContainer">
	<c:choose>
		 <c:when  test="${admin != null}">
			<nav> <a href="about.jsp">About</a> | <a href="home.jsp">Home</a> | 
				<a class="lnk" href="orderhistory.jsp">Order History</a> | 
				<a class="lnk" href="editUserProfile.jsp">Account</a> |
				<a class="lnk" href="ProductController.do?action=listProducts">Manage Products</a> |
				<a href="logout">LogOut</a> | <a href="Cart" >Cart</a> 
			</nav>
		</c:when>
		<c:when  test="${user_info != null}">
			<nav> <a href="about.jsp">About</a>  | <a href="home.jsp">Home</a> | 
				<a class="lnk" href="orderhistory.jsp">Order History</a> | 
				<a class="lnk" href="editUserProfile.jsp">Account</a> |
				<a href="logout">LogOut</a> | <a href="Cart" >Cart</a> 
			</nav>
		</c:when>
		<c:otherwise>
		<nav> <a href="about.jsp">About</a>  | <a href="home.jsp">Home</a> | <a href="Cart" >Cart</a> | <a href="adminlogin.jsp" >Login as Admin</a> 
		</nav>
		</c:otherwise>
		</c:choose>
		<hr>
		</div>
</body>
</html>