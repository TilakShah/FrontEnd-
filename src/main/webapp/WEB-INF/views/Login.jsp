<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body>

<jsp:include page = "header.jsp" />


<form action="/loginaction" >
<center>            <table>
                    <tr>
                        <td>Name</td>
                        <td><input type="text" name="Name"/></td>
                    </tr>
                 <tr>
                        <td>Password</td>
                        <td><input type="Password" name="Password"/></td>
                    </tr>
               
                    <tr>
                        <td><input type="submit" value="submit"/></td>
                        <td><input type="reset" value="Reset"/></td>
                    </tr>
                </table>


</center>
</form>

<jsp:include page = "footer.jsp" />

</body>
</html>