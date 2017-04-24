<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<title>monitoring</title>
</head>
<body>
	<div class="container">
		<c:forEach var="server" items="${ arrayListServerInformation }">
			<h1>server</h1>
			<h5>${ server.hostName }</h5>
			<h5>${ server.ipAddress }</h5>
		</c:forEach>
		<a href="/monitoring" class="btn btn-primary" role="button">detail</a>
	</div>
</body>
</html>
