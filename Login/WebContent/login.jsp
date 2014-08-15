<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
		<%@include file="WEB-INF/style.css" %>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login page</title>
</head>
<body>
<div id="container">
	<div id="formDiv">
		<form name="loginForm" action="login.do" onsubmit="return validateForm()" method="post">
		<br>Username: <input type="text" name="userName" />
		<br>Password:  <input type="password" name="password" />
		<br><input type="submit" value="submit"/>
	</form>
	<br>
	<a href="/Login/">Back</a>
	</div>
	<div id="validateDiv">
		
	</div>
</div>
	
	
	<script type="text/javascript">
		function validateForm(){
			var userName = document.forms["loginForm"]["userName"].value;
			var pass = document.forms["loginForm"]["password"].value;
			if (userName == null || userName == ""){
				document.getElementById("validateDiv").innerHTML = "<br><br>enter your username";
				return false;
			} else {
				document.getElementById("validateDiv").innerHTML = "";
			}
			if ( pass == null || pass == ""){
				document.getElementById("validateDiv").innerHTML = "<br><br><br>enter your password";
				return false;
			} else {
				document.getElementById("validateDiv").innerHTML = "";
			}
		}
	</script>
</body>
</html>