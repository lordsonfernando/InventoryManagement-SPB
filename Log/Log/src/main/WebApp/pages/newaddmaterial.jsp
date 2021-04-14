<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <title>Add Material</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet" type="text/css" />
    
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
     <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
   
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        * {
            box-sizing: border-box
        }


        /* Set height of body and the document to 100% */
        body,
        html {
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
            width: 20%;
        }

        .tablink:hover {
            background-color: #00ace6;
        }

        /* Style the tab content (and add height:100% for full page content) */
        .tabcontent {
            color: black;
            padding: 100px 20px;
            height: 100%;
        }

        #inwardreturnable {
            background-color: #ffffff;
        }

        /* #UPDATE USER {background-color: #ffffff;} */
        #inwardnonreturnable {
            background-color: #ffffff;
        }

        #outwardreturnable {
            background-color: #ffffff;
        }

        #outwardnonreturnable {
            background-color: #ffffff;
        }

        #LOGOUT {
            background-color: #ffffff;
        }

        #table1,
        #table2,
        #table3 {
            border-spacing: 200px 10px;
        }

        select {
            width: 150px;
            margin: 10px;
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
       
    </style>
    
     <script language="javascript">
        $(document).ready(function () {
            $("#txtdate").datepicker({
                dateFormat: 'dd/mm/yy',
                minDate: 0

            });
        });
        $(document).ready(function () {
            $("#txtdate1").datepicker({
                dateFormat: 'dd/mm/yy',
                minDate: 0
            });
        });
        $(document).ready(function () {
            $("#txtdate2").datepicker({

            });
        });
        $(document).ready(function () {
            $("#txtdate3").datepicker({
            	dateFormat:'dd/mm/yy', 

            });
        });
    </script>
   
</head>

<body>
    <div class="tablink1"><b>Material Log</b>
    <form action="login"> 
    <button  type = "submit" style="float: right;background-color:#1ac6ff "><i class="fa fa-power-off" id="icon" style="font-size:35px;color:white;"></i></button>
    </form>
    </div>
    <button class="tablink" onclick="openPage('inwardreturnable', this, '#00ace6')" id="defaultOpen">Inward
        Returnable</button>
    <button class="tablink" onclick="openPage('inwardnonreturnable', this, '#00ace6')">Inward Non Returnable</button>
    <button class="tablink" onclick="openPage('outwardreturnable', this, '#00ace6')">Outward Returnable</button>
    <button class="tablink" onclick="openPage('outwardnonreturnable', this, '#00ace6')">Outward Non Returnable</button>
   <form action="securityfind" method="post">
    <button type="submit" class="tablink" onclick="openPage('view', this, '#00ace6')">View</button>
    </form>

	
     <form action="inreturn" method="post">
        
        <div id="inwardreturnable" class="tabcontent">
            <br>
            <br>
            <div>
                <table id="table1">
                    <tr>
                        <th style align="left">Supplier Name</th>
                        <th style align="left">Id Type</th>
                        <th style align="left">Id No</th>

                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="inSupplierName" placeholder="Supplier Name" autocomplete="off"  required="" oninvalid="this.setCustomValidity('Please Enter valid Suppliername')"
                                onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"
                                maxlength="30">
                        </td>
                        <td>
                            <select name="inSupplierIdType">
                                <option value="" disabled="disabled" selected="selected">Type
                                    of id</option>
                                <option>Aadhar</option>
                                <option>Driving license</option>
                                <option> PAN Card</option>
                            </select>
                        </td>
                        <td>
                            <input type="text" name="inSupplierIdNumber" placeholder="Id No." maxlength="20" autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table2">
                    <tr>
                        <th style align="left"> In Supplier Address </th>
                        <th style align="left">In Gp/Dc No</th>
                        <th style align="left">Expected Out Date</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="inSupplierAddress" placeholder="From" autocomplete="off">
                        </td>
                        <td>
                            <input type="text" name="ingpdcNumber" placeholder="In Gp/Dc No." maxlength="10" autocomplete="off">
                        </td>
                        <td>
                            <input type="text" id="txtdate" name="inExpectedOutDate" autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table3">
                    <tr>
                        <th style align="left">Product Description</th>
                        <th style align="left">Quantity</th>
                        <th style align="left">Unit Of Measurement</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="productDescription" placeholder="Product Description" autocomplete="off">
                        </td>
                        <td>
                            <input type="number" name="quantity" placeholder="Quantity" autocomplete="off">
                        </td>
                        <td>
                            <select name="measurement">
                                <option value="" disabled="disabled" selected="selected">NO</option>
                                <option>Kg</option>
                                <option>Ltr</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <table>
                <div align="center">
                    <input type="submit" value="Add Entry">
                </div>
            </table>
        </div>
    </form>
 <form action="addinnonreturn" method="post">
        <div id="inwardnonreturnable" class="tabcontent">
                <br>
                <br>
            <div>
                
                <table id="table1">
                    <tr>
                        <th style align="left">Supplier Name</th>
                        <th style align="left">Id Type</th>
                        <th style align="left">Id No</th>

                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="inSupplierName" placeholder="Supplier Name" autocomplete="off"
                                onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"
                                maxlength="30">
                        </td>
                        <td>
                            <select name="inSupplierIdType">
                                <option value="" disabled="disabled" selected="selected">Type
                                    of id</option>
                                <option>Aadhar</option>
                                <option>Driving license</option>
                                <option> PAN Card</option>
                            </select>
                        </td>
                        <td>
                            <input type="text" name="inSupplierIdNumber" placeholder="Id No." maxlength="20" autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table2">
                    <tr>
                        <th style align="left"> In Supplier Address </th>
                        <th style align="left">In Gp/Dc No</th>
                        <th style align="left">Receiver Id</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="inSupplierAddress" placeholder="From" autocomplete="off">
                        </td>
                        <td>
                            <input type="text" name="ingpdcNumber" placeholder="In Gp/Dc No." maxlength="10" autocomplete="off">
                        </td>
                        <td>
                            <input type="text" name="receiverId" placeholder="Receiver Id" autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table3">
                    <tr>
                        <th style align="left">Product Description</th>
                        <th style align="left">Quantity</th>
                        <th style align="left">Unit Of Measurement</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="productDescription" placeholder="Product Description" autocomplete="off">
                        </td>
                        <td>
                            <input type="number" name="quantity" placeholder="Quantity" autocomplete="off">
                        </td>
                        <td>
                            <select name="measurement">
                                <option value="" disabled="disabled" selected="selected">UOM</option>
                                <option>No</option>
                                <option>Kg</option>
                                <option>Ltr</option>
                            </select>
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <table>
                <div align="center">
                    <input type="submit" value="Add Entry">
                </div>
            </table>
        </div>
    </form>
     <form action="addoutreturn" method="post">
        <div id="outwardreturnable" class="tabcontent">
          
            <div>
                <table id="table1">
                    <tr>
                        <th style align="left">Sl.No</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" name="sno" placeholder="Sl. No." required autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table1">
                    <tr>
                        <th style align="left">Supplier Name</th>
                        <th style align="left">Id Type</th>
                        <th style align="left">Id No</th>

                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="outSupplierName" placeholder="Supplier Name" autocomplete="off"
                                onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"
                                maxlength="30">
                        </td>
                        <td>
                            <select name="outSupplierIdType">
                                <option value="" disabled="disabled" selected="selected">Type
                                    of id</option>
                                <option>Aadhar</option>
                                <option>Driving license</option>
                                <option> PAN Card</option>
                            </select>
                        </td>
                        <td>
                            <input type="text" name="outSupplierIdNumber" placeholder="Id No." maxlength="20" autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table2">
                    <tr>
                        <th style align="left">Out Supplier Address</th>
                        <th style align="left">Out Gp/Dc No</th>
                        <th style align="left">Expected In Date</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="outSupplierAddress" placeholder="To" autocomplete="off">
                        </td>
                        <td>
                            <input type="text" name="outgpdcNumber" placeholder="Out Gp/Dc No." maxlength="10" autocomplete="off">
                        </td>
                        <td>
                            <input type="text" id="txtdate1" name="inExpectedOutDate" autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <table>
                <div align="center">
                    <input type="submit" value="Add Entry">
                </div>
            </table>
        </div>
    </form>
    <form action="addoutnonreturn" method="post">
        <div id="outwardnonreturnable" class="tabcontent">
           
            <div>
                <table id="table1">
                    <tr>
                        <th style align="left">Sl.No</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" name="sno" placeholder="Sl. No." autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table2">
                    <tr>
                        <th style align="left">Supplier Name</th>
                        <th style align="left">Id Type</th>
                        <th style align="left">Id No</th>

                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="outSupplierName" placeholder="Supplier Name" autocomplete="off"
                                onkeypress="return (event.charCode > 64 && event.charCode < 91) || (event.charCode > 96 && event.charCode < 123)"
                                maxlength="30">
                        </td>
                        <td>
                            <select name="outSupplierIdType">
                                <option value="" disabled="disabled" selected="selected">Type
                                    of id</option>
                                <option>Aadhar</option>
                                <option>Driving license</option>
                                <option> PAN Card</option>
                            </select>
                        </td>
                        <td>
                            <input type="text" name="outSupplierIdNumber" placeholder="Id No." maxlength="20" autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table3">
                    <tr>
                        <th style align="left">Out Supplier Address</th>
                        <th style align="left">Out Gp/Dc No</th>
                        <th style align="left">Sender Id</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="outSupplierAddress" placeholder="To" autocomplete="off">
                        </td>
                        <td>
                            <input type="text" name="outgpdcNumber" placeholder="Out Gp/Dc No." maxlength="10" autocomplete="off">
                        </td>
                        <td>
                            <input type="text" name="senderId" placeholder="Sender Id" autocomplete="off">
                        </td>
                    </tr>
                </table>
            </div>
             <table>
                <div align="center">
                    <input type="submit" value="Add Entry">
                </div>
            </table>
        </div>
    </form>   
    <br>
    <br>
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