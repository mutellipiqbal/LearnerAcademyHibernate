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
<%=request.getAttribute("teacherList")%>
	<div id="page">


		<div id="wrapper">

			<div id="header">
				<h3>Teachers</h3>
			</div>
		</div>
		


		<div id="container">

			<div id="content">

				<table>
					<tr>
					    <th>Teacher id</th>
						<th>Teacher Name</th>
			

					</tr>


<c:forEach var="teacher" items="${teacherList}">
						<tr>
							<td>${teacher.id}</td>
							<td>${teacher.teacherName}</td>
						
				
							
						</tr>
					</c:forEach>
					
				</table>
			</div>
		</div>
	</div>

</body>
</html>