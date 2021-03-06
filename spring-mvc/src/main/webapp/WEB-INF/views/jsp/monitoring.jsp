<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <script src="liquidFillGauge.js" language="JavaScript"></script> -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.6.0/Chart.js" />"></script>
<script
	src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.18.1/moment.js" />"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.liquidFillGaugeText {
	font-family: Helvetica;
	font-weight: bold;
}
</style>

<link href="<c:url value="/resources/css/monitoring.css" />"
	rel="stylesheet">
<script src="<c:url value="/resources/js/monitoring.js?ver=1" />"></script>
<title>monitoring</title>
</head>
<meta charset="utf-8">
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
			<c:choose>
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
			</c:choose>
		</div>
	</div>

	</nav>
	<h2>
		<div id="host-name">${ serverInformation.hostName }</div>
	</h2>
	<hr />
	<div class="jumbotron">
		<div class="container">
			<div>
				<a href="/" class="btn btn-default pull-left" role="button">list</a>
				<br />
				<br />
				<div id="grf"></div>
				<table class="table table-striped table-bordered">
					<tr>
						<th
							style="text-align: center; vertical-align: middle; font-size: 3rem; cursor: pointer;"
							onclick="location.href='/monitoring/disk/${ serverInformation.id }'">disk</th>
						<th
							style="text-align: center; vertical-align: middle; font-size: 3rem; cursor: pointer;"
							onclick="location.href='/monitoring/memory/${ serverInformation.id }'">memory</th>
						<th
							style="text-align: center; vertical-align: middle; font-size: 3rem; cursor: pointer;"
							onclick="location.href='/monitoring/cpu/bar/${ serverInformation.id }'">cpu</th>
					</tr>
					<tr>
						<td><canvas id="diskChartDoughnut" width="100" height="100"></canvas>
						</td>
						<td><canvas id="memoryChartDoughnut" width="100" height="100"></canvas>
						</td>
						<td style="cursor: pointer;"onclick="location.href='/monitoring/cpu/wave/${ serverInformation.id }'"><canvas id="cpuChartDoughnut" width="100" height="100"></canvas>
						</td>
					</tr>
				</table>
				<h3 id="time"></h3>
				<span id="ip-address">${ serverInformation.ipAddress }</span> <span
					id="os-name">${ serverInformation.osName }</span>
			</div>
		</div>
	</div>
</body>
</html>
