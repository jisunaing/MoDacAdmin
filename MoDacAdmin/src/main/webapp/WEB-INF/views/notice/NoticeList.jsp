<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
</style>
	<div class="row">
		<div class="col-lg-12 grid-margin stretch-card">
		    <div class="card">
		      <div class="card-body">
		        <h4 class="card-title"><strong>공지사항</strong></h4>
		        <p class="card-description">
				<!-- 메시지작성하는곳~ --><br/>
		        </p>
		        <div class="table-responsive">
		          <table class="table table-hover">
		            <thead>
		              <tr>
		                <th>#</th>
		                <th>글제목</th>
		                <th>작성일</th>
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
									<td class="text-left">
										<a href="<c:url value='NoticeView.do?no=${record.no}'/>">${record.title }</a>
									</td>
									<td>${record.postdate}</td>
								</tr>
							</c:forEach>
						</c:if>
		            </tbody>
		          </table>
		        </div>
		      </div>
	       </div>
	    </div>
	</div>
	<!-- 아래는 페이징 -->
	<div class="row" style="text-align: center;margin-left: 50%;">
		<div>${pagingString}</div>
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
					<button type="submit" class="btn btn-primary">검색</button>
				</div>
				<div class="form-group">
					<a href="<c:url value='NoticeWriteForm.do'/>" id="btnInsert" class="btn btn-danger">새 공지 작성</a>
				</div>
			</form>
		</div>
	</div>
<!-- 내용 끝 -->