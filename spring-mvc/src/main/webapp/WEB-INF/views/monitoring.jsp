<!DOCTYPE html>

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
<script language="javascript">
	setTimeout("history.go(0);", 1000);
</script>
<style>
h1 {
	text-align: center;
	color: #5D5D5D;
}

.jumbotron {
	margin: auto;
	width: 700px;
	text-align: center;
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
	<h1>${ serverInformation.hostName }</h1>
	<br />
	<div class="jumbotron">
		<table class="table table-striped table-bordered"
			style="width: 400px; margin: auto;">
			<tr>
				<th style="text-align: center; vertical-align: middle; font-size: 3rem;">disk</th>
				<th style="text-align: center; vertical-align: middle; font-size: 3rem;">memory</th>
				<th style="text-align: center; vertical-align: middle; font-size: 3rem;">cpu</th>
			</tr>
			<tr>
				<td>
					<table class="table table-striped table-bordered"
						style="width: 200px; margin: auto;">
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">total
								disk</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.totalDisk }GB</td>
						</tr>
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">used
								disk</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.usedDisk }GB</td>
						</tr>
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">free
								disk</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.freeDisk }GB</td>
						</tr>
						<tr>
						</tr>
					</table>
				</td>
				<td>
					<table class="table table-striped table-bordered"
						style="width: 200px; margin: auto;">
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">total
								memory</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.totalMemory }GB</td>
						</tr>
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">used
								memory</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.usedMemory }GB</td>
						</tr>
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">free
								memory</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.freeMemory }GB</td>
						</tr>
						<tr></tr>
					</table>
				</td>
				<td>
					<table class="table table-striped table-bordered"
						style="width: 200px; margin: auto;">
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">total
								cpu</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.totalCpu }</td>
						</tr>
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">user
								cpu</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.userCpu }</td>
						</tr>
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">system
								cpu</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.systemCpu }</td>
						</tr>
						<tr style="background-color: white;">
							<th style="text-align: center; vertical-align: middle;">idle
								cpu</th>
							<td style="text-align: center; vertical-align: middle;">${ basicInformation.idleCpu }</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<h3>${ basicInformation.registerDate }</h3>
		<hr />
		ip address: ${ serverInformation.ipAddress }
		<br />
		os: ${ serverInformation.osName }
	</div>
</body>

</html>
