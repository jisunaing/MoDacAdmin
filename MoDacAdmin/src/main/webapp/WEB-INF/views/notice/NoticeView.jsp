<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
th {
	width: 30%
}
td {
	width: 130%
}
img{
	width: 100%
}

</style>
<div class="col-lg-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
			<h1>공지사항 상세보기</h1>
			<br>
			<div class="table-responsive ">
				<div class="col-lg-10">
					<table class="table table-bordered table-hover">
						<tr>
							<th>#</th>
							<td>${record.no }</td>
						</tr>
						<tr>
							<th>글제목</th>
							<td>${record.title }</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>${record.postdate }</td>
						</tr>
						<tr>
							<th style="border-right: none">내용</th>
							<td style="border-left: none;"></td>
						</tr>
					</table>
				</div>
				<div class="col-lg-10" style="padding-top: 20px;padding-left: 20px;">
					${record.content }
				</div>
				<!-- 추가용 버튼  시작-->
				<div class="template-demo">
					<div style="padding-top: 3%; padding-left: 1%">
						<a href="<c:url value='NoticeEditForm.do?no=${record.no }'/>">
							<button type="button" class="btn btn-dark btn-fw">수정하기</button>
						</a>
						<a href="<c:url value='NoticeList.do'/>">
							<button type="button" class="btn btn-info btn-fw">공지목록</button>
						</a>
						<a href="<c:url value='NoticeDelete.do?no=${record.no }'/>">
							<button type="button" class="btn btn-warning btn-fw">삭제하기</button>
						</a>
					</div>
				</div>
				<!-- 추가용 버튼  끝-->
			</div>
		</div>
	</div>
</div>
