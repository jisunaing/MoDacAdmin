<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<c:url value='css/imagespace.css'/>" rel="stylesheet">
<style>

.form-group {
	padding-left: 2%;
	padding-right: 5px;
}
</style>
<div class="row">
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<c:if test="${not empty alertmsg }">
					<script>
						alert('${alertmsg}');
						history.go(-2);
					</script>
				</c:if>
				<h1>건강정보 카테고리 상세보기</h1>
				<br>
				<div class="table-responsive">
					<div class="col-lg-10">
						<table class="table table-bordered">
							<tr>
								<th>카테고리명</th>
								<td>${record.categname}</td>
							</tr>
							<tr>
								<th>설명</th>
								<td>${record.explanation }</td>
							</tr>
							<tr>
								<td style="font-weight: bold" colspan="2">이미지</th>
							</tr>
						</table>
						<div id="imagespace">
							${record.categimage}
						</div>
					</div>
	
					<div style="padding-top: 3%; padding-left: 1%">
						<!-- 추가용 버튼  시작-->
						<a href="<c:url value='healthinfoCategoryEdit.do?categno=${record.categno}'/>">
							<button type="button" class="btn btn-dark btn-fw">수정하기</button>
						</a>
						<!-- 추가용 버튼  끝-->
						<!-- list_btn~ -->
						<a href="<c:url value='healthinfoList.do'/>">
							<button type="button" class="btn btn-dark btn-fw">목록으로</button>
						</a>
						<!-- ~list_btn -->
						<!-- del_btn~ -->
						<a href="<c:url value='healthinfoDelete.do?cateno=${record.categno }'/>">
							<button type="button" class="btn btn-dark btn-fw">삭제하기</button>
						</a>
						<!-- ~del_btn -->
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="col-lg-12 grid-margin stretch-card">
		<div class="card">
			<div class="card-body">
				<h1>소아시력 카테고리 관련 글 목록</h1>
				<br>
				<div class="table-responsive">
					<div style="padding-bottom: 3%; padding-left: 80%; padding-right: 1px;">
						<a href="<c:url value='healthinfoWriteForm.do?categno=${record.categno}'/>">
							<button type="button" class="btn btn-outline-info btn-fw">
								<i class="mdi mdi-upload"></i>새로운 글 등록하기
							</button>
						</a>
					</div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th style="width:10%">#</th>
								<th>이미지</th>
								<th style="width:60%">제목</th>
								<th style="width:30%">등록일</th>
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
										<td>
											<c:if test="${empty record.image}" var="noImage">
												<img id="img_resize" src="<c:url value='images/logo2.png'/>"/>
											</c:if>
											<c:if test="${not noImage}">
												${record.image}
											</c:if>
										</td>
										<td class="text-left">
											<a href="<c:url value='healthinfoView.do?healthinfono=${record.healthinfono }&categno=${record.categno}'/>">
												${record.title}
											</a>
										</td>
										<td>${record.postdate }</td>
									</tr>
								</c:forEach>
							</c:if>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- 검색용 UI -->
	<div class="row">
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
					<button type="submit" class="btn btn-primary">건강정보글검색</button>
				</div>
			</form>
		</div>
	</div>
</div>