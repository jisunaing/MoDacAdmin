<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>

<script>
	var isDelete = function(){
		
		if(confirm("정말로 삭제하시겠습니까?")) {
			location.replace("<c:url value='HospitalDelete.do?no=1'/>");
		}
	};

</script>

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
	.thead {
		font-weight: bold;
		font-size:1.3em;
	}
</style>
	<div class="row">
		<div class="col-lg-12 grid-margin stretch-card">
		    <div class="card">
		      <div class="card-body">
		        <h2 class="card-title"><strong>병원 상세정보</strong></h2>
		        <p class="card-description">
				- 좌측 하단의 '수정' 버튼을 클릭하여 병원 정보를 수정하실 수 있습니다. <br/>
				- 또한 '삭제' 버튼을 클릭하여 해당 병원 데이터를 삭제하실 수 있습니다.
		        </p>
		        <br/>
		        <div class="table-responsive">
		          <table class="table table-hover">
		           <tr>
					<th class="col-md-1 text-center">번호</th>
					<td class="text-left">1</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">병원명</th>
						<td class="text-left">병원이름 입니다</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">연락처</th>
						<td class="text-left">010-1234-1234</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">주소</th>
						<td class="text-left">주소가 들어갑니다 주소가 들어갑니다</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">진료과목</th>
						<td class="text-left">내과, 외과, 정형외과, 소아청소년과, 내과, 외과, 정형외과, 소아청소년과, 내과, 외과, 정형외과, 소아청소년과, 내과, 외과, 정형외과, 소아청소년과 </td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">진료요일</th>
						<th class="text-left">[진료시간]</th>
					</tr>
					<tr>
						<th class="col-md-1 text-center">월요일</th>
						<td class="text-left">9:00 ~ 18:00</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">화요일</th>
						<td class="text-left">9:00 ~ 18:00</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">수요일</th>
						<td class="text-left">9:00 ~ 18:00</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">목요일</th>
						<td class="text-left">9:00 ~ 18:00</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">금요일</th>
						<td class="text-left">9:00 ~ 18:00</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">토요일</th>
						<td class="text-left">9:00 ~ 18:00</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">일요일</th>
						<td class="text-left">9:00 ~ 18:00</td>
					</tr>
					<tr>
						<th class="col-md-1 text-center">공휴일</th>
						<td class="text-left">9:00 ~ 18:00</td>
					</tr>
		          </table>
		        </div>
		      </div>
	       </div>
	    </div>
	</div>
	<div class="row">
		<div class="col-lg-12">
			<form class="form-inline">
				<div class="form-group">
					<a href="<c:url value='HospitalEdit.do?no=1'/>" id="btnEdit" class="btn btn-primary"> 수정 </a>
				</div>
				<div class="form-group">
					<a href="javascript:isDelete()" id="btnDelete" class="btn btn-primary"> 삭제 </a>
				</div>
			</form>
		</div>
	</div>
<!-- 내용 끝 -->