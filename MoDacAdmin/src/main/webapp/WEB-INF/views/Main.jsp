<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">    

<title>관리자페이지</title>
<!-- plugins:css -->
<link rel="stylesheet" href="<c:url value='vendors/iconfonts/mdi/css/materialdesignicons.min.css'/>">
<link rel="stylesheet" href="<c:url value='vendors/css/vendor.bundle.base.css'/>">
<link rel="stylesheet" href="<c:url value='vendors/css/vendor.bundle.addons.css'/>">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="<c:url value='css/style.css'/>">
<!-- endinject -->
<link rel="shortcut icon" href="<c:url value='images/favicon.png'/>" />

<!-- plugins:js -->
<script src="<c:url value='vendors/js/vendor.bundle.base.js'/>"></script>
<script src="<c:url value='vendors/js/vendor.bundle.addons.js'/>"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="<c:url value='js/off-canvas.js'/>"></script>
<script src="<c:url value='js/misc.js'/>"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="<c:url value='js/dashboard.js'/>"></script>
<!-- End custom js for this page-->
<!-- 차트를 위한 스트립트 -->
   <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
   <script type="text/javascript">
   $(function() {
      console.log(${d23});
      console.log(${mon});
      /* ChartJS
       * -------
       * Data and config for chartjs
       */
      'use strict';
      var data = {
        labels: ["월요일", "화요일", "수요일", "목요일", "금요일", "토요일","일요일"],
        datasets: [{
          label: '# of Votes',
          data: [${mon}, ${tue}, ${wed}, ${thu}, ${fri}, ${dat}, ${sun}],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)',
            'rgba(75, 192, 192, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)',
            'rgba(75, 192, 192, 1)',
          ],
          borderWidth: 1
        }]
      };
      var lines = {
              labels: ["00시","01시", "02시", "03시", "04시", "05시", "06시","07시","08시","09시","10시","11시","12시","13시","14시","15시","16시","17시","18시","19시","20시","21시","22시","23시"
                 ],
              datasets: [{
                label: '# of Votes',
                data: [${d00},${d01},${d02},${d03},${d04},${d05},${d06},${d07},${d08},${d09},${d10},${d11},${d12},${d13},${d14},${d15},${d16}
                ,${d17},${d18},${d19},${d20},${d21},${d22},${d23}],
                backgroundColor: [
                  'rgba(255, 99, 132, 0.2)',
                  'rgba(54, 162, 235, 0.2)',
                  'rgba(255, 206, 86, 0.2)',
                  'rgba(75, 192, 192, 0.2)',
                  'rgba(153, 102, 255, 0.2)',
                  'rgba(255, 159, 64, 0.2)',
                  'rgba(75, 192, 192, 0.2)'
                ],
                borderColor: [
                  'rgba(255,99,132,1)',
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(153, 102, 255, 1)',
                  'rgba(255, 159, 64, 1)',
                  'rgba(75, 192, 192, 1)',
                ],
                borderWidth: 1
              }]
            };
      
      var multiLineData = {
        labels: ["Red", "Blue", "Yellow", "Green", "Purple", "Orange"],
        datasets: [{
            label: 'Dataset 1',
            data: [12, 19, 3, 5, 2, 3],
            borderColor: [
              '#587ce4'
            ],
            borderWidth: 2,
            fill: false
          },
          {
            label: 'Dataset 2',
            data: [5, 23, 7, 12, 42, 23],
            borderColor: [
              '#ede190'
            ],
            borderWidth: 2,
            fill: false
          },
          {
            label: 'Dataset 3',
            data: [15, 10, 21, 32, 12, 33],
            borderColor: [
              '#f44252'
            ],
            borderWidth: 2,
            fill: false
          }
        ]
      };
      var options = {
        scales: {
          yAxes: [{
            ticks: {
              beginAtZero: true
            }
          }]
        },
        legend: {
          display: false
        },
        elements: {
          point: {
            radius: 0
          }
        }

      };
      var doughnutPieData1 = {
        datasets: [{
          data: [${ten},${two},${three},${fors},${five}],
          backgroundColor: [
            'rgba(255, 99, 132, 0.5)',
            'rgba(54, 162, 235, 0.5)',
            'rgba(255, 206, 86, 0.5)',
            'rgba(75, 192, 192, 0.5)',
            'rgba(153, 102, 255, 0.5)',
            'rgba(255, 159, 64, 0.5)',
            'rgba(255, 159, 64, 0.5)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)',
            'rgba(255, 159, 64, 1)'
          ],
        }],

        // These labels appear in the legend and in the tooltips when hovering different arcs
        labels: [
          '20살 미만',
          '20살 이상 30살 미만',
          '30살 이상 40살 미만',
          '40살 이상 50살 미만',
          '50살 이상',
        ]
      };
      var doughnutPieData = {
              datasets: [{
                data: [${reservation.RESERVATION},${reservation.RECEPTION}],
                backgroundColor: [
                  'rgba(255, 99, 132, 0.5)',
                  'rgba(54, 162, 235, 0.5)',
                  'rgba(255, 206, 86, 0.5)',
                  'rgba(75, 192, 192, 0.5)',
                  'rgba(153, 102, 255, 0.5)',
                  'rgba(255, 159, 64, 0.5)',
                  'rgba(255, 159, 64, 0.5)'
                ],
                borderColor: [
                  'rgba(255,99,132,1)',
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(153, 102, 255, 1)',
                  'rgba(255, 159, 64, 1)',
                  'rgba(255, 159, 64, 1)'
                ],
              }],

              // These labels appear in the legend and in the tooltips when hovering different arcs
              labels: [
                '예약',
                '접수'
              ]
            };      
      var doughnutPieOptions = {
        responsive: true,
        animation: {
          animateScale: true,
          animateRotate: true
        }
      };
      var browserTrafficData = {
        datasets: [{
          data: [20, 20, 10, 30, 20],
          backgroundColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(75, 192, 117, 1)',
            'rgba(255, 159, 64, 1)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(75, 192, 117, 1)',
            'rgba(255, 159, 64, 1)'
          ],
        }],

        // These labels appear in the legend and in the tooltips when hovering different arcs
        labels: [
          'Firefox',
          'Safari',
          'Explorer',
          'Chrome',
          'Opera Mini'
        ]
      };
      var areaData = {
        labels: ["2013", "2014", "2015", "2016", "2017"],
        datasets: [{
          label: '# of Votes',
          data: [12, 19, 3, 5, 2, 3],
          backgroundColor: [
            'rgba(255, 99, 132, 0.2)',
            'rgba(54, 162, 235, 0.2)',
            'rgba(255, 206, 86, 0.2)',
            'rgba(75, 192, 192, 0.2)',
            'rgba(153, 102, 255, 0.2)',
            'rgba(255, 159, 64, 0.2)'
          ],
          borderColor: [
            'rgba(255,99,132,1)',
            'rgba(54, 162, 235, 1)',
            'rgba(255, 206, 86, 1)',
            'rgba(75, 192, 192, 1)',
            'rgba(153, 102, 255, 1)',
            'rgba(255, 159, 64, 1)'
          ],
          borderWidth: 1,
          fill: 'origin', // 0: fill to 'origin'
          fill: '+2', // 1: fill to dataset 3
          fill: 1, // 2: fill to dataset 1
          fill: false, // 3: no fill
          fill: '-2' // 4: fill to dataset 2
        }]
      };

      var areaOptions = {
        plugins: {
          filler: {
            propagate: true
          }
        }
      }

      var multiAreaData = {
        labels: ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"],
        datasets: [{
            label: 'Facebook',
            data: [8, 11, 13, 15, 12, 13, 16, 15, 13, 19, 11, 14],
            borderColor: ['rgba(255, 99, 132, 0.5)'],
            backgroundColor: ['rgba(255, 99, 132, 0.5)'],
            borderWidth: 1,
            fill: true
          },
          {
            label: 'Twitter',
            data: [7, 17, 12, 16, 14, 18, 16, 12, 15, 11, 13, 9],
            borderColor: ['rgba(54, 162, 235, 0.5)'],
            backgroundColor: ['rgba(54, 162, 235, 0.5)'],
            borderWidth: 1,
            fill: true
          },
          {
            label: 'Linkedin',
            data: [6, 14, 16, 20, 12, 18, 15, 12, 17, 19, 15, 11],
            borderColor: ['rgba(255, 206, 86, 0.5)'],
            backgroundColor: ['rgba(255, 206, 86, 0.5)'],
            borderWidth: 1,
            fill: true
          }
        ]
      };

      var multiAreaOptions = {
        plugins: {
          filler: {
            propagate: true
          }
        },
        elements: {
          point: {
            radius: 0
          }
        },
        scales: {
          xAxes: [{
            gridLines: {
              display: false
            }
          }],
          yAxes: [{
            gridLines: {
              display: false
            }
          }]
        }
      }

      // Get context with jQuery - using jQuery's .get() method.
      if ($("#barChart").length) {
        var barChartCanvas = $("#barChart").get(0).getContext("2d");
        // This will get the first returned node in the jQuery collection.
        var barChart = new Chart(barChartCanvas, {
          type: 'bar',
          data: data,
          options: options
        });
      }

      if ($("#lineChart").length) {
        var lineChartCanvas = $("#lineChart").get(0).getContext("2d");
        var lineChart = new Chart(lineChartCanvas, {
          type: 'line',
          data: lines,
          options: options
        });
      }

      if ($("#linechart-multi").length) {
        var multiLineCanvas = $("#linechart-multi").get(0).getContext("2d");
        var lineChart = new Chart(multiLineCanvas, {
          type: 'line',
          data: multiLineData,
          options: options
        });
      }

      if ($("#areachart-multi").length) {
        var multiAreaCanvas = $("#areachart-multi").get(0).getContext("2d");
        var multiAreaChart = new Chart(multiAreaCanvas, {
          type: 'line',
          data: multiAreaData,
          options: multiAreaOptions
        });
      }

      if ($("#doughnutChart").length) {
        var doughnutChartCanvas = $("#doughnutChart").get(0).getContext("2d");
        var doughnutChart = new Chart(doughnutChartCanvas, {
          type: 'doughnut',
          data: doughnutPieData,
          options: doughnutPieOptions
        });
      }

      if ($("#pieChart").length) {
        var pieChartCanvas = $("#pieChart").get(0).getContext("2d");
        var pieChart = new Chart(pieChartCanvas, {
          type: 'pie',
          data: doughnutPieData1,
          options: doughnutPieOptions
        });
      }

      if ($("#browserTrafficChart").length) {
        var doughnutChartCanvas = $("#browserTrafficChart").get(0).getContext("2d");
        var doughnutChart = new Chart(doughnutChartCanvas, {
          type: 'doughnut',
          data: browserTrafficData,
          options: doughnutPieOptions
        });
      }
    });
   
   </script>
   <style>
      div, .card-title {
         font-family: monospace;
      }
      .card-title {
      	font-size: 1.8em;
      	font-weight: bold;
      }
   </style>
</head>
<body>
<c:forEach items="${list}" var="list">
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
   <jsp:include page="/WEB-INF/template/Top.jsp"/>
    <!-- partial -->
   <div class="container-fluid page-body-wrapper">
      <jsp:include page="/WEB-INF/template/Side.jsp"/>
      <!-- partial -->
      <div class="main-panel">
         <div class="content-wrapper"><!--내용들어갈 다이브-->
         
           <!-- 상단 차트 시작 -->
          <div class="row">
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-cube text-danger icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">병원 수</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0">${list.A}</h3>
                      </div>
                    </div>
                  </div>
                  <p class="text-muted mt-3 mb-0">
                    <i class="mdi mdi-alert-octagon mr-1" aria-hidden="true"></i> 65% lower growth
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-receipt text-warning icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">약국 수</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0">${list.B}</h3>
                      </div>
                    </div>
                  </div>
                  <p class="text-muted mt-3 mb-0">
                    <i class="mdi mdi-bookmark-outline mr-1" aria-hidden="true"></i> Product-wise sales
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-poll-box text-success icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">일반사용자 수</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0">${list.C}</h3>
                      </div>
                    </div>
                  </div>
                  <p class="text-muted mt-3 mb-0">
                    <i class="mdi mdi-calendar mr-1" aria-hidden="true"></i> Weekly Sales
                  </p>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-3 col-md-3 col-sm-6 grid-margin stretch-card">
              <div class="card card-statistics">
                <div class="card-body">
                  <div class="clearfix">
                    <div class="float-left">
                      <i class="mdi mdi-account-location text-info icon-lg"></i>
                    </div>
                    <div class="float-right">
                      <p class="mb-0 text-right">병원제휴 수</p>
                      <div class="fluid-container">
                        <h3 class="font-weight-medium text-right mb-0">${list.D}</h3>
                      </div>
                    </div>
                  </div>
                  <p class="text-muted mt-3 mb-0">
                    <i class="mdi mdi-reload mr-1" aria-hidden="true"></i> Product-wise sales
                  </p>
                </div>
              </div>
            </div>
          </div>
          <!-- 상단차트 끝 -->
          <!-- 차트1 -->
          <div class="row">
          <!-- 동그라미 차트 -->
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                   <div class="chartjs-size-monitor">
                     <h4 class="card-title">시간대별</h4>
                     <canvas class="chartjs-render-monitor" id="lineChart" style="height:250px"></canvas>
                   </div>
                </div>
              </div>
            </div>     
            <!-- 동그라미 차트 -->          
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                   <div class="chartjs-size-monitor">
                     <h4 class="card-title">예약 접수 비율</h4>
                     <canvas class="chartjs-render-monitor" id="doughnutChart" style="height:250px"></canvas>
                   </div>
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                   <div class="chartjs-size-monitor">
                     <h4 class="card-title">나이대별</h4>
                     <canvas class="chartjs-render-monitor" id="pieChart" style="height:250px"></canvas>
                   </div>
                </div>
              </div>
            </div>   
            <div class="col-lg-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                   <div class="chartjs-size-monitor">
                     <h4 class="card-title">요일별</h4>
                     <canvas class="chartjs-render-monitor" id="barChart" style="height:230px"></canvas>
                   </div>
                </div>
              </div>
            </div>                        
          </div>          
          <!-- 차트2 -->
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
      <jsp:include page="/WEB-INF/template/Footer.jsp"/>
        <!-- partial -->
      </div><!-- main-panel ends -->
    </div><!-- page-body-wrapper ends -->
  </div><!-- container-scroller -->
  </div>
</c:forEach>
</body>
</html>