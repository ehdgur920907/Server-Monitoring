<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"
	integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"
	crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"
	integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
	crossorigin="anonymous"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>index</title>

<style>
h1 {
	text-align: center;
	color: #5D5D5D;
}

.jumbotron {
	width: 800px;
	margin: auto;
	text-align: center;
}

.status-normal {
	border-radius: 50% 50%;
	-moz-border-radius: 50% 50%;
	-webkit-border-radius: 50% 50%;
	background: #1DDB16;
	height: 20px;
	width: 20px;
	margin: auto;
}

.status-danger {
	border-radius: 50% 50%;
	-moz-border-radius: 50% 50%;
	-webkit-border-radius: 50% 50%;
	background: #FF0000;
	height: 20px;
	width: 20px;
	margin: auto;
}

.status-warning {
	border-radius: 50% 50%;
	-moz-border-radius: 50% 50%;
	-webkit-border-radius: 50% 50%;
	background: #FFBB00;
	height: 20px;
	width: 20px;
	margin: auto;
}
</style>
</head>

<body>
	<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="/"><span
				class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
		</div>
	</div>
	</nav>
	<h1>server list</h1>
	<br />
	<div class="jumbotron">
		<h4></h4>
		<table class="table table-hover table-striped table-bordered"
			style="width: 600px; margin: auto;">
			<thead>
				<tr style="background-color: white;">
					<th
						style="text-align: center; vertical-align: middle; font-size: 2rem;">server
						id</th>
					<th
						style="text-align: center; vertical-align: middle; font-size: 2rem;">host
						name</th>
					<th
						style="text-align: center; vertical-align: middle; font-size: 2rem;">ip
						address</th>
					<th
						style="text-align: center; vertical-align: middle; font-size: 2rem;">os</th>
					<th
						style="text-align: center; vertical-align: middle; font-size: 2rem;">status</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="arrayListServerInformation"
					items="${ arrayListServerInformation }" varStatus="status">
					<tr
						onclick="location.href='/monitoring/${ arrayListServerInformation[status.index].id }'"
						style="cursor: pointer;">
						<td style="text-align: center;">${ arrayListServerInformation[status.index].id }</td>
						<td style="text-align: center;">${ arrayListServerInformation[status.index].hostName }</td>
						<td style="text-align: center;">${ arrayListServerInformation[status.index].ipAddress }</td>
						<td style="text-align: center;">${ arrayListServerInformation[status.index].osName }</td>
						<td><div class="status-normal"></div></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<script>
		$(document).ready(
				function() {
					setTimeout(function() {
						$.ajax({
							type : "GET",
							url : "localhost:8181/status",
							success : function(res) {
								var data = JSON.parse(res);
								if (data.res === "danger") {
									$('.status-normal').attr('class',
											'status-danger');
									$('.status-warning').attr('class',
											'status-danger');
									$('h4').innerHtml = res.time;
								} else if (data.res === "warning") {
									$('.status-normal').attr('class',
											'status-warning');
									$('.status-danger').attr('class',
											'status-warning');
									$('h4').innerHtml = res.time;
								} else if (data.res === "normal") {
									$('.status-warning').attr('class',
											'status-normal');
									$('.status-danger').attr('class',
											'status-normal');
									$('h4').innerHtml = res.time;
								}
							},
							error : function(err) {
								console.log('cannot receive status model.');
							}
						})
					}, 1000)
				});
	</script>
</body>

</html>
