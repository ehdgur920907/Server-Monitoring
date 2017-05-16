function realtimeClock() {
	$('#time').text(getTimeStamp());
	setTimeout("realtimeClock()", 1000);
}

function getTimeStamp() {
	var d = new Date();

	var s = leadingZeros(d.getFullYear(), 4) + '-'
			+ leadingZeros(d.getMonth() + 1, 2) + '-'
			+ leadingZeros(d.getDate(), 2) + ' ' +

			leadingZeros(d.getHours(), 2) + ':'
			+ leadingZeros(d.getMinutes(), 2) + ':'
			+ leadingZeros(d.getSeconds(), 2);

	return s;
}

function leadingZeros(n, digits) {
	var zero = '';
	n = n.toString();

	if (n.length < digits) {
		for (i = 0; i < digits - n.length; i++) {
			zero += '0';
		}
	}
	return zero + n;
}

var url = location.href;
var id = url.substring(url.lastIndexOf('/') + 1);

$(document).ready(function() {
	setInterval(function() {
		$.ajax({
			type : 'GET',
			url : '/monitoring/detail',
			data : {
				"id" : id
			},
			success : function(res) {
				var data = JSON.parse(res);
				console.log(data);
				$('#total-disk').text(data.totalDisk + 'GB');
				$('#used-disk').text(data.usedDisk + 'GB');
				$('#free-disk').text(data.freeDisk + 'GB');

				$('#total-memory').text(data.totalMemory + 'GB');
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
			error : function(err) {
				console.log('cannot receive status model.');
			}
		});
	}, 1000);
});