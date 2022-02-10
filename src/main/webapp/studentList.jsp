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
				<h3>Students</h3>
			</div>
		</div>
		


		<div id="container">

			<div id="content">

				<table>
					<tr>
					    <th>id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>age</th>
						<th>email</th>
						<th>gender</th>
						<th>classRoom_id</th>

					</tr>
					


					<c:forEach var="student" items="${studentList}">
						<tr>
							<td>${student.id}</td>
							<td>${student.firstName}</td>
							<td>${student.lastName}</td>
							<td>${student.age}</td>
							<td>${student.email}</td>
							<td>${student.gender}</td>
							
						</tr>
					</c:forEach>
				</table>
			</div>
		</div>
	</div>

</body>
</html>