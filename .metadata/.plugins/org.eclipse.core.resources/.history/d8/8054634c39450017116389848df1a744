<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.jqplot.js"></script>
<script type="text/javascript" src="/js/plugins/jqplot.pieRenderer.js"></script>
<link rel="stylesheet" type="text/css" href="/js/jquery.jqplot.css" />
<link href="<c:url value="/resources/css/monitoring.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/monitoring.js" />"></script>
</head>
<script>
var result;
function send(){

  var plot7 = $.jqplot('disk', [[["total", ${ basicInformation.totalDisk }],["free",100-${ basicInformation.totalDisk }]]], {
        seriesDefaults:{
            renderer:$.jqplot.PieRenderer,
            rendererOptions: {
                showDataLabels: true
            }
        },
        legend:{show:true}      
    });   
}

$(document).ready(function() {
   setTimeout( 
            function() { 
                send();
            }, 1000);
   

});



</script>
<body id="Context">
<div id="disk" style="width:800px; height:600px; margin-left:300px;"></div>
<h1 style="margin-left:650px;">DISK</h1>
</body>
</html>