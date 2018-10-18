﻿<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>
<style>
	.form-group {
		margin-right: 10px;	
	}
	.row {
		margin-bottom : 10px;
	}
	.card-title {
		font-size: 1.8em;
	}

	
</style>
	<div class="row">
		<div class="col-sm-12 grid-margin stretch-card">
		    <div class="card">
		      <div class="card-body">
		        <h4 class="card-title"><strong>제휴신청 목록</strong></h4>
		        <div class="table-responsive">
		        <table class="table table-hover table-bordered text-center">
						<tr>

							<th>병원 번호</th>
							<th>회원 아이디 </th>							
							<th>병원 명</th>
							<th>담당자 이름</th>
							<th>연락처</th>
							<th>병원 주소</th>
							
						</tr>
				<c:if test="${empty requestScope.partner }" var="isEmpty">
					<tr>
						<td colspan="6">출력할 회원이 없는 상태입니다</td>
					</tr>
				</c:if>
				<c:if test="${not isEmpty}">
					<c:forEach var="partners" items="${partner}" varStatus="loop">
					
					
						<tr style="text-align: center;">
							<td>${partners.HOSNO}</td>
							<td>${partners.PID}</td>
							<td>
							 <a	href="<c:url value='PartnerView.do?hosno=${partners.HOSNO}'/>">${partners.HOSNAME}</a>							
							</td>	
							<td>${partners.HOSMANAGER}</td>							
							<td>${partners.PPHONE}</td>														
							<td>${partners.HOSADDR}</td> 
							
						</tr>
					</c:forEach>
				</c:if>						
					</table>
		        </div>
		      </div>
		  <div class="card-body" style="text-align: center;">
            <div>${pagingString}</div>
         </div>
	       </div>
	    </div>
	</div>
	<!-- 검색용 UI -->
	<div class="row">
		<div class="col-lg-12">
			<form class="form-inline" method="post"	action="<c:url value='#'/>">
				<div class="form-group">
					<select name="searchColumn" class="form-control">
						<option value="hosname">병원 명</option>
						<option value="h.hosno">신청 번호</option>
						<option value="p.pid">회원 아이디</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" name="searchWord" class="form-control" />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">검색</button>
					<a href="<c:url value='PartnerList.do'/>"><button style="margin-left: 10px;" type="button" class="btn btn-danger">전체 목록</button></a>
				</div>
				
			</form>
		</div>
	</div>
<!-- 내용 끝 -->