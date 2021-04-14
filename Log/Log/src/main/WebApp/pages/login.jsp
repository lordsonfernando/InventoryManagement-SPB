<!DOCTYPE html>
<html>
<head>
<title>login</title>
<style>

body,html
{
font-family: Times New Roman;
}
.center {
	margin: auto;
	width: 20%;
	height: 50%;
	border: 3px solid #1ac6ff;
	padding: 10px;
}
button[type=submit]{
  width: 40%;
  padding: 6px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 8px;
  box-sizing: border-box;
  background:  #52BBFF;
  color: #fff;
}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
	function validateForm(){
		var x=document.forms["loginForm"]["id"].value;
		var y=document.forms["loginForm"]["password"].value;
		if(x=="" && y=="")
			{
			alert("Enter User ID and Password");
			return false;
			}
		if(x=="")
			{
			alert("Enter User ID");
			return false;
			}
		if(y=="")
			{
			alert("Enter Password");
			return false;
			}
	}
</script>
</head>
<body > 
	<form name="loginForm" action="home" method="post"  onsubmit="return validateForm()">
		<br>
		<br>
		<h3 class="center" style="text-align: center;">Material Log</h3>
		<div class="center">
			<div class="container">
				<label for="uname"><b>User ID &nbsp;&nbsp;</b></label> <input type="text" 
					  onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123) || (event.charCode > 47 && event.charCode < 58) " placeholder="Enter Userid" name="id" id="userid"> <br>
				<br> <label for="psw"><b>Password</b></label> <input
					type="password" placeholder="Enter Password" name="password"> <br> <br>
				<button type="submit">Login</button>
				<br> <br>
			</div>
		</div>
	</form>
</body>
</html>
