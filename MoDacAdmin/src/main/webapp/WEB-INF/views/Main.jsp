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
     google.charts.load("current", {packages:["corechart"]});
     google.charts.setOnLoadCallback(drawChart);
     function drawChart() {
       var data = google.visualization.arrayToDataTable([
         ['Task', 'Hours per Day'],
         ['20살 미만', ${ten}],
         ['20살 이상~30살 미만', ${two}],
         ['30살 이상 ~ 40살 미만', ${three}],
         ['40살 이상 50살 미만', ${fors}],
         ['50살 이상', ${five}]
       ]);

       var options = {
         title: '나이대별 회원수',
         is3D: true,
       };

       var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
       chart.draw(data, options);
       
       
       var data = google.visualization.arrayToDataTable([
           ['요일별', '이용수'],
           ['월',  ${mon}],
           ['화',  ${tue}],
           ['수',  ${wed}],
           ['목',  ${thu}],
           ['금',  ${fri}],
           ['토',  ${dat}],
           ['일',  ${sun}]
         ]);

         var options = {
           title: '요일 별 이용 현환',
           hAxis: {title: '요일별',  titleTextStyle: {color: '#333'}},
           vAxis: {minValue: 0}
         };

         var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
         chart.draw(data, options);
       
     }
   </script>
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
          
          <!-- 차트1 -->
          <div class="row">
            <div class="col-lg-6 grid-margin stretch-card">
              <!--weather card-->
              <div class="card">
                <div class="card-body">
					<div id="piechart_3d" style="height: 580px;"></div>
                </div>
              </div>
             
              <!--weather card ends-->
            </div>
            <div class="col-lg-6 grid-margin stretch-card">
				<div class="card">
                <div class="card-body">
					<div id="chart_div" style="height: 580px;"></div>
                </div>
              </div> 
            </div>
          </div>
          
          <!-- 차트2 -->


        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
		<jsp:include page="/WEB-INF/template/Footer.jsp"/>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
</c:forEach>
</body>
</html>