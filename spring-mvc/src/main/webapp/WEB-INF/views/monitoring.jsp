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
	<h1>memory</h1>
		<p>total memory: ${ basicInformation.totalMemory }</p>
		<p>used memory: ${ basicInformation.usedMemory }</p>
		<p>free memory: ${ basicInformation.freeMemory }</p>
	<hr />
	<h1>disk</h1>
		<p>total disk: ${ basicInformation.totalDisk }</p>
		<p>used disk: ${ basicInformation.usedDisk }</p>
		<p>free disk: ${ basicInformation.freeDisk }</p>
	<hr />
	<h1>host name and ip address</h1>
		<p>host name: ${ serverInformation.hostName }</p>
		<p>ip address: ${ serverInformation.ipAddress }</p>
</div>
</body>
</html>
