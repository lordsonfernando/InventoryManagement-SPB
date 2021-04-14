
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
<title>Admin</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
	font-family:Times New Roman;
	width: 25%;
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
	font-family:Times New Roman;
	width: 100%;
	float: left;
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
#icon{
float: right;
}
.myTable th { 
  background-color:#4ddbff;
  color: white; 
  }
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>
</head>

<body style="font-family: Times New Roman">
    <div class="tablink1"><b>Material Log</b></div>
    <div class="tablink1">
    <form action="adminfirstpage">
		<button type="submit" style="float: left;background-color:#1ac6ff " ><i class="fa fa-home" id="icon" style="font-size:35px;color:white;"></i></button>
	</form>
    	<form action="login">
    <button  type = "submit" style="float: right;background-color:#1ac6ff "><i class="fa fa-power-off" id="icon" style="font-size:35px;color:white;"></i></button>
    </form>
    </div>
	<button class="tablink" onclick="openPage('ADD USER', this, '#00ace6')"  >ADD USER</button>
	<button class="tablink" onclick="openPage('UPDATE USER', this, '#00ace6')" >UPDATE USER</button> 
	<button class="tablink" onclick="openPage('DELETE USER', this, '#00ace6')">DELETE USER</button>
	<form action="finduser" method="post">
	<button class="tablink" onclick="openPage('VIEW', this, '#00ace6')" id="defaultOpen">VIEW</button>
	
	</form>

	<form action="addr" method="post">
		<div id="ADD USER" class="tabcontent">
			<table>
				<tr>
					<td>Enter User Id:</td>
					<td><input type="text" name="id" placeholder="Enter User Id"   onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode > 47 && event.charCode < 58)"
						 required autocomplete="off"><br></td>
				</tr>
				<tr>
					<td>Enter Password:</td>
					<td><input type="password" name="password"
					     autocomplete="off"
						placeholder="Enter Password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}"
						title="Must contain at least one number and one uppercase and lowercase letter, it must contains 8 to 15 characters"
						required><br></td>
				</tr>
				<tr>
                    <td>Enter Role:</td>
                    <td>
					    <select name="role" required>
                            <option value="" disabled="disabled" selected="selected">Role</option>
                            <option>Admin</option>
                            <option>Security</option>
                        </select>
                     </td>
				</tr>
				<td><input type="submit" value="Add User"></td>
			</table>
		</div>
	</form>
<form action="updateUser" method="post">
<div id="UPDATE USER" class="tabcontent">
  <table>
<tr><td>
Enter User Id:</td><td> <input type="text" name="id"  placeholder="Enter User Id" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode > 47 && event.charCode < 58)" required autocomplete="off"><br></td></tr>
<tr><td>
Enter Password: </td><td><input type="text" name="password" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,15}"
						title="Must contain at least one number and one uppercase and lowercase letter, it must contains 8 to 15 characters" required autocomplete="off"><br>
</td></tr>
<tr>
<td><input type="submit" value="Update User"></td></tr>
</table>
</div>
</form> 
	<form action="delete" method="post">
		<div id="DELETE USER" class="tabcontent">
			<table>
				<tr>
					<td>Enter User Id:</td>
					<td><input type="text" name="id" onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode > 47 && event.charCode < 58)" placeholder="Enter User Id" required autocomplete="off"><br></td>
				</tr>
				<td><input type="submit" value="Delete User"></td>
			</table>
		</div>
	</form>
	<br><br>
	<div id="VIEW" class="tabcontent">
	<br><br><br>
			<table border="1" class="myTable" align="center">
			<tr>
           <th width="130">User ID</th>
           <th width="130">User Role</th>
           </tr>
            <c:forEach var ="users" items="${users}">
                <tr>
					<td>${users.id}</td>
					<td>${users.role}</td>
				</tr>
        </c:forEach>
      </table>
      <br>
      <br>   
     
		</div>
	<script>
		function openPage(pageName, elmnt, color) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablink");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].style.backgroundColor = "";
			}
			document.getElementById(pageName).style.display = "block";
			elmnt.style.backgroundColor = color;
		}

		// Get the element with id="defaultOpen" and click on it
		document.getElementById("defaultOpen").click();
	</script> 
</body>
</html>
