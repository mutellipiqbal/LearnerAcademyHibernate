<%@page import="com.leanerAcademy.dao.EntityDao"%>
<%@page import="com.leanerAcademy.entity.*"%>
<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List of teacher</title>
<link type="text/css" rel="stylesheet" href="css/style.css">
</head>
<body style="background-image: url('css/background.jpg');">


<div id="page">
		<div id="wrapper">

			<div id="header">
				<h3>Teachers List</h3>
			</div>
		</div>		
		<div id="container">

			<div id="content">

				<table>
					<tr>
					    <th>Teacher id</th>
						<th>Teacher Name</th>
						
					</tr>				
					 <%ArrayList<Teacher> teachers = 
            (ArrayList<Teacher>)request.getAttribute("teacherList");
        for(Teacher teacher:teachers){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=teacher.getId()%></td>
                <td><%=teacher.getTeacherName()%></td>            
            </tr>
            <%}%>
				</table>			
			</div>
        <hr/>
		</div>
	</div>
</body>
</html>