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

$(document)
		.ready(
				function() {
					setInterval(
							function() {
								$
										.ajax({
											type : 'GET',
											url : '/detail',
											success : function(res) {
												var data = JSON.parse(res);

												for (var i = 0; i < $('#server-list tbody tr').length; i++) {
													for (var j = 0; j < data.length; j++) {
														if ($('#server-list tbody tr td:nth-child(1)')[i].innerHTML === data[j].id) {
															$('#server-list tbody tr td:nth-child(5)')[i].innerHTML = data[j].status;
														}
													}
												}
												for (var i = 0; i < $('#server-list tbody tr').length; i++) {
													if ($('#server-list tbody tr td:nth-child(5)')[i].innerHTML === 'danger') {
														$('#server-list tbody tr td:nth-child(5)')[i].innerHTML = null;
														$('#server-list tbody tr td:nth-child(5)')[i].innerHTML = '<div style="border-radius: 50% 50%; -moz-border-radius: 50% 50%; -webkit-border-radius: 50% 50%; background: #FF0000; height: 20px; width: 20px; margin: auto;"></div>';
													} else if ($('#server-list tbody tr td:nth-child(5)')[i].innerHTML === 'warning') {
														$('#server-list tbody tr td:nth-child(5)')[i].innerHTML = null;
														$('#server-list tbody tr td:nth-child(5)')[i].innerHTML = '<div style="border-radius: 50% 50%; -moz-border-radius: 50% 50%; -webkit-border-radius: 50% 50%; background: #FFBB00; height: 20px; width: 20px; margin: auto;"></div>';
													} else {
														$('#server-list tbody tr td:nth-child(5)')[i].innerHTML = null;
														$('#server-list tbody tr td:nth-child(5)')[i].innerHTML = '<div style="border-radius: 50% 50%; -moz-border-radius: 50% 50%; -webkit-border-radius: 50% 50%; background: #1DDB16	; height: 20px; width: 20px; margin: auto;"></div>';
													}
												}

											},
											error : function(err) {
												console
														.log('cannot receive status model.');
											}
										});
							}, 1000)
				});