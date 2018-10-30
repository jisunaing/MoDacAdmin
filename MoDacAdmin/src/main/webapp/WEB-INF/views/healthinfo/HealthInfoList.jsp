<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>

<style>
.form-group {
	padding-right: 5px;
}
.row .row,.stretch-card {
	padding-left: 2%;
	padding-top: 10px;
}
</style>

<div class="row">
	<div class="col-lg-12 stretch-card">
		<div class="card">
			<div class="card-body">
				<h1>프론트엔드 메인의 건강정보 목록</h1>
				<!-- 추가용 버튼  시작-->
				<div style="padding-bottom: 3%; padding-left: 80%">
					<a href="<c:url value='healthinfoCategoryCreate.do'/>">
						<button type="button" class="btn btn-outline-info btn-fw">
							<i class="mdi mdi-upload"></i>새로운 카테고리 등록하기
						</button>
					</a>
				</div>
				<!-- 추가용 버튼  끝-->
				<div class="table-responsive">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>이미지</th>
								<th style="width: 40%">카테고리 명</th>
								<th style="width: 50%">설명</th>
							</tr>
						</thead>
						<tbody>
				            <c:if test="${empty requestScope.list }" var="isEmpty">
								<tr>
									<td colspan="4">등록된 게시물이 없어요</td>
								</tr>
							</c:if>
							<c:if test="${not isEmpty }">
								<c:forEach var="record" items="${list}" varStatus="loop">
									<tr>
										<td>${totalRecordCount - (((nowPage - 1) * pageSize) + loop.index)}</td>
										<td>${record.categimage}</td>
										<td class="text-left">
											<a href="<c:url value='healthinfoCategoryView.do?categno=${record.categno}'/>">
												${record.categname}
											</a>
										</td>
										<td>${record.explanation }</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
			<div class="card-body" style="text-align: center;">
				<div>${pagingString}</div>
			</div>
		</div>	
	</div>

	<!-- 검색용 UI -->
	<div class="row" style="width: 100%">
		<div class="col-lg-12">
			<form class="form-inline" method="post"	action="<c:url value='#'/>">
				<div class="form-group">
					<select name="searchColumn" class="form-control" >
						<option value="title">제목</option>
						<option value="content">내용</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" name="searchWord" class="form-control" />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">카테고리검색</button>
				</div>
			</form>
		</div>
	</div>
</div>