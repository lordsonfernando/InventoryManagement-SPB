<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,html
{
font-family: Times New Roman;
}
.button {
 
 /* Green */
  background-color: white;
  border: 2px solid #1ac6ff;
  color: black;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
table
{
font-family: Times New Roman;
 border-spacing: 40px 150px;
}

.tablink1 {
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
.button1 {width: 250px;}
.button2 {width: 50%;}
.button3 {width: 100%;}
</style>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script type="text/javascript">
	window.history.forward();
	function noBack() {
		window.history.forward();
	}
</script>
</head>
<body >

<div class="tablink1"><b>Material Log</b>
<form action="login"> 
    <button  type = "submit" style="float: right;background-color:#1ac6ff "><i class="fa fa-power-off" id="icon" style="font-size:35px;color:white;"></i></button>
    </form>
    </div>
<table align="center">
<form action="user" method="post">
<td>
<button type="submit" class="button button1"><b>User Management</b></button><br>
</td>
</form>
<td>
</td>
<form form action="material" method="post">
<td>
<button type="submit" class="button button1"><b>Material Management</b></button><br>
</td>
</form>
</table>
</body>
</html>