<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>registerAndLogin</title>
<style>
input[type=text], select {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type=password], select {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 40%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

label {
        display: inline-block;
        width: 150px;
        
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 100%;
  height: 100%;

}
</style>

</head>
<body>

<div>

	<h1 style="text-align:center">Admin Login</h1>
	
	
<form action="adminLogin" method="post" align="center">
		<label for="uname">User Name: </label><br>
		<input required type="text" name="uName" /> <br>
		<label for="pass">Password: </label><br>
		<input required type="password" name="pass" /><br> 
		<input type="submit" value="Sign in" />

	</form>
	
	<br>
</div>
</body>
</html>