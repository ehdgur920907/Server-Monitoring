<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

	<!-- Optional theme -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

	<!-- Latest compiled and minified JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<title>monitoring</title>

	<style>
		h2 {
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
	<h2><div id="host-name">SSL server</div></h2>
	<hr />
	<div class="jumbotron">
		<div class="container">
			<a href="/" class="btn btn-default pull-left" role="button">list</a>
			<hr style="color: black;">

			<table id="table" class="table table-striped table-bordered">
				<tr>
					<th style="text-align: center; vertical-align: middle; font-size: 3rem;">disk</th>
					<th style="text-align: center; vertical-align: middle; font-size: 3rem;">memory</th>
					<th style="text-align: center; vertical-align: middle; font-size: 3rem;">cpu</th>
				</tr>
				<tr>
					<td>
						<table class="table table-striped table-bordered" style="width: 200px; margin: auto;">
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">total disk
								</th>
								<td id="total-disk" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">used disk
								</th>
								<td id="used-disk" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">free disk
								</th>
								<td id="free-disk" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr>
							</tr>
						</table>
					</td>
					<td>
						<table class="table table-striped table-bordered" style="width: 200px; margin: auto;">
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">total memory
								</th>
								<td id="total-memory" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">used memory
								</th>
								<td id="used-memory" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">free memory
								</th>
								<td id="free-memory" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr></tr>
						</table>
					</td>
					<td>
						<table class="table table-striped table-bordered" style="width: 200px; margin: auto;">
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">total cpu
								</th>
								<td id="total-cpu" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">user cpu
								</th>
								<td id="user-cpu" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">system cpu
								</th>
								<td id="system-cpu" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
							<tr style="background-color: white;">
								<th style="text-align: center; vertical-align: middle;">idle cpu
								</th>
								<td id="idle-cpu" style="text-align: center; vertical-align: middle;">000.00GB</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<h3 id="register-date">0000-00-00 00:00:00</h3>
			<span id="ip-address">000.000.000.000</span> / <span id="os-name">Mac OS x</span>
		</div>
	</div>
	<script>
		var id = document.location.pathname;

		$(document).ready(function() {
			setInterval(function() {
				$.ajax({
					type: 'GET',
					url: '/monitoring/detail',
					dataType: 'String',
					data: JSON.stringify(id),
					success: function(res) {
						var data = JSON.parse(res);

						$('#register-date').text(data.registerDate);

						$('#total-disk').text(data.totalDisk + 'GB');
						$('#used-disk').text(data.usedDisk + 'GB');
						$('#free-disk').text(data.freeDisk + 'GB');

						$('#total-memory').text(data.totalMemroy + 'GB');
						$('#used-memory').text(data.usedMemory + 'GB');
						$('#free-memory').text(data.freeMemory + 'GB');

						$('#total-cpu').text(data.totalCpu);
						$('#user-cpu').text(data.userCpu);
						$('#system-cpu').text(data.systemCpu);
						$('#idle-cpu').text(data.idleCpu);

						$('#os-name').text(data.osName);
						$('#ip-address').text(data.ipAddress);
						$('#host-name').text(data.hostName);
					},
					error: function(err) {
						console.log('cannot receive status model.');
					}
				});
			}, 1000)
		})
	</script>
</body>

</html>
