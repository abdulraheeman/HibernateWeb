<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.ar.hibernate.*" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="obj" class="com.ar.hibernate.User">
</jsp:useBean>
<jsp:setProperty property="*" name="obj"/>
<%
int i=(Integer)UserDao.register(obj);
if(i>0){
out.println("Successfully registered");
}
else {
	out.println("Registration is Unsuccessful");
}
String str="index.jsp";
response.sendRedirect(str);

%>

</body>
</html>