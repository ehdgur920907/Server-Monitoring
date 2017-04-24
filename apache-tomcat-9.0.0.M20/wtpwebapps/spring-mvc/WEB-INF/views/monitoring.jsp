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
		<p>total memory: ${ memory.totalMemory }</p>
		<p>used memory: ${ memory.usedMemory }</p>
		<p>free memory: ${ memory.freeMemory }</p>
	<hr />
	<h1>disk</h1>
		<p>total disk: ${ disk.totalDisk }</p>
		<p>used disk: ${ disk.usedDisk }</p>
		<p>free disk: ${ disk.freeDisk }</p>
	<hr />
	<h1>host name and ip address</h1>
		<p>host name: ${ hostNameAndIpAddress.hostName }</p>
		<p>ip address: ${ hostNameAndIpAddress.ipAddress }</p>
</div>
</body>
</html>