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

<link href="<c:url value="/resources/css/monitoring.css" />" rel="stylesheet">
<script src="<c:url value="/resources/js/monitoring.js" />"></script>
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
			<a href="/" class="btn btn-default pull-left" role="button">list</a>
			<hr style="color: black;">

			<table class="table table-striped table-bordered">
				<tr>
					<th
						style="text-align: center; vertical-align: middle; font-size: 3rem;">disk</th>
					<th
						style="text-align: center; vertical-align: middle; font-size: 3rem;">memory</th>
					<th
						style="text-align: center; vertical-align: middle; font-size: 3rem;">cpu</th>
				</tr>
				<tr>
					<td>
						<table class="table table-striped table-bordered"
							style="width: 200px; margin: auto;">
							<tr>
								<th>total disk</th>
								<td id="total-disk">${ basicInformation.totalDisk }GB</td>
							</tr>
							<tr>
								<th>used disk</th>
								<td id="used-disk">${ basicInformation.usedDisk }GB</td>
							</tr>
							<tr>
								<th>free disk</th>
								<td id="free-disk">${ basicInformation.freeDisk }GB</td>
							</tr>
							<tr>
							</tr>
						</table>
					</td>
					<td>
						<table class="table table-striped table-bordered"
							style="width: 200px; margin: auto;">
							<tr>
								<th>total memory</th>
								<td id="total-memory">${ basicInformation.totalMemory }GB</td>
							</tr>
							<tr>
								<th>used memory</th>
								<td id="used-memory">${ basicInformation.usedMemory }GB</td>
							</tr>
							<tr>
								<th>free memory</th>
								<td id="free-memory">${ basicInformation.freeMemory }GB</td>
							</tr>
							<tr></tr>
						</table>
					</td>
					<td>
						<table class="table table-striped table-bordered"
							style="width: 200px; margin: auto;">
							<tr>
								<th>total cpu</th>
								<td id="total-cpu">${ basicInformation.totalCpu }</td>
							</tr>
							<tr>
								<th>user cpu</th>
								<td id="user-cpu">${ basicInformation.userCpu }</td>
							</tr>
							<tr>
								<th>system cpu</th>
								<td id="system-cpu">${ basicInformation.systemCpu }</td>
							</tr>
							<tr>
								<th>idle cpu</th>
								<td id="idle-cpu">${ basicInformation.idleCpu }</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<h3 id="time"></h3>
			<span id="ip-address">${ serverInformation.ipAddress }</span> / <span id="os-name">${ serverInformation.osName }</span>
		</div>
	</div>
</body>

</html>