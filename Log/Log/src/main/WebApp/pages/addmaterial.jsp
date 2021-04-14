<html>

<head>
    <title>Add Material</title>
    <link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet" type="text/css" />
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <script language="javascript">
        $(document).ready(function () {
            $("#txtdate").datepicker({
            	dateFormat:'dd/mm/yy',
            	minDate: 0
                
                
            });
        });
        $(document).ready(function () {
            $("#txtdate1").datepicker({
            	dateFormat:'dd/mm/yy',
            	minDate: 0
            });
        });
        
        $(document).ready(function () {
            $("#txtdate2").datepicker({
            	dateFormat:'dd/mm/yy'
            });
        });
        
        $(document).ready(function () {
            $("#txtdate3").datepicker({
            	dateFormat:'dd/mm/yy'	
            });
        });
    </script>
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
            width: 25%;
        }

        .tablink:hover {
            background-color: #00ace6;
        }

        /* Style the tab content (and add height:100% for full page content) */
        .tabcontent {
            color: #00ace6;
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

        #search {
            background-color: "black";

        }
    </style>
</head>

<body>
    <button class="tablink" onclick="openPage('inwardreturnable', this, '#00ace6')" id="defaultOpen">Inward
        Returnable</button>
    <button class="tablink" onclick="openPage('inwardnonreturnable', this, '#00ace6')">Inward Non Returnable</button>
    <button class="tablink" onclick="openPage('outwardreturnable', this, '#00ace6')">Outward Returnable</button>
    <button class="tablink" onclick="openPage('outwardnonreturnable', this, '#00ace6')">Outward Non Returnable</button>
    <form action="inreturn" method="post">
        <div id="inwardreturnable" class="tabcontent">
            <div>
                <table id="table1">
                    <tr>
                        <th style align="left">Supplier Name</th>
                        <th style align="left">Id Type</th>
                        <th style align="left">Id No.</th>

                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="inSupplierName" placeholder="Supplier Name">
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
                            <input type="text" name="inSupplierIdNumber" placeholder="Id No.">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table2">
                    <tr>
                        <th style align="left"> From </th>
                        <th style align="left">In Gp/Dc No.</th>
                        <th style align="left">Expected Out Date</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="inSupplierAddress" placeholder="From">
                        </td>
                        <td>
                            <input type="text" name="ingpdcNumber" placeholder="In Gp/Dc No.">
                        </td>
                        <td>
                            <input type="text" id="txtdate" name="inExpectedOutDate">
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
                        <th style align="left">Measurement</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="productDescription" placeholder="Product Description">
                        </td>
                        <td>
                            <input type="number" name="quantity" placeholder="Quantity">
                        </td>
                        <td>
                            <select name="measurement">
                                <option value="" disabled="disabled" selected="selected">UOM</option>
                                <option>Nos.</option>
                                <option>Kg</option>
                                <option> Ltr</option>
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
            <div>
                <table id="table1">
                    <tr>
                        <th style align="left">Supplier Name</th>
                        <th style align="left">Id Type</th>
                        <th style align="left">Id No.</th>

                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="inSupplierName" placeholder="Supplier Name">
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
                            <input type="text" name="inSupplierIdNumber" placeholder="Id No.">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table2">
                    <tr>
                        <th style align="left"> From </th>
                        <th style align="left">In Gp/Dc No.</th>
                        <th style align="left">Receiver Id</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="inSupplierAddress" placeholder="From">
                        </td>
                        <td>
                            <input type="text" name="ingpdcNumber" placeholder="In Gp/Dc No.">
                        </td>
                        <td>
                            <input type="text" name="receiverId" placeholder="Receiver Id">
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
                        <th style align="left">Measurement</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="productDescription" placeholder="Product Description">
                        </td>
                        <td>
                            <input type="number" name="quantity" placeholder="Quantity">
                        </td>
                        <td>
                            <select name="measurement">
                                <option value="" disabled="disabled" selected="selected">UOM</option>
                                <option>Nos.</option>
                                <option>Kg</option>
                                <option> Ltr</option>
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
            <br>
            <br>
                <div>
                    <table>
                        <td> <input type="text" id="txtdate2" placeholder="Search by date"><input type="submit" value="Search"></td>
                    </table>
                 </div>
            <br>
            <br>
            <div>
                <table id="table1">
                    <tr>
                        <th style align="left">Sl. No.</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" name="sno" placeholder="Sl. No.">
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
                        <th style align="left">Id No.</th>

                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="outSupplierName" placeholder="Supplier Name">
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
                            <input type="text" name="outSupplierIdNumber" placeholder="Id No.">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table2">
                    <tr>
                        <th style align="left"> To </th>
                        <th style align="left">Out Gp/Dc No.</th>
                        <th style align="left">Expected In Date</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="outSupplierAddress" placeholder="To">
                        </td>
                        <td>
                            <input type="text" name="outgpdcNumber" placeholder="Out Gp/Dc No.">
                        </td>
                        <td>
                            <input type="text" id="txtdate1" name="outExpectedInDate">
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
             <br>
            <br>
                <div>
                    <table>
                        <td> <input type="text" id="txtdate3" placeholder="Search by date"><input type="submit" value="Search"></td>
                    </table>
                 </div>
            <br>
            <br>
            <div>
                <table id="table1">
                    <tr>
                        <th style align="left">Sl. No.</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="number" name="sno." placeholder="Sl. No.">
                        </td>
                    </tr>
                </table>
            </div>
            <div>
                <table id="table2">
                    <tr>
                        <th style align="left">Supplier Name</th>
                        <th style align="left">Id Type</th>
                        <th style align="left">Id No.</th>

                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="outSupplierName" placeholder="Supplier Name">
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
                            <input type="text" name="outSupplierIdNumber" placeholder="Id No.">
                        </td>
                    </tr>
                </table>
            </div>
            <br>
            <br>
            <div>
                <table id="table3">
                    <tr>
                        <th style align="left"> To </th>
                        <th style align="left">Out Gp/Dc No.</th>
                        <th style align="left">Sender Id</th>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="outSupplierAddress" placeholder="To">
                        </td>
                        <td>
                            <input type="text" name="outgpdcNumber" placeholder="Out Gp/Dc No.">
                        </td>
                        <td>
                            <input type="text" name="senderId" placeholder="Sender Id">
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