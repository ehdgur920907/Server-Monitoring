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

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/memory.js?ver=1" />"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js" />"></script>
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js" />"></script>
<script src="<c:url value="/resources/smoothie-master/smoothie.js" />"></script>
<title>monitoring</title>
</head>

<body onload="realtimeClock()">
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/"><span
				class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
			</ul>
			<%-- <c:choose>
				<c:when test="${sessionedAdmin == null }">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/signin">signin</a></li>
					</ul>
				</c:when>
				<c:when test="${sessionedAdmin != null }">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="/signout">signout</a></li>
					</ul>
				</c:when>
			</c:choose> --%>
		</div>
	</div>

	</nav>
	<div class="container">
		<h1 class="big-chart-title" style="text-align: center;">memory broken</h1>
		<h5 id="time" style="text-align: center;"></h5>
		<div class="big-chart-div">
			<div class="big-chart-container">
				<canvas id="memoryChartLine" class="big-chart" width="200"
					height="100"></canvas>
			</div>
		</div>
	</div>
</body>
</html>
