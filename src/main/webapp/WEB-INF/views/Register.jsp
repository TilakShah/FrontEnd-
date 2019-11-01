<%@page import="javax.servlet.jsp.tagext.TagLibraryInfo"%>
<%@page import="javax.servlet.descriptor.TaglibDescriptor"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib prefix="spring"  uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<jsp:include page = "header.jsp" />
<spring:form action="registercontroller" class="col-lg6-6 col-md-6 col-sm-12 col-sx-12 myclass" modelAttribute="UserBasket" >
           <div class="from-group">
                   
                     <label>Enter UserName</label>
                        <spring:input path="user_Name" placeholder="Enter Name" class="form-control"/>
                    </div>
          
          
           <div class="from-group">
                   
                     <label>Enter Email</label>
                        <spring:input path="User_Mail" placeholder="Enter Email" class="form-control"/>
                    </div>
          
           <div class="from-group">
                   
                     <label>Enter Mobile</label>
                        <spring:input path="User_Mobile" placeholder="Enter Mobile" class="form-control"/>
                    </div>
          
          
           <div class="from-group">
                   
                     <label>Enter City</label>
                        <spring:input path="address_Obj.city" placeholder="Enter City" class="form-control"/>
                    </div>
          
          
          
          
           <div class="from-group">
                   
                     <label>Enter State</label>
                        <spring:input path="address_Obj.state" placeholder="Enter State" class="form-control"/>
                    </div>
          
          
          
           <div class="from-group">
                   
                     <label>Enter pincode</label>
                        <spring:input path="address_Obj.pin_Code" placeholder="Enter pincode" class="form-control"/>
                    </div>
          
          <div class="from-group">
                        <input type="submit" value="Register" class="btn btn-block btn-primary"/>
                        <input type="reset" value="Reset"  class="btn btn-block btn-danger"  />
                </div>



</spring:form>
<jsp:include page = "footer.jsp" />
</body>
</html>