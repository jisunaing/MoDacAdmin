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

<title>관리자페이지입니다</title>
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
<style>
	h1, span, a, li, pt, table, button, th, h2, h3, h4, h5, h6, body{
		font-family: monospace
	}
	.card-title {
		font-family: monospace;
	}
	.text-small	{
		font-family: monospace;
	}
</style>
<script>
$(function(){
});
</script>
</head>
<body>
	<div class="container-scroller" style="font-family: monospace">
		<!-- al:partials/_navbar.html -->
		<!--탑메뉴들어감-->
		<tiles:insertAttribute name="Top"/>
		
		<!-- partial -->

		<div class="container-fluid page-body-wrapper" style="padding-top: 80px">
			<!-- partial:partials/_sidebar.html -->
			<!--사이드들어감-->
			<tiles:insertAttribute name="Side"/>
			
			<!-- partial -->
			
			<div class="main-panel">
				<!-- 내용들어감 -->
				<div class="content-wrapper"><!--내용들어갈 다이브-->
				<tiles:insertAttribute name="Body"/>
				</div><!-- content-wrapper ends -->
			
				<!-- partial:partials/_footer.html -->	
				<!--푸터들어감-->
				<tiles:insertAttribute name="Footer"/>
			
				<!-- partial -->
			
			</div><!-- main-panel ends -->
		</div><!-- page-body-wrapper ends -->
	</div><!--container-scroller-->

</body>
</html>
