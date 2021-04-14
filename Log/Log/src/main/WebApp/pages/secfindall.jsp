<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Material Records</title>
 <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script language="javascript">
        $(document).ready(function () {
            $("#txtdate").datepicker({
            	dateFormat:'dd/mm/yy',   
            });
        });ty
        </script>
        <style>
* {
	box-sizing: border-box
}

/* Set height of body and the document to 100% */
body, html {
	height: 100%;
	margin: 0;
	font-family: Arial;
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
 <body>
   <div class="tablink1"><b>Material Log</b></div>

    <br/><br/>
    <div> 
      <table border="1" class="myTable">
        <tr>
          <th>SNO</th>
          <th>In Date</th>
          <th>In Time</th>
              <th>In Supplier Address</th>
                       <th>In Supplier Id Number</th>
                       <th>In Supplier Id Type</th>
                       <th>In Supplier Name</th>
                        <th>Product Description</th>
                       <th>Quantity</th>
                        <th>UOM</th>
                       <th>In Expected Out Date</th>
                        <th>In Security Id</th>
                       <th>Ingpdc Number</th>
                       <th>Out Supplier Address</th>
                       <th>Out Supplier Id Number</th>
                       <th>Out Supplier Id Type</th>
                       <th>Out Supplier Name</th>
                        <th>Out Date</th>
                        <th>Out Time</th>
                       <th>Out Expected In Date</th>
                       <th>Out Security Id</th>
                       <th>OutGPDC Number</th>
                       <th>Receiver Id</th>
                       <th>Transaction Type</th>
        </tr>
        <c:forEach var ="materiallog" items="${materiallog}" >
        <tr>
					<td>${materiallog.sno}</td>
					<td>${materiallog.inDate}</td>
					<td>${materiallog.inTime}</td>
					<td>${materiallog.inSupplierAddress}</td>
					<td>${materiallog.inSupplierIdNumber}</td>
					<td>${materiallog.inSupplierIdType}</td>
					<td>${materiallog.inSupplierName}</td>
					<td>${materiallog.productDescription}</td>
					<td>${materiallog.quantity}</td>
					<td>${materiallog.measurement}</td>
					<td>${materiallog.inExpectedOutDate}</td>
					<td>${materiallog.inSecurityId}</td>
					<td>${materiallog.ingpdcNumber}</td>
					<td>${materiallog.outSupplierAddress}</td>
					<td>${materiallog.outSupplierIdNumber}</td>
					<td>${materiallog.outSupplierIdType}</td>
					<td>${materiallog.outSupplierName}</td>
					<td>${materiallog.outDate}</td>
					<td>${materiallog.outTime}</td>
					<td>${materiallog.outExpectedInDate}</td>
					<td>${materiallog.outSecurityId}</td>
					<td>${materiallog.outgpdcNumber}</td>
					<td>${materiallog.receiverId}</td>
					<td>${materiallog.transactionType}</td>
				</tr>
        </c:forEach>
      </table>
    </div>
  </body>
</html>

