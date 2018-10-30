<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="<c:url value='vendors/iconfonts/font-awesome/css/font-awesome.css'/>">

<style>
	.nav-item{
		padding-top: 5px;
		padding-bottom: 5px;
		font-family: monospace;
		font-weight: bold;
		font-size: 1.2em;
		margin-bottom: 10px;
	}
	.nav-item a {
		text-decoration: none !important ;
		font-size: 0.8em !important ;
		color:graytext;
	}
</style>
<!-- partial:partials/_sidebar.html -->
<nav class="sidebar sidebar-offcanvas" id="sidebar">
  <ul class="nav">
    <li class="nav-item nav-profile">
      <div class="nav-link">
        <div class="user-wrapper">
          <div class="profile-image">
            <img src="<c:url value='images/faces/conn.jpg'/>" alt="profile image">
          </div>
          <div class="text-wrapper">
            <p class="profile-name"><%=session.getAttribute("mid") != null? session.getAttribute("mid"): ""%></p>
            <div>
              <small class="designation text-muted">Manager</small>
              <span class="status-indicator online"></span>
            </div>
          </div>
        </div>
<!--           
			<button class="btn btn-success btn-block">New Project
            	<i class="mdi mdi-plus"></i>
          	</button> 
-->
      </div>
    </li>
<!-- 	 	
		<li class="nav-item">
	      <a class="nav-link" data-toggle="collapse" href="#ui-general" aria-expanded="false" aria-controls="ui-general">
	        <i class="menu-icon fa fa-users"></i>
	        <span class="menu-title">일반회원관리</span>
	        <i class="menu-arrow"></i>
	      </a>
	      <div class="collapse" id="ui-general">
	        <ul class="nav flex-column sub-menu">
	          <li class="nav-item">
	          	회원정보
	          </li>
	          <li class="nav-item">
	          	건강상태
	          </li>
	        </ul>
	      </div>
	    </li> 
-->
 	<li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#ui-partner" aria-expanded="false" aria-controls="ui-partner">
        <i class="menu-icon fa fa-user-md"></i>
        <span class="menu-title">제휴관리</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="ui-partner">
        <ul class="nav flex-column sub-menu">
         <li class="nav-item">
          	<a class="decnon"href="<c:url value='PartnersRequest.do'/>">제휴신청</a>
          </li>
          <li class="nav-item">
			<a href="<c:url value='WithdrawalRequest.do'/>">탈퇴신청</a>
          </li>
          <li class="nav-item">
          	<a href="<c:url value='PartnerList.do'/>">제휴회원 목록</a>
          </li>
        </ul>
      </div>
    </li>
 	<li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#ui-phhos" aria-expanded="false" aria-controls="ui-phhos">
        <i class="menu-icon fa fa-plus"></i>
        <span class="menu-title">약국병원정보</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="ui-phhos">
        <ul class="nav flex-column sub-menu">
        	<li class="nav-item">
				<a href="<c:url value='CommonPharmacy.do'/>" >약국정보관리</a>
			</li>
			<li class="nav-item">
				<a href="<c:url value='CommonHospital.do'/>">병원정보관리</a>
			</li>
        </ul>
      </div>
    </li>
 	<li class="nav-item">
      <a class="nav-link" data-toggle="collapse" href="#ui-qna" aria-expanded="false" aria-controls="ui-qna">
        <i class="menu-icon fa fa-quora"></i>
        <span class="menu-title">문의관리</span>
        <i class="menu-arrow"></i>
      </a>
      <div class="collapse" id="ui-qna">
        <ul class="nav flex-column sub-menu">
        <!-- 
          <li class="nav-item">
          	증상문의관리
          </li>
        -->
          <li class="nav-item">
          	일반문의관리
          </li>
        </ul>
      </div>
    </li>
	<li class="nav-item">
      <a class="nav-link" href="NoticeList.do">
        <i class="menu-icon fa fa-bell-o"></i>
        <span class="menu-title">공지사항</span>
      </a>
    </li>
	<li class="nav-item">
      <a class="nav-link" href="<c:url value='healthinfoList.do'/>">
        <i class="menu-icon fa fa-info"></i>
        <span class="menu-title">건강정보</span>
      </a>
    </li>

	<!-- form_examples -->
		<!-- 
	 	<li class="nav-item">
	      <a class="nav-link" data-toggle="collapse" href="#ui-message" aria-expanded="false" aria-controls="ui-message">
	        <i class="menu-icon mdi mdi-content-copy"></i>
	        <span class="menu-title">밑은 나중에 지울 목록들</span>
	        <i class="menu-arrow"></i>
	      </a>
	      <div class="collapse" id="ui-message">
	        <ul class="nav flex-column sub-menu">
	          <li class="nav-item">
	           	페이지 만들 때 
	          </li>
	          <li class="nav-item">
	          	참고하기 위해 남겨뒀음
	          </li>
	          <li class="nav-item">
	          	아랜 타일즈적용x
	          </li>
	        </ul>
	      </div>
	    </li>
	    
	    아래 nav-item들은 나중에 지울 목록들 페이지 만들 때 참고하기 위해 남겨뒀음
	    
	 	드롭다운메뉴있는 nav-item시작
	    <li class="nav-item">
	      <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
	        <i class="menu-icon mdi mdi-content-copy"></i>
	        <span class="menu-title">Basic UI Elements</span>
	        <i class="menu-arrow"></i>
	      </a>
	      <div class="collapse" id="ui-basic">
	        <ul class="nav flex-column sub-menu">
	          <li class="nav-item">
	            <a class="nav-link" href="pages/ui-features/buttons.html">Buttons</a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="pages/ui-features/typography.html">Typography</a>
	          </li>
	        </ul>
	      </div>
	    </li>
	    드롭다운메뉴있는 nav-item시작
	    
	    드롭다운메뉴없는 일반nav-item시작
	    <li class="nav-item">
	      <a class="nav-link" href="pages/forms/basic_elements.html">
	        <i class="menu-icon mdi mdi-backup-restore"></i>
	        <span class="menu-title">Form elements</span>
	      </a>
	    </li>
	    드롭다운메뉴없는 일반nav-item끝
	    
	    <li class="nav-item">
	      <a class="nav-link" href="pages/charts/chartjs.html">
	        <i class="menu-icon mdi mdi-chart-line"></i>
	        <span class="menu-title">Charts</span>
	      </a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="pages/tables/basic-table.html">
	        <i class="menu-icon mdi mdi-table"></i>
	        <span class="menu-title">Tables</span>
	      </a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" href="pages/icons/font-awesome.html">
	        <i class="menu-icon mdi mdi-sticker"></i>
	        <span class="menu-title">Icons</span>
	      </a>
	    </li>
	    <li class="nav-item">
	      <a class="nav-link" data-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
	        <i class="menu-icon mdi mdi-restart"></i>
	        <span class="menu-title">User Pages</span>
	        <i class="menu-arrow"></i>
	      </a>
	      <div class="collapse" id="auth">
	        <ul class="nav flex-column sub-menu">
	          <li class="nav-item">
	            <a class="nav-link" href="pages/samples/blank-page.html"> Blank Page </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="pages/samples/login.html"> Login </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="pages/samples/register.html"> Register </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="pages/samples/error-404.html"> 404 </a>
	          </li>
	          <li class="nav-item">
	            <a class="nav-link" href="pages/samples/error-500.html"> 500 </a>
	          </li>
	        </ul>
	      </div>
	    </li>
	    -->
  </ul>
</nav> 