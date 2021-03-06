function realtimeClock() {
    $('#time').text(getTimeStamp());
    setTimeout("realtimeClock()", 1000);
}
realtimeClock();

function getTimeStamp() {
    var d = new Date();

    var s = leadingZeros(d.getFullYear(), 4) + '-' +
        leadingZeros(d.getMonth() + 1, 2) + '-' +
        leadingZeros(d.getDate(), 2) + ' ' +

        leadingZeros(d.getHours(), 2) + ':' +
        leadingZeros(d.getMinutes(), 2) + ':' +
        leadingZeros(d.getSeconds(), 2);

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

function getRandomData() {
    return {
        totalDisk: Math.round(Math.random() * 100),
        usedDisk: Math.round(Math.random() * 100),
        freeDisk: Math.round(Math.random() * 100),
        totalDisk: Math.round(Math.random() * 100),
        usedMemory: Math.round(Math.random() * 100),
        freeMemory: Math.round(Math.random() * 100),
        usedMemory: Math.round(Math.random() * 100),
        totalCpu: Math.round(Math.random() * 100),
        userCpu: Math.round(Math.random() * 100),
        systemCpu: Math.round(Math.random() * 100),
        idleCpu: Math.round(Math.random() * 100)
    }
}


var gauge1;
var config1 = liquidFillGaugeDefaultSettings();
config1.circleColor = "#FF7777";
config1.textColor = "#FF4444";
config1.waveTextColor = "#FFAAAA";
config1.waveColor = "#FFDDDD";
config1.circleThickness = 0.2;
config1.textVertPosition = 0.2;
config1.waveAnimateTime = 1000;

function diskUpdate(data) {
    gauge1.update(data.usedDisk);
}

$(document).ready(function() {
    gauge1 = loadLiquidFillGauge("fillgauge1", 55);

    setInterval(function() {
        $.ajax({
            type: 'GET',
            url: '/monitoring/detail',
            data: {
                "id": id
            },
            success: function(res) {
                var data = JSON.parse(res);

                diskUpdate(data);
            },
            error: function(err) {
                console.log('cannot receive status model.');
                diskUpdate(getRandomData());

            }
        });
    }, 3000);
});
