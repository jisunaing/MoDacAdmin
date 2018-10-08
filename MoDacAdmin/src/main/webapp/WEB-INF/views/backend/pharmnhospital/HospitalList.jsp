<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link href="<c:url value='/Bootstrap/css/bootstrap.min.css'/>" rel="stylesheet">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>

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
		        <h4 class="card-title"><strong>일반병원 목록</strong></h4>
		        <p class="card-description">
				- 우측 하단에 '일반병원 등록'버튼을 클릭하면 새로운 병원을 등록하실 수 있습니다. <br/>
				- 병원명을 클릭하면 해당 병원의 상세정보를 확인하실 수 있습니다.
		        </p>
		        <div class="table-responsive">
		          <table class="table table-hover">
		            <thead>
		              <tr>
		                <th>번호</th>
		                <th>병원명</th>
		                <th>전화번호</th>
		                <th>주소</th>
		              </tr>
		            </thead>
		            <tbody>
		              <tr>
		                <td>2</td>
		                <td><a href="<c:url value='HospitalView.do?no=1'/>">병원이름 입니다</a></td>
		                <td>010-1234-1234</td>
		                <td>주소가 들어갑니다.. 주소가 들어갑니다..</td>
		              </tr>
		              <tr>
		                <td>1</td>
		                <td><a href="<c:url value='HospitalView.do?no=2'/>">병원이름 입니다</a></td>
		                <td>010-1234-1234</td>
		                <td>주소가 들어갑니다.. 주소가 들어갑니다..</td>
		              </tr>
		            </tbody>
		          </table>
		        </div>
		      </div>
	       </div>
	    </div>
	</div>
	<!-- 아래는 페이징 -->
	<div class="row">
		<div>${pagingString}</div>
	</div>
	<!-- 검색용 UI -->
	<div class="row">
		<div class="col-lg-12">
			<form class="form-inline" method="post"	action="<c:url value='#'/>">
				<div class="form-group">
					<select name="searchColumn" class="form-control">
						<option value="name">병원명</option>
						<option value="address">주소</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" name="searchWord" class="form-control" />
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">검색</button>
				</div>
				<div class="form-group">
					<a href="<c:url value='HospitalRegister.do'/>" id="btnInsert" class="btn btn-danger">일반병원 등록</a>
				</div>
			</form>
		</div>
	</div>
<!-- 내용 끝 -->