<%@page import="com.leanerAcademy.dao.EntityDao"%>
<%@page import="com.leanerAcademy.entity.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of students</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/background.jpg');">
	
<div id="page">
		<div id="wrapper">

			<div id="students">
				<h3>Students List</h3>
			</div>
		</div>		
		<div id="container">

			<div id="content">

				<table>
					<tr>
					    <th>Student Id</th>
						  <th>Student First Name</th>
						    <th>Student Last Name</th>
						      <th>Student Age</th>
						        <th>Student Email</th>
						          <th>Student Gender</th>  

					</tr>				
					 <%ArrayList<Student> students = 
            (ArrayList<Student>)request.getAttribute("studentList");
        for(Student student:students){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=student.getId()%></td>
                <td><%=student.getFirstName()%></td> 
                 <td><%=student.getLastName()%></td>
                  <td><%=student.getAge()%></td>
                   <td><%=student.getEmail()%></td>
                    <td><%=student.getGender()%></td>
                            
            </tr>
            <%}%>
				</table>			
			</div>
        <hr/>
		</div>
	</div>
</body>
</html>