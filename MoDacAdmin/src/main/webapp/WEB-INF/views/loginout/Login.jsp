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

</head>

<link rel="shortcut icon" href="<c:url value='images/favicon.png'/>" />


<div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
      <div class="content-wrapper d-flex align-items-center auth auth-bg-1 theme-one">
        <div class="row w-100">
          <div class="col-lg-4 mx-auto">
            <div class="auto-form-wrapper">
            <!-- form시작 -->
            <!-- 
              <form method="post" action="backend/loginout/LoginProcess.jsp">
            -->
              <form method="post" action="LoginProcess.do">
                <div class="form-group">
                  <label class="label">아이디</label>
                  <div class="input-group">
                    <input type="text" name="mid" class="form-control" placeholder="user">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <label class="label">비밀번호</label>
                  <div class="input-group">
                    <input type="password" name="mpwd" class="form-control" placeholder="*********">
                    <div class="input-group-append">
                      <span class="input-group-text">
                        <i class="mdi mdi-check-circle-outline"></i>
                      </span>
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <button class="btn btn-primary submit-btn btn-block">Login</button>
                </div>
                <div class="text-block text-center my-3">
                  <span class="text-small font-weight-semibold" style="font-size:1.5em ;color: orange"><%=session.getAttribute("ERROR") != null? session.getAttribute("ERROR"): "" %></span>
                  <br/>
                  <span class="text-small font-weight-semibold">관리자만 사용 가능한 페이지입니다</span>
                  <a href="http://localhost:8080/MoDacProject/" class="text-black text-small"><br/>모닥으로 돌아가기</a>
                </div>
              </form>
              <!-- form끝 -->
            </div>
            <ul class="auth-footer">
              <li>
                <a href="#">Conditions</a>
              </li>
              <li>
                <a href="#">Help</a>
              </li>
              <li>
                <a href="#">Terms</a>
              </li>
            </ul>
            <p class="footer-text text-center">copyright © 2018 MoDacProj. All rights reserved.</p>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src="<c:url value='vendors/js/vendor.bundle.base.js'/>"></script>
  <script src="<c:url value='vendors/js/vendor.bundle.addons.js'/>"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="<c:url value='js/off-canvas.js'/>"></script>
  <script src="<c:url value='js/misc.js'/>"></script>
  <!-- endinject -->