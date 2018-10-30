<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value='css/imagespace.css'/>" rel="stylesheet">

<div class="col-lg-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
			<h1>건강정보 카테고리 상세보기</h1>
			<br>
			<div class="table-responsive">
				<div class="col-lg-10">
					<table class="table table-bordered">
						<tr>
							<th>#</th>
							<td>${record.healthinfono }</td>
						</tr>
						<tr>
							<th>제목</th>
							<td>${record.title }</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>${record.postdate }</td>
						</tr>
						<!-- 
						<tr>
							<th>이미지</th>
							<td>XXX.png</td>
						</tr>
						-->
						<tr>
							<th colspan="2">내용</th>
						</tr>
					</table>
					<div id="imagespace" >
						${record.content}
					</div>				
				</div>
				<!-- 추가용 버튼  시작-->
				<div style="padding-top: 3%; padding-left: 80%">
					<a href="<c:url value='healthinfoEditForm.do?categno=${record.categno }&healthinfono=${record.healthinfono }'/>">
						<button type="button" class="btn btn-dark btn-fw">수정하기</button>
					</a>
					<a href="<c:url value='hInfoDelete.do?categno=${record.categno }&healthinfono=${record.healthinfono }'/>">
						<button type="button" class="btn btn-dark btn-fw">삭제하기</button>
					</a>
				</div>
				<!-- 추가용 버튼  끝-->
			</div>
		</div>
	</div>
</div>
