<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
th {
	width: 30%
}
</style>
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
							<td>1</td>
						</tr>
						<tr>
							<th>카테고리명</th>
							<td>소아시력</td>
						</tr>
						<tr>
							<th>설명</th>
							<td>설명입니다</td>
						</tr>
						<tr>
							<th>이미지</th>
							<td>XXX.png</td>
						</tr>
					</table>
				</div>
				<!-- 추가용 버튼  시작-->
				<div style="padding-top: 3%; padding-left: 70%">
					<a href="<c:url value='healthinfoCategoryEdit.do'/>">
						<button type="button" class="btn btn-dark btn-fw">수정하기</button>
					</a>
				</div>
				<!-- 추가용 버튼  끝-->
			</div>
		</div>
	</div>
</div>
<div class="col-lg-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
			<h1>소아시력 카테고리 관련 글 목록</h1>
			<!-- 추가용 버튼  시작-->
			<div style="padding-bottom: 3%; padding-left: 80%">
				<a href="<c:url value='healthinfoWrite.do'/>">
					<button type="button" class="btn btn-outline-info btn-fw">
						<i class="mdi mdi-upload"></i>새로운 글 등록하기
					</button>
				</a>
			</div>
			<!-- 추가용 버튼  끝-->
			<br>
			
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th style="width:10%">#</th>
							<th style="width:60%">제목</th>
							<th style="width:30%">등록일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><a href="<c:url value='healthinfoView.do'/>">어린이 시력, 왜 약해 지나</a></td>							
							<td>May 15, 2015</td>
						</tr>
						<tr>
							<td>2</td>
							<td>제목</td>	
							<td>July 1, 2015</td>
						</tr>
						<tr>
							<td>3</td>
							<td>제목</td>	
							<td>Apr 12, 2015</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>