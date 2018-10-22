<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script>
	var partner = function(phosno, hosno){
		if(confirm("정말로 사용자 측에서 입력한 병원 정보를 적용하시겠습니까?")) {
			console.log(phosno, hosno);
			location.replace("<c:url value='HospitalUpdateToPartner.do?hosno="+hosno+"&phosno="+phosno+"'/>");
		}
	};
	var original = function(phosno, hosno){
		if(confirm("정말로 기존 병원 정보를 적용하시겠습니까?")) {
			console.log(phosno, hosno);
			location.replace("<c:url value='HospitalUpdateToOriginal.do?hosno="+hosno+"&phosno="+phosno+"'/>");
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
<div class="main-panel">
  <div class="content-wrapper">
	<div class="row">
		<div class="col-lg-6 grid-margin stretch-card">
		    <div class="card">
		      <div class="card-body">
		        <h3 class="card-title text-danger"><strong> [사용자] 병원 상세정보 </strong></h3>
		        <p class="card-description">
				- 사용자로부터 입력받은 병원 상세정보입니다. <br/>
				- 아래 정보를 채택하시려면 하단의 빨간색 버튼을 클릭해주세요.
		        </p>
		        <br/>
		        <div class="table-responsive">
		          <table class="table table-hover">
		           <tr>
					<th class="text-center text-danger">번호</th>
					<td class="text-left" colspan="6">${requestScope.partnerInfo.hosno}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">병원명</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.hosname}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">연락처</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.hosphone}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">주소</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.hosaddr}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">진료과목</th>
						<td class="text-left" colspan="6">${requestScope.partnerSubjects}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">[진료요일]</th>
						<th class="text-left text-danger" colspan="6">[진료시간]</th><th></th><th></th><th></th><th></th>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">월요일</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.mon}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">화요일</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.tue}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">수요일</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.wed}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">목요일</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.thu}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">금요일</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.fri}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">토요일</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.sat}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">일요일</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.sun}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-danger">공휴일</th>
						<td class="text-left" colspan="6">${requestScope.partnerInfo.holiday}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
		          </table>
		        </div>
		        <br/><br/>
		        <form class="form-inline">
					<div class="form-group">
						<a href="javascript:partner(${requestScope.partnerInfo.hosno},${requestScope.originalInfo.hosno})" id="btnDelete" class="btn btn-outline-danger"> 사용자 측에서 입력한 병원 정보를 사용하겠습니다. </a>
					</div>
				</form>
		      </div>
	       </div>
	    </div>
	    <div class="col-lg-6 grid-margin stretch-card">
		    <div class="card">
		      <div class="card-body">
		        <h3 class="card-title text-primary"><strong> [기존] 병원 상세정보 </strong></h3>
		        <p class="card-description">
				- 기존에 등록되어 있던 병원 상세정보입니다. <br/>
				- 아래 정보를 채택하시려면 하단의 파란색 버튼을 클릭해주세요.
		        </p>
		        <br/>
		        <div class="table-responsive">
		          <table class="table table-hover">
		           <tr>
					<th class="text-center text-primary">번호</th>
					<td class="text-left" colspan="6">${requestScope.originalInfo.hosno}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">병원명</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.hosname}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">연락처</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.hosphone}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">주소</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.hosaddr}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">진료과목</th>
						<td class="text-left" colspan="6">${requestScope.originalSubjects}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">[진료요일]</th>
						<th class="text-left text-primary" colspan="6">[진료시간]</th><th></th><th></th><th></th><th></th>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">월요일</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.mon}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">화요일</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.tue}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">수요일</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.wed}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">목요일</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.thu}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">금요일</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.fri}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">토요일</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.sat}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">일요일</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.sun}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
					<tr>
						<th class="col-lg-1 text-center text-primary">공휴일</th>
						<td class="text-left" colspan="6">${requestScope.originalInfo.holiday}</td><td></td><td></td><td></td><td></td><td></td>
					</tr>
		          </table>
		        </div>
		        <br/><br/>
		        <form class="form-inline">
					<div class="form-group">
						<a href="javascript:original('${requestScope.partnerInfo.hosno}','${requestScope.originalInfo.hosno}')" id="btnDelete" class="btn btn-outline-primary"> 기존에 저장된 병원 정보를 사용하겠습니다. </a>
					</div>
				</form>
		      </div>
	       </div>
	    </div>
	 </div>
  </div>
</div>
