<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.tablink1{
    background-color: #1ac6ff;
    color: white;
    float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 25px;
	width: 100%;
}
</style>
</head>
<body>
 <div class="tablink1"><b>Material Log</b></div>
<form action="addr" method="post">
		<div id="ADD USER" class="tabcontent">
			<table>
				<tr>
					<td>Enter User Id:</td>
					<td><input type="text" name="id" placeholder="Enter User Id"
						required autocomplete="off"><br></td>
				</tr>
				<tr>
					<td>Enter Password:</td>
					<td><input type="text" name="password"
					     autocomplete="off"
						placeholder="Enter Password"
						pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
						title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters"
						required><br></td>
				</tr>
				<tr>
                    <td>Enter Role:</td>
                    <td>
					    <select name="role">
                            <option value="" disabled="disabled" selected="selected">Role</option>
                            <option>Admin</option>
                            <option>Security</option>
                        </select>
                     </td>
				</tr>
				<tr>
				<td><input type="submit" value="Add User"></td>
				</tr>
			</table>
		</div>
	</form>
</body>
</html>