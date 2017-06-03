<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<style>
.liquidFillGaugeText {
	font-family: Helvetica;
	font-weight: bold;
}
</style>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/disk.js" />"></script>
<script
	src="<c:url value="/resources/js/liquidFillGauge.js" language="JavaScript" />"></script>
<script
	src="<c:url value="http://d3js.org/d3.v3.min.js" language="JavaScript" />"></script>
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js" />"></script>
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js" />"></script>
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js" />"></script>
</head>

<body>
	<div class="big-chart-div">
		<h1 class="big-chart-title">DISK</h1>
		<div class="big-chart-container">
			<h1 style="text-align: center">used disk</h1>
			<svg id="fillgauge1" width="500px" height="500"
				onclick="gauge1.update(NewValue());"></svg>
		</div>
		<h3 id="time" style="text-align: center"></h3>
	</div>
</body>
<script src="./resources/js/disk.js"></script>


</html>