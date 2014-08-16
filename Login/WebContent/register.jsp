<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
	<%@include file="WEB-INF/style.css" %>
</style>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register</title>
</head>
<body>
	<div id="container">
	<center><h2>Register:</h2>
	</center>
			<div id="regForm">
			<form action="register.do" name="regForm" onsubmit="return validateForm()" method="post">
				<br>Username: <input type="text" name="userName">
			    <br>Password: <input type="password" name="pass">
				<br>Re-type password: <input type="password" name="rePass"> 
				<br>Forename: <input type="text" name="forename">
				<br>Surname: <input type="text" name="surname">
				<br>Age: <input type="text" name="age">
				<br>Gender: 
				<input type="radio" name="sex" value="male">Male
				<input type="radio" name="sex" value="female">Female 
				<br><br><input type="submit" value="submit"/>
			</form>
			<br><a href="/Login/">Back</a>
			
		</div>
		
		<div id="validateDiv">
		
		</div>
	</div>
		
		<script type="text/javascript">
			function validateForm(){
			var uname = document.forms["regForm"]["userName"].value;
			var pass = document.forms["regForm"]["pass"].value;
			var rePass = document.forms["regForm"]["rePass"].value;
			var forname = document.forms["regForm"]["forname"].value;
			var surname = document.forms["regForm"]["surname"].value;
			var age = document.forms["regForm"]["age"].value;
			var gender = document.forms["regForm"]["age"].value;
			var sex = document.forms["regForm"]["sex"].value;
			regexp = /^([1-9]|[1-9][0-9])$/;
			
				
				if (uname == null || uname == ""){
				document.getElementById("validateDiv").innerHTML = "<br><br>enter your username";
				return false;
				} else {
					document.getElementById("validateDiv").innerHTML = "";
				}
			
				if (pass == null || pass == ""){
				document.getElementById("validateDiv").innerHTML = "<br><br><br>enter your password";
				return false;
				} else {
					document.getElementById("validateDiv").innerHTML = "";
				}
				
				if (rePass == null || rePass == ""){
					document.getElementById("validateDiv").innerHTML = 
						"<br><br><br><br><br>retype your password";
					return false;
					} else {
						document.getElementById("validateDiv").innerHTML = "";
					}
			
				if (pass !== rePass){
					document.getElementById("validateDiv").innerHTML = 
						"<br><br><br>password and confirmation <br>password do not match";
					return false;
					} 
				
				if (forname == null || forname == ""){
					document.getElementById("validateDiv").innerHTML = 
						"<br><br><br><br><br><br><br>enter your forname";
					return false;
					} else {
						document.getElementById("validateDiv").innerHTML = "";
					}
				
				if (surname == null || surname == ""){
					document.getElementById("validateDiv").innerHTML = 
						"<br><br><br><br><br><br><br><br>enter your surname";
					return false;
					} else {
						document.getElementById("validateDiv").innerHTML = "";
					}
				
				if (age == null || age == ""){
					document.getElementById("validateDiv").innerHTML = 
						"<br><br><br><br><br><br><br><br><br><br>enter your age";
					return false;
					} else {
						document.getElementById("validateDiv").innerHTML = "";
					}
				
				if (!age.match(regexp)){
					document.getElementById("validateDiv").innerHTML = 
						"<br><br><br><br><br><br><br><br><br><br>enter a digit [1-99]";
					
					return false;
					} else {
						document.getElementById("validateDiv").innerHTML = "";
						
					}
				
			}
		</script>
		
</body>
</html>