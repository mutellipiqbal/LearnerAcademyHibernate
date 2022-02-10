<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  font-family: Arial;
  color: white;
}

.split{
  height: 100%;
  width: 100%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}



.left {
 height: 100%;
  width: 16%;
 
  padding-top: 50px;
  padding-left: 10px;
  left:0;
  background-color: #32DE84;
}
h2, h4, h6 {
  color:  #1F1A17;
}

.right {
 height: 100%;
  width: 84%;

  right: 0;
  background-color: #f2f2f2;
}

.centered {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  text-align: center;
}

input {
  width: 40%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
input[type="radio"] {
  width: 15px;
  color:blue;
}

input[type="checkbox"] {
  width: 15px;
  color:blue;
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
        width: 250px;
        color: #0093CA;
        
}

input[type=submit]:hover {
  background-color: #45a049;
}

.link-button-wrapper {
    width: 200px;
    height: 40px;
    box-shadow: inset 0px 1px 0px 0px #ffffff;
    border-radius: 4px;
    background-color: #097BC0;
    box-shadow: 0px 2px 4px gray;
    display: block;
    border:1px solid #094BC0;
   
}
.link-button-wrapper > a {
    display: inline-table;
    cursor: pointer;
    text-decoration: none;
    height: 100%;
    width:100%;
}
.link-button-wrapper > a > h1 {
    margin: 0 auto;
    display: table-cell;
    vertical-align: middle;
    color: #f7f8f8;
    font-size: 18px;
    font-family: cabinregular;
    text-align: center;
}
</style>
</head>
<body>

	<%
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); //this works for http 1.1. If your have lower version, add this:
	response.setHeader("Pragma", "no-cache"); //for proxy server;
	response.setHeader("Expires","0");
	
	if (session.getAttribute("username") == null && session.getAttribute("password")==null) {
		response.sendRedirect("adminLogin.jsp");
	}

	%>

<div class="split left">
  <div class="link-button-wrapper">
  

    <div class="link-button-wrapper">
      <a href="classroomList.jsp">
        <h1>Classroom list</h1>
  </a></div><br>
  <div class="link-button-wrapper">
      <a href="courseList.jsp">
        <h1>Course list</h1>
   </a></div><br>
   <div class="link-button-wrapper">
   <form action="list" method="get">
   <input type="submit" value="teacher"/>
  </form>

    
    <form align="center" action="logout" >
      <input type="submit" value="Logout">
    </form><br>
</div>
</div>

<div class="split right">
  <div>
    <h2 align="center">Register Student</h1>


	<form  align="center" action="registerStudent" method="post" >
		 <label for="fname">Student's First Name: </label><br>
         <input required type="text" name="firstName" /><br>
         <label for="lname">Student's Last Name: </label><br>
         <input required type="text" name="lastName" /><br>

         <label for="email">Student's Email: </label><br>
         <input required type="email" name="email" /> <br>
         
         <label for="age">Student's Age: </label><br>
         <input required  min="1" max="99" type="number" name="age" /><br>
         
          <label for="teacher">teacher's name: </label><br>
         <input required  type="text" name="teacher" /><br>
         
         
         <h6>Select Gender:<h6><br>
        
         <input type="radio" name="gender" value="male"> Male
<input type="radio" name="gender" value="female"> Female<br>

<h6>Select Classroom:<h6><br>
        
         <input type="radio" name="classroom" value="Class A"> Class A
<input type="radio" name="classroom" value="Class B">Class B
   <input type="radio" name="classroom" value="Class C"> Class C
<input type="radio" name="classroom" value="Class D"> Class D<br>

<h4>Select Course<h4><br>
<input required type="checkbox" name="department" value="Java developer">Java developer
<input type="checkbox" name="department" value="English">English
<input type="checkbox" name="department" value="IT"> IT
<input type="checkbox" name="department" value="Literature">Physics
<input type="checkbox" name="department" value="Math">Math
<input type="checkbox" name="department" value="Sience"> Science <br>


        
         <input type="submit" value="Register"/><br>

	</form>
  </div>
</div>
     
</body>
</html> 
