<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Succes</title>
</head>
<body>
<h1>Login successful!</h1>
<jsp:useBean id="user" class="org.nipex.java.dto.User" scope="request"></jsp:useBean>
<h3>Hello 
<jsp:getProperty property="userName" name="user"/>
</h3>
</body>
</html>