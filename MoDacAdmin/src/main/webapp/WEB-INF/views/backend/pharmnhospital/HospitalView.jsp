<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script>
	var isDelete = function(hosno){
		
		if(confirm("정말로 삭제하시겠습니까?")) {
			location.replace("<c:url value='HospitalDelete.do?hosno="+hosno+"'/>");
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
		<div class="grid-margin stretch-card">
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
					<th class="text-center">번호</th>
					<td class="text-left" colspan="6">${requestScope.record.hosno}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">병원명</th>
						<td class="text-left" colspan="6">${requestScope.record.hosname}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">연락처</th>
						<td class="text-left" colspan="6">${requestScope.record.hosphone}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">주소</th>
						<td class="text-left" colspan="6">${requestScope.record.hosaddr}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">진료과목</th>
						<td class="text-left" colspan="6">${requestScope.subjects}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">[진료요일]</th>
						<th class="text-left" colspan="6">[진료시간]</th><th></th><th></th><th></th><th></th><th></th>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">월요일</th>
						<td class="text-left" colspan="6">${requestScope.record.mon}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">화요일</th>
						<td class="text-left" colspan="6">${requestScope.record.tue}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">수요일</th>
						<td class="text-left" colspan="6">${requestScope.record.wed}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">목요일</th>
						<td class="text-left" colspan="6">${requestScope.record.thu}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">금요일</th>
						<td class="text-left" colspan="6">${requestScope.record.fri}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">토요일</th>
						<td class="text-left" colspan="6">${requestScope.record.sat}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">일요일</th>
						<td class="text-left" colspan="6">${requestScope.record.sun}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center">공휴일</th>
						<td class="text-left" colspan="6">${requestScope.record.holiday}</td><td></td><td></td><td></td><td></td><td></td>
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
					<a href="<c:url value='HospitalEdit.do?hosno=${requestScope.record.hosno}'/>" id="btnEdit" class="btn btn-primary"> 수정 </a>
				</div>
				<div class="form-group">
					<a href="javascript:isDelete('${requestScope.record.hosno}')" id="btnDelete" class="btn btn-primary"> 삭제 </a>
				</div>
			</form>
		</div>
	</div>
<!-- 내용 끝 -->