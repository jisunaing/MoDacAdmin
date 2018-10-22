<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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
							<tr>
								<td>1</td>
								<td><a href="<c:url value='healthinfoCategoryView.do'/>">소아시력</a></td>
								<td>소아시력관련</td>
								<td>이미지</td>
							</tr>
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
									<%-- 
										<a href="<c:url value='NoticeView.do?no=${record.categno}'/>">${record.categname}</a>
									--%>
										${record.categname}
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

