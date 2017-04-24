<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<title>monitoring</title>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/"><span
					class="glyphicon glyphicon-home" aria-hidden="true"></span></a>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>
	<div class="container">
		<div class="inner" style="position: relative; display: inline-block; width: 50%; padding: 1em;">
			<div class="col-md-6 col-md-offset-3">
				<div class="jumbotron">
					<table class="table table-hover table-striped table-bordered table-condensed">
						<thead>
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">server id</th>
								<th style="text-align: center; vertical-align: middle;">host name</th>
								<th style="text-align: center; vertical-align: middle;">ip address</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="server" items="${ arrayListServerInformation }">
							<tr>
								<td style="text-align: center;"><a href="/monitoring/${ server.id }">server ${ server.id }</a></td>
								<td style="text-align: center;">${ server.hostName }</td>
								<td style="text-align: center;">${ server.ipAddress }</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
