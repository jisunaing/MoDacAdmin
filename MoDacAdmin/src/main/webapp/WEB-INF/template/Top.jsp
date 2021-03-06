<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	System.out.println("mid:"+session.getAttribute("mid"));
	if(session.getAttribute("mid") == null) { // mid가 널
		// 여기서 프론트엔드로 보내기
		out.println("<script>");
		out.println("alert('로그인 후 이용하세요');");
		out.println("location.href='"+request.getContextPath()+"/AdminLogin.do';");
		out.println("</script>");
	} // if
%>
<style>
</style>
<nav  style="height: 80px;" id="topnav"class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
<!--  style="height: 80px" -->
  <div style="background: transparent;" class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
<!--   style="background: transparent;" -->
    <a class="navbar-brand brand-logo" href="<c:url value='/index.do'/>">
     <img style="height: 100%" src="<c:url value='images/logo3.png'/>" alt="logo" />
<%--      <img style="height: 95%;margin-top: 5px;" src="<c:url value='images/logo2.png'/>" alt="logo" /> --%>
<%--      <img style="height: 100%" src="<c:url value='images/logo.png'/>" alt="logo" /> --%>
   </a>
   <a class="navbar-brand brand-logo-mini" href="<c:url value='/index.do'/>">
     <img style="padding-left:10px;width: 80%;height: 80%" src="<c:url value='images/logosm.png'/>" alt="logo" />
   </a>
 </div>
 <div class="navbar-menu-wrapper d-flex align-items-center">
   <ul class="navbar-nav navbar-nav-left header-links d-none d-md-flex">
     <li class="nav-item active" style="width:150px;">
       <a href="<c:url value='main.do'/>" class="nav-link">
         <i class="mdi mdi-elevation-rise"></i>대시보드</a>	
     </li>
     <li class="nav-item" style="width:150px;">
       <a href="<c:url value='RegisterForm.do'/>" class="nav-link">
			<i class="mdi mdi-account-multiple-plus"></i>계정추가
<!--          <span class="badge badge-primary ml-1">New</span> -->
       </a>
     </li>
<%--      <li class="nav-item">
       <a href="<c:url value='/Test.do'/>" class="nav-link">
       <a href="<c:url value='/Test/Test.do'/>" class="nav-link">
          <i class="mdi mdi-file-document-box"></i>TestPage</a>
     </li>
 --%>
    </ul>
   <ul class="navbar-nav navbar-nav-right">
<%--      <li class="nav-item dropdown">
       <a class="nav-link count-indicator dropdown-toggle" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
         <i class="mdi mdi-file-document-box"></i>
         <span class="count">7</span>
       </a>
       <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
         <div class="dropdown-item">
           <p class="mb-0 font-weight-normal float-left">You have 7 unread mails
           </p>
           <span class="badge badge-info badge-pill float-right">View all</span>
         </div>
         <div class="dropdown-divider"></div>
         <a class="dropdown-item preview-item">
           <div class="preview-thumbnail">
             <img src="<c:url value='images/faces/face4.jpg'/>" alt="image" class="profile-pic">
           </div>
           <div class="preview-item-content flex-grow">
             <h6 class="preview-subject ellipsis font-weight-medium text-dark">David Grey
               <span class="float-right font-weight-light small-text">1 Minutes ago</span>
             </h6>
             <p class="font-weight-light small-text">
               The meeting is cancelled
             </p>
           </div>
         </a>
         <div class="dropdown-divider"></div>
         <a class="dropdown-item preview-item">
           <div class="preview-thumbnail">
             <img src="<c:url value='images/faces/face2.jpg'/>" alt="image" class="profile-pic">
           </div>
           <div class="preview-item-content flex-grow">
             <h6 class="preview-subject ellipsis font-weight-medium text-dark">Tim Cook
               <span class="float-right font-weight-light small-text">15 Minutes ago</span>
             </h6>
             <p class="font-weight-light small-text">
               New product launch
             </p>
           </div>
         </a>
         <div class="dropdown-divider"></div>
         <a class="dropdown-item preview-item">
           <div class="preview-thumbnail">
             <img src="<c:url value='images/faces/face3.jpg'/>" alt="image" class="profile-pic">
           </div>
           <div class="preview-item-content flex-grow">
             <h6 class="preview-subject ellipsis font-weight-medium text-dark"> Johnson
               <span class="float-right font-weight-light small-text">18 Minutes ago</span>
             </h6>
             <p class="font-weight-light small-text">
               Upcoming board meeting
             </p>
           </div>
         </a>
       </div>
     </li> --%>
     <li class="nav-item dropdown d-none d-xl-inline-block">
       <a class="nav-link dropdown-toggle" id="UserDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
         <span class="profile-text">Hello, <%=session.getAttribute("mid") != null? session.getAttribute("mid"): "" %> !</span>
         <img class="img-xs rounded-circle" src="<c:url value='images/faces/conn.jpg'/>" alt="Profile image">
        </a>
        <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="UserDropdown">
          <a class="dropdown-item p-0">
            <div class="d-flex border-bottom">
              <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                <i class="mdi mdi-bookmark-plus-outline mr-0 text-gray"></i>
              </div>
              <div class="py-3 px-4 d-flex align-items-center justify-content-center border-left border-right">
                <i class="mdi mdi-account-outline mr-0 text-gray"></i>
              </div>
              <div class="py-3 px-4 d-flex align-items-center justify-content-center">
                <i class="mdi mdi-alarm-check mr-0 text-gray"></i>
              </div>
            </div>
          </a>
          <a class="dropdown-item">
            Change Password
          </a>
          <a class="dropdown-item">
            Check Inbox
          </a>
          <form name="logoutform" action="<c:url value='/Logout.do'/>" method="post"></form>
          <a class="dropdown-item" href="#" onclick="logoutform.submit();"> 
<!--           <a class="dropdown-item" href="Logout.do">  -->
            Sign Out
          </a>
        </div>
      </li>
    </ul>
    <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
      <span class="mdi mdi-menu"></span>
    </button>	
  </div>
  
</nav>