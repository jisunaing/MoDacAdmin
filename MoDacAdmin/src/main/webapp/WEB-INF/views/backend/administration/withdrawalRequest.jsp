<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>


<style>

#form-box {
	background: white; 
	padding: 20px;
	width: 1100px;
	height: 950px;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	text-align: center;
	padding-left: 100px;
	}
	
	#h1id{
	
	padding-right: 100px;
	
	}


</style>

<div id="form-box">

	<div class="content-wrapper">

		<div class="container">
			<div class="page-header">
				<h1 id="h1id">
					제휴 탈퇴<small> 목록 페이지</small>
				</h1>
				<br/>
			</div>
			<div class="row">

				<div>
					<table class="table table-hover table-bordered text-center">
						<tr>

							<th class="col-md-1 text-center">등록 번호</th>
							<th class="col-md-2 text-center">병원 명</th>
							<th class="col-md-1 text-center">담당자 이름</th>
							<th class="col-md-1 text-center">연락처</th>
							<th class="col-md-1 text-center">신청 날짜</th>
							<th class="col-md-1 text-center">탈퇴 여부</th>
						</tr>

						<tr>

							<td>1</td>
							<td><a href="<c:url value='WithdrawalRequestView.do'/>">이바르게
									치과</a></td>
							<td>홍길동</td>
							<td>010-1234-5678</td>
							<td>2018-09-24</td>
							<td>탈퇴 처리됨</td>
						</tr>

						<tr>
							<td>2</td>
							<td>함소아 한의원</td>
							<td>박길동</td>
							<td>010-2222-3333</td>
							<td>2018-09-24</td>
							<td>대기중</td>
						</tr>

						<tr>
							<td>3</td>
							<td>튼튼마디</td>
							<td>오길동</td>
							<td>010-5555-5555</td>
							<td>2018-09-25</td>
							<td>탈퇴 처리됨</td>
						</tr>


					</table>
				</div>

			</div>
		</div>
	</div>
</div>