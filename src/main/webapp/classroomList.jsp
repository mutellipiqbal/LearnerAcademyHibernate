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
				<h3>ClassRoom List</h3>
			</div>
		</div>		
		<div id="container">

			<div id="content">

				<table>
					<tr>
					    <th>ClassRoom Id</th>
						<th>ClassRoom Name</th>
						
					</tr>				
					 <%ArrayList<ClassRoom> classRooms = 
            (ArrayList<ClassRoom>)request.getAttribute("classRoomList");
        for(ClassRoom classRoom:classRooms){%>
        <%-- Arranging data in tabular form
        --%>
            <tr>
                <td><%=classRoom.getId()%></td>
                <td><%=classRoom.getClassRoomName()%></td>            
            </tr>
            <%}%>
				</table>			
			</div>
        <hr/>
		</div>
	</div>

</body>
</html></html>