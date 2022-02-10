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
 
  left:0;
  background-color: #48C9B0;
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
  width: 60%;
  background-color: #3498DB;
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

<div class="split left" align="center" >

     <form action="studentList" >
   <input type="submit" value="Student List"/>
    </form>

   <form action="teacherList" >
   <input type="submit" value="Teacher List"/>
  </form>
  

     <form action="courseList" >
   <input type="submit" value="Course List"/>
    </form>

   <form action="classroomList" >
   <input type="submit" value="ClassRoom List"/>
  </form>

    
    <form  action="logout" >
      <input type="submit" value="Logout">
    </form><br>
</div>

</class>

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
