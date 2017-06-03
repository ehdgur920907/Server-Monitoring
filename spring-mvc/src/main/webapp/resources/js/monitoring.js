function realtimeClock() {
	$('#time').text(getTimeStamp());
	setTimeout("realtimeClock()", 1000);
}

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

window.chartColors = {
    blue: "rgb(54, 162, 235)",
    green: "rgb(75, 192, 192)",
    grey: "rgb(201, 203, 207)",
    orange: "rgb(255, 159, 64)",
    purple: "rgb(153, 102, 255)",
    red: "rgb(255, 99, 132)",
    yellow: "rgb(255, 205, 86)"
};

var randomScalingFactor = function() {
    return Math.round(Math.random() * 100);
};

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

function doughnutChart() {
    this.ctx;
    this.config;
    this.update;
    this.chart;
    this.init;
};

doughnutChart.prototype.init = function(canvasName) {
    this.ctx = document.getElementById(canvasName).getContext("2d");
    this.chart = new Chart(this.ctx, this.config);
    console.log(canvasName + "init")
}

var cpuChart = new doughnutChart();
cpuChart.config = {
    type: 'doughnut',
    data: {
        datasets: [{
            data: [
                getRandomData().userCpu,
                getRandomData().systemCpu,
                getRandomData().idleCpu
            ],
            backgroundColor: [
                window.chartColors.red,
                window.chartColors.blue,
                window.chartColors.grey
            ],
            label: 'cpu'
        }],
        labels: [
            "user cpu",
            "system cpu",
            "idle cpu"
        ]
    },
    options: {
        legend: {
            labels: {
                boxWidth: 30
            }
        }
    }
};


cpuChart.update = function(data) {
    this.config.data.datasets[0].data[0] = data.userCpu;
    this.config.data.datasets[0].data[1] = data.systemCpu;
    this.config.data.datasets[0].data[2] = data.idleCpu;

    this.chart.update();
}

var memoryChart = new doughnutChart();
memoryChart.config = {
    type: 'doughnut',
    data: {
        datasets: [{
            data: [
                getRandomData().usedMemory,
                getRandomData().freeMemory
            ],
            backgroundColor: [
                window.chartColors.red,
                window.chartColors.grey
            ],
            label: 'memory'
        }],
        labels: [
            "used memory",
            "free memory"
        ],
    },
    options: {
        legend: {
            labels: {
                boxWidth: 30,
                padding: 16
            }
        },
        layout: {
            padding: {
                left: 0,
                right: 0,
                top: 14,
                bottom: 14
            }
        }
    }
};

memoryChart.update = function(data) {
    this.config.data.datasets[0].data[0] = data.usedMemory;
    this.config.data.datasets[0].data[1] = data.freeMemory;
    this.chart.update();
}

var diskChart = new doughnutChart();
diskChart.config = {
    type: 'doughnut',
    data: {
        datasets: [{
            data: [
                getRandomData().usedDisk,
                getRandomData().freeDisk
            ],
            backgroundColor: [
                window.chartColors.red,
                window.chartColors.grey
            ],
            label: 'disk'
        }],
        labels: [
            "used disk",
            "free disk"
        ]
    },
    options: {
        legend: {
            labels: {
                boxWidth: 30,
                padding: 16
            }
        },
        layout: {
            padding: {
                left: 0,
                right: 0,
                top: 14,
                bottom: 14
            }
        }
    }
};

diskChart.update = function(data) {
    this.config.data.datasets[0].data[0] = data.usedDisk;
    this.config.data.datasets[0].data[1] = data.freeDisk;

    this.chart.update();
}

$(document).ready(function() {
    diskChart.init("diskChartDoughnut");
    memoryChart.init("memoryChartDoughnut");
    cpuChart.init("cpuChartDoughnut");

    setInterval(function() {
        $.ajax({
            type: 'GET',
            url: '/monitoring/detail',
            data: {
                "id": id
            },
            success: function(res) {
                var data = JSON.parse(res);

                // $('#total-disk').text(data.totalDisk + 'GB');
                // $('#used-disk').text(data.usedDisk + 'GB');
                // $('#free-disk').text(data.freeDisk + 'GB');
                //
                // $('#total-memory').text(data.totalMemory + 'GB');
                // $('#used-memory').text(data.usedMemory + 'GB');
                // $('#free-memory').text(data.freeMemory + 'GB');
                //
                // $('#total-cpu').text(data.totalCpu);
                // $('#user-cpu').text(data.userCpu);
                // $('#system-cpu').text(data.systemCpu);
                // $('#idle-cpu').text(data.idleCpu);
                
                data.totalCpu = data.totalCpu.slice(0,-1);
                data.userCpu = data.userCpu.slice(0,-1);
                data.idleCpu = data.idleCpu.slice(0,-1);
                data.systemCpu = data.systemCpu.slice(0,-1);
                
                diskChart.update(data);
                cpuChart.update(data);
                memoryChart.update(data);

                // $('#os-name').text(data.osName);
                // $('#ip-address').text(data.ipAddress);
                // $('#host-name').text(data.hostName);
            },
            error: function(err) {
                console.log('cannot receive status model.');
                diskChart.update(getRandomData());
                cpuChart.update(getRandomData());
                memoryChart.update(getRandomData());
            }
        });
    }, 2000);




});
