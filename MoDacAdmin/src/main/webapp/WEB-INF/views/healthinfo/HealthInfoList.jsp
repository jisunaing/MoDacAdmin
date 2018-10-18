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
							<th>카테고리 명</th>
							<th>설명</th>
							<th>이미지</th>
						</tr>
					</thead>
					<tbody>
						<tr class="table-info">
							<td>1</td>
							<td><a href="<c:url value='healthinfoCategoryView.do'/>">소아시력</a></td>
							<td>소아시력관련</td>
							<td>이미지</td>
						</tr>
						<tr class="table-warning">
							<td>2</td>
							<td>Messsy Adam</td>
							<td>Flash</td>
							<td>$245.30</td>
						</tr>
						<tr class="table-danger">
							<td>3</td>
							<td>John Richards</td>
							<td>Premeire</td>
							<td>$138.00</td>
						</tr>
						<tr class="table-success">
							<td>4</td>
							<td>Peter Meggik</td>
							<td>After effects</td>
							<td>$ 77.99</td>
						</tr>
						<tr class="table-primary">
							<td>5</td>
							<td>Edward</td>
							<td>Illustrator</td>
							<td>$ 160.25</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>

