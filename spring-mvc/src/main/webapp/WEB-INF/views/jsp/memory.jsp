<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="/smoothie-master/smoothie.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="<c:url value="/resources/css/monitoring.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/monitoring.js" />"></script>
<title>monitoring</title>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		var smoothie = new SmoothieChart();
		smoothie.streamTo(document.getElementById("mycanvas"));
		var line1 = new TimeSeries();
		
		setInterval(function() {
		line1.append(new Date().getTime(), ${ basicInformation.totalMemory }
		}), 1000});
		smoothie.addTimeSeries(line1, { strokeStyle:'rgb(255, 0, 255)', fillStyle:'rgba(255, 0, 255, 0.3)', lineWidth:3 });
	});
	</script>
<body>
	<canvas id="mycanvas" width="800" height="600"
		style="margin-left:300px;"></canvas>
	<h1 style="margin-left: 630px;">MEMORY</h1>
</body>
</html>