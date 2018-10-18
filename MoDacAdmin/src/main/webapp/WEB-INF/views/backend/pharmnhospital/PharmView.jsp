<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script>
	var isDelete = function(pharm, no){
		if(confirm("정말로 삭제하시겠습니까?")) {
			if(pharm == 'all') {
				location.replace("<c:url value='PharmacyDelete.do?no="+no+"&pharm=all'/>");
			} else {
				location.replace("<c:url value='PharmacyDelete.do?no="+no+"&pharm=night'/>");
			}
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
		<div class="col-lg-12">
			<div class="grid-margin stretch-card">
			    <div class="card">
			      <div class="card-body">
			        <h2 class="card-title"><strong>약국 상세정보</strong></h2>
			        <p class="card-description">
					- 좌측 하단의 '수정' 버튼을 클릭하여 약국 정보를 수정하실 수 있습니다. <br/>
					- 또한 '삭제' 버튼을 클릭하여 해당 약국 데이터를 삭제하실 수 있습니다.
			        </p>
			        <br/>
					<c:if test="${empty pharm}" var="isEmpty">
						<c:set var="no" value="${nightPharm.nphno}"/>
						<c:set var="addr" value="${nightPharm.nphaddr}"/>
						<c:set var="name" value="${nightPharm.nphname}"/>
						<c:set var="phone" value="${nightPharm.nphphone}"/>
						<c:set var="mon" value="${nightPharm.nphmon}"/>
						<c:set var="tue" value="${nightPharm.nphtue}"/>
						<c:set var="wed" value="${nightPharm.nphwed}"/>
						<c:set var="thu" value="${nightPharm.nphthu}"/>
						<c:set var="fri" value="${nightPharm.nphfri}"/>
						<c:set var="sat" value="${nightPharm.nphsat}"/>
						<c:set var="sun" value="${nightPharm.nphsun}"/>
						<c:set var="holiday" value="${nightPharm.npholiday}"/>
					</c:if>
					<c:if test="${not isEmpty}">
						<c:set var="no" value="${pharm.phno}"/>
						<c:set var="addr" value="${pharm.phaddr}"/>
						<c:set var="name" value="${pharm.phname}"/>
						<c:set var="phone" value="${pharm.phphone}"/>
						<c:set var="mon" value="${pharm.phmon}"/>
						<c:set var="tue" value="${pharm.phtue}"/>
						<c:set var="wed" value="${pharm.phwed}"/>
						<c:set var="thu" value="${pharm.phthu}"/>
						<c:set var="fri" value="${pharm.phfri}"/>
						<c:set var="sat" value="${pharm.phsat}"/>
						<c:set var="sun" value="${pharm.phsun}"/>
						<c:set var="holiday" value="${pharm.pholiday}"/>
					</c:if>		        
			        <div class="table-responsive">
			          <table class="table table-hover">
			           <tr>
						<th class="text-center">번호</th>
						<td class="text-left" colspan="6">${no}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">약국명</th>
							<td class="text-left" colspan="6">${name}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">연락처</th>
							<td class="text-left" colspan="6">${phone}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">주소</th>
							<td class="text-left" colspan="6">${addr}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">영업요일</th>
							<th class="text-left" colspan="6">[ 영업시간 ]</th><th></th><th></th><th></th><th></th><th></th>
						</tr>
						<tr>
							<th class="text-center">월요일</th>
							<td class="text-left" colspan="6">${mon}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">화요일</th>
							<td class="text-left" colspan="6">${tue}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">수요일</th>
							<td class="text-left" colspan="6">${wed}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">목요일</th>
							<td class="text-left" colspan="6">${thu}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">금요일</th>
							<td class="text-left" colspan="6">${fri}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">토요일</th>
							<td class="text-left" colspan="6">${sat}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">일요일</th>
							<td class="text-left" colspan="6">${sun}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
						<tr>
							<th class="text-center">공휴일</th>
							<td class="text-left" colspan="6">${holiday}</td><td></td><td></td><td></td><td></td><td></td>
						</tr>
			          </table>
			        </div>
			      </div>
		       </div>
		    </div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-lg-12">
			<form class="form-inline">
				<div class="form-group">
					<c:if test="${empty pharm}" var="isEmpty">
						<c:url var="url" value='PharmacyEdit.do?no=${no}&pharm=night'/>
					</c:if>
					<c:if test="${not isEmpty}">
						<c:url var="url" value='PharmacyEdit.do?no=${no}&pharm=all'/>
					</c:if>
					<a href="${url}" id="btnEdit" class="btn btn-primary"> 수정 </a>
				</div>
				<div class="form-group">
					<c:if test="${empty pharm}" var="isEmpty">
						<c:set var="scripturl" value="javascript:isDelete('night','${no}')"/>
					</c:if>
					<c:if test="${not isEmpty}">
						<c:set var="scripturl" value="javascript:isDelete('all', '${no}')"/>
					</c:if>
					<a href="${scripturl}" id="btnDelete" class="btn btn-primary"> 삭제 </a>	
				</div>
				<div class="form-group">
					<a href="<c:url value='CommonPharmacy.do'/>" class="btn btn-primary"> 목록 </a>
				</div>
			</form>
		</div>
	</div>
<!-- 내용 끝 -->