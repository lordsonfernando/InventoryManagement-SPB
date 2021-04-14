<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Material Records</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
   
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
	width: 50%;
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
 <script language="javascript">
        $(document).ready(function () {
            $("#txtdate").datepicker({
            	dateFormat:'dd/mm/yy',   
            });
        });
        
        $(document).ready(function () {
            $("#txtdate1").datepicker({
            	dateFormat:'dd/mm/yy',   
            });
        });
        </script>
</head>
 <body>
   <div class="tablink1"><b>Material Log</b>  </div>
   <div class="tablink1">
   <form action="login" method="post">
   <button  style="float: right;background-color:#1ac6ff "><i class="fa fa-power-off" id="icon" style="font-size:35px;color:white;"></i></button>
</form>
   <form action="security" method="post">

    <button  type = "submit" style="float: left;background-color:#1ac6ff "><i class="fa fa-home" id="icon" style="font-size:35px;color:white;"></i></button> 
 </form>
   </div>
    <table>
    <th>
    <form action="dateSearch" method="post">
    From : <input type="text" id="txtdate" name="fromDate" autocomplete="off"  >
    To : <input type="text" id="txtdate1" name="toDate" autocomplete="off"  ><input type="submit" value="search" >
    </form>
    </th>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <th>
    <form style align="right" action="typeSearch" method="post">
    Choose Type : 
    <select name ="type">
      <option value="" disabled="disabled" selected="selected">Choose Type</option>
    <option>InwardReturnable</option>
    <option>InwardNonReturnable</option>
    <option>OutwardReturnable</option>
    <option>OutwardNonReturnable</option>
    <option>All</option>
    </select>
    <input type="submit" value="Search Type">
    </form>
    </th>
    </table>
    <br/><br/>
    <div> 
      <table border="1" class="myTable">
        <tr>
				<th>SNO</th>
				<th width="130">In Date</th>
				<th width="130">In Time</th>
				<th>In Supplier Address</th>
				<th>Product Description</th>
				<th>Quantity</th>
				<th>UOM</th>
				<th width="130">In Expected Out Date</th>
				<th>Ingpdc Number</th>
				<th>Out Supplier Address</th>
				<th width="130">Out Date</th>
				<th width="130">Out Time</th>
				<th width="130">Out Expected In Date</th>
				<th>OutGPDC Number</th>
				<th>Transaction Type</th>
			</tr>
        <c:forEach var ="materiallog" items="${materiallog}" >
        <tr>
					<td>${materiallog.sno}</td>
					<td>${materiallog.inDate}</td>
					<td>${materiallog.inTime}</td>
					<td>${materiallog.inSupplierAddress}</td>
					<td>${materiallog.productDescription}</td>
					<td>${materiallog.quantity}</td>
					<td>${materiallog.measurement}</td>
					<td>${materiallog.inExpectedOutDate}</td>
					<td>${materiallog.ingpdcNumber}</td>
					<td>${materiallog.outSupplierAddress}</td>
					<td>${materiallog.outDate}</td>
					<td>${materiallog.outTime}</td>
					<td>${materiallog.outExpectedInDate}</td>
					<td>${materiallog.outgpdcNumber}</td>
					<td>${materiallog.transactionType}</td>
				</tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>

