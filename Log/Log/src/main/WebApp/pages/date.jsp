<html>
<head>
<title>Date </title>
<link href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css" rel="Stylesheet"
    type="text/css" />
<script type="text/javascript" src="http://code.jquery.com/jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<script language="javascript">
    $(document).ready(function () {
        $("#txtdate1").datepicker({
            minDate: 0
        });
    });
    
 </script>
</head>
<body>
<form action="searchdate" method="post">
<input type="text" id="txtdate1"  name="outExpectedInDate" >
<input type="submit" value= "search">
</form>
</body>
</html>