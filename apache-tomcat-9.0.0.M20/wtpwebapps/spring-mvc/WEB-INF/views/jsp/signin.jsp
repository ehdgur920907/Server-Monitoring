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
<title>signin</title>
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
	<div class="container">
		<div class="col-md-6 col-md-offset-3">
			<div class="jumbotron">
				<form action="/auth" method="post">
					<div class="form-group">
						<label for="id">id</label> <input type="id" class="form-control"
							name="id" id="id" placeholder="id">
					</div>
					<div class="form-group">
						<label for="pw">pw</label> <input type="pw" class="form-control"
							name="pw" id="pw" placeholder="pw">
					</div>
					<button type="submit" class="btn btn-primary" id="signin">signin</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>