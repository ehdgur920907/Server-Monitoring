function realtimeClock() {
    $('#time').text(getTimeStamp());
    setTimeout("realtimeClock()", 1000);
}

function getTimeStamp() {
    var d = new Date();

    var s = leadingZeros(d.getFullYear(), 4) + '-' +
        leadingZeros(d.getMonth() + 1, 2) + '-' +
        leadingZeros(d.getDate(), 2) + ' / ' +

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

// -------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------
// var barChartData = {
//     labels: [],
//     datasets: [{
//         label: 'Dataset 1',
//         backgroundColor: window.chartColors.red,
//         data: [
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor()
//         ]
//     }, {
//         label: 'Dataset 2',
//         backgroundColor: window.chartColors.blue,
//         data: [
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor()
//         ]
//     }, {
//         label: 'Dataset 3',
//         backgroundColor: window.chartColors.green,
//         data: [
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor(),
//             randomScalingFactor()
//         ]
//     }]
//
// };
// window.onload = function() {
//     var ctx = document.getElementById("canvas").getContext("2d");
//     window.myBar = new Chart(ctx, {
//         type: 'bar',
//         data: barChartData,
//         options: {
//             title:{
//                 display:true,
//                 text:"Chart.js Bar Chart - Stacked"
//             },
//             tooltips: {
//                 mode: 'index',
//                 intersect: false
//             },
//             responsive: true,
//             scales: {
//                 xAxes: [{
//                     stacked: true,
//                 }],
//                 yAxes: [{
//                     stacked: true
//                 }]
//             }
//         }
//     });
// };
//
// document.getElementById('randomizeData').addEventListener('click', function() {
//     barChartData.datasets.forEach(function(dataset, i) {
//         dataset.data = dataset.data.map(function() {
//             return randomScalingFactor();
//         });
//     });
//     window.myBar.update();
// });
// -------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------
// -------------------------------------------------------------------------------------

var ctx;
var cpuChart;
var config = {
    type: 'bar',
    data: {
        labels: [],
        datasets: [{
            label: "user cpu",
            backgroundColor: window.chartColors.red,
            borderColor: window.chartColors.red,
            data: [],
            fill: false,
        }, {
            label: "system cpu",
            fill: false,
            backgroundColor: window.chartColors.blue,
            borderColor: window.chartColors.blue,
            data: [],
        }]
    },
    options: {
        responsive: true,
        maintainAspectRatio: true,
        tooltips: {
            mode: 'index',
            intersect: false,
        },
        hover: {
            mode: 'nearest',
            intersect: true
        },
        scales: {
            xAxes: [{
                display: true,
                stacked: true,
            }],
            yAxes: [{
                ticks: {
                    min: 0,
                    max: 100
                },
                display: true,
                stacked: true,
            }]
        }

    }
};

function cpuUpdate(data) {
    if (config.data.datasets[0].data.length >= 5) {
        config.data.labels.shift();
        config.data.datasets.forEach(function(data) {
            data.data.shift();
        });
    }
    config.data.labels.push(getTimeStamp()); // 이곳에 시간을 넣어주시면 됩니다.
    config.data.datasets[0].data.push(data.userCpu);
    config.data.datasets[1].data.push(data.systemCpu);

    window.cpuChart.update();
}

$(document).ready(function() {
    console.log(document)
    ctx = document.getElementById("cpuChartLine").getContext("2d");
    console.log(document)

    cpuChart = new Chart(ctx, config);
    setInterval(function() {
        $.ajax({
            type: 'GET',
            url: '/monitoring/detail',
            data: {
                "id": id
            },
            success: function(res) {
                var data = JSON.parse(res);


                
                data.userCpu = data.userCpu.slice(0,-1);
                
                data.systemCpu = data.systemCpu.slice(0,-1);
                
                cpuUpdate(data);
            },
            error: function(err) {
                console.log('cannot receive status model.');
                cpuUpdate(getRandomData());
            }
        });
    }, 5000);
});



// var config = {
//     type: 'line',
//     data: {
//         labels: [],
//         datasets: [{
//             label: "totalCpu",
//             backgroundColor: window.chartColors.red,
//             borderColor: window.chartColors.red,
//             data: [],
//             fill: false,
//         }, {
//             label: "userCpu",
//             fill: false,
//             backgroundColor: window.chartColors.blue,
//             borderColor: window.chartColors.blue,
//             data: [],
//         }]
//     },
//     options: {
//         responsive: true,
//         maintainAspectRatio: true,
//         title: {
//             display: true,
//             text: 'CPU chart'
//         },
//         tooltips: {
//             mode: 'index',
//             intersect: false,
//         },
//         hover: {
//             mode: 'nearest',
//             intersect: true
//         },
//         scales: {
//             xAxes: [{
//                 display: true,
//                 scaleLabel: {
//                     display: true,
//                     labelString: 'Time'
//                 }
//             }],
//             yAxes: [{
//                 display: true,
//                 scaleLabel: {
//                     display: true,
//                     labelString: 'Value'
//                 }
//             }]
//         }
//     }
// };
