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

			<div id="header">
				<h3>Course List</h3>
			</div>
		</div>		
		<div id="container">

			<div id="content">

				<table>
					<tr>
					    <th>Course Id</th>
						<th>Course Name</th>
						
					</tr>				
					 <%ArrayList<Course> courses = 
            (ArrayList<Course>)request.getAttribute("courseList");
        for(Course course:courses){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=course.getId()%></td>
                <td><%=course.getTitle()%></td>            
            </tr>
            <%}%>
				</table>			
			</div>
        <hr/>
		</div>
	</div>

</body>
</html>