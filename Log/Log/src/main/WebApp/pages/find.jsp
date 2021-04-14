
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
* {
	box-sizing: border-box
}

/* Set height of body and the document to 100% */
body, html {
	height: 100%;
	margin: 0;
	font-family: Times New Roman;
}

/* Style tab links */
.tablink {
	background-color: #1ac6ff;
	color: white;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	font-family: Times New Roman;
	width: 20%;
}

.tablink:hover {
	background-color: #00ace6;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
	color: #000000;
	padding: 100px 20px;
	height: 100%;
}
.tablink1{
    background-color: #1ac6ff;
    color: white;
    float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 25px;
	font-family: Times New Roman;
	width: 100%;
}

#ADD USER {
	background-color: #ffffff;
}
 #UPDATE USER {
     background-color: #ffffff;} 
#DELETE USER {
	background-color: #ffffff;
}

#VIEW {
	background-color: #ffffff;
}

#LOG OUT {
	background-color: #ffffff;
}
.myTable th { 
  background-color:#4ddbff;
  color: white; 
  }
</style>
</head>
<body onload="myFunction()">
 <div class="tablink1"><b>Material Log</b></div>
	<button class="tablink" onclick="openPage('ADD USER', this, '#00ace6')"
		id="defaultOpen">ADD USER</button>
	<button class="tablink" onclick="openPage('UPDATE USER', this, '#00ace6')" >UPDATE USER</button> 
	<button class="tablink" onclick="openPage('DELETE USER', this, '#00ace6')">DELETE USER</button>
	<form action="finduser" method="post">
	<button class="tablink" onclick="openPage('VIEW', this, '#00ace6')">VIEW</button>
	</form>
	<form action="login">
		<button type="submit" class="tablink"
	
			onclick="openPage('LOG OUT', this, '#00ace6')">LOG OUT</button>
<table border="1" class="myTable">
 <th>User ID</th>
 <th>Password</th>
 <th>User Role</th>
 <c:forEach var ="users" items="${users}" >
        <tr>
					<td>${users.id}</td>
					<td>${users.password}</td>
					<td>${users.role}</td>
				</tr>
        </c:forEach>
      </table>
</body>
</html>