<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
	.myclass
	{
		margin:0 auto;
	}
</style>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="container">
	<spring:form action=" ${pageContext.request.contextPath}/product/add" method="post" class="col-lg-6 col-md-6 col-sm-12 col-xs-12 myclass" modelAttribute="product">
		<div class="form-group">
			<label>Enter ProductName</label>
			<spring:input path="product_Name" placeholder="Enter ProductName" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Enter Description</label>
			<spring:textarea path="product_Description" placeholder="Enter Description" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Enter Brand</label>
			<spring:input path="product_Brand" placeholder="Enter Brand" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Enter Price</label>
			<spring:input path="product_Price" placeholder="Enter Price" class="form-control"/>
		</div>
		<div class="form-group">
			<label>Enter Quantity</label>
			<spring:input path="product_Quantity" placeholder="Enter Quantity" class="form-control"/>
		</div>
		<div class="form-group">
			<input type="submit" value="Add Product" class="btn btn-block btn-primary"/>
			<input type="reset" value="Reset" class="btn btn-block btn-danger"/>
		</div>
	</spring:form>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>
