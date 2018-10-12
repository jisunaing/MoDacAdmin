<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">

<head>
  <!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Star Admin Free Bootstrap Admin Dashboard Template</title>
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
</head>

<div class="container-scroller">
  <div class="container-fluid page-body-wrapper full-page-wrapper auth-page">
    <div class="content-wrapper d-flex align-items-center auth register-bg-1 theme-one">
      <div class="row w-100">
        <div class="col-lg-4 mx-auto">
          <h2 class="text-center mb-4">Register</h2>
          <div class="auto-form-wrapper">
            <form action="backend/member/AddAccount.jsp">
              <div class="form-group">
                <div class="input-group">
                
                  <input type="text" class="form-control" name="newuser" placeholder="<%=session.getAttribute("registerSuccess") != null? "더 추가할 ID를 입력해주세요": "ID"%>">
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="mdi mdi-check-circle-outline"></i>
                    </span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <input type="text" class="form-control" name="newname" placeholder="Name">
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="mdi mdi-check-circle-outline"></i>
                    </span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <input type="password" class="form-control" name="newpass" placeholder="Password">
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="mdi mdi-check-circle-outline"></i>
                    </span>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <div class="input-group">
                  <input type="password" class="form-control" name="passCheck" placeholder="Confirm Password">
                  <div class="input-group-append">
                    <span class="input-group-text">
                      <i class="mdi mdi-check-circle-outline"></i>
                    </span>
                  </div>
                </div>
              </div>
              <div class="form-group d-flex justify-content-center">
                <div class="form-check form-check-flat mt-0">
                  <label class="form-check-label">
                    <input type="checkbox" class="form-check-input" checked> I agree to the terms
                  </label>
                </div>
              </div>
              <div class="form-group">
                <button class="btn btn-primary submit-btn btn-block">Register</button>
              </div>
              <div class="text-block text-center my-3">
                <span class="text-small font-weight-semibold">관리자페이지 메인으로 돌아가기</span>
                <a href="main.do" class="text-black text-small">go!</a>
              </div>
              <div class="text-block text-center my-3">
                <span class="text-large font-weight-semibold" style="color: orange"><%= session.getAttribute("registerSuccess") != null? session.getAttribute("registerSuccess"): "" %></span>
                <%
                	session.removeAttribute("registerSuccess");
                %>
              </div>
            </form>
          </div>
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
