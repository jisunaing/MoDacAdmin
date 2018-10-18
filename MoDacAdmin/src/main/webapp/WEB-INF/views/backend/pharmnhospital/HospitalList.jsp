<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<style>
	.form-group {
		margin-right: 10px;	
	}
	.row {
		margin-bottom : 10px;
	}
	.card-title {
		font-size: 1.6em;
	}
	.paging {
		letter-spacing: 3px;
		text-align:center;
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
		                <th><strong>번호</strong></th>
		                <th><strong>병원명</strong></th>
		                <th><strong>전화번호</strong></th>
		                <th><strong>주소</strong></th>
		                <th><strong>제휴처리</strong></th>
		              </tr>
		            </thead>
		            <tbody>
		            <c:if test="${empty requestScope.records}" var="isEmpty">
		            	<tr>
		            		<td colspan="5"><strong>필요한 병원 정보를 먼저 입력하세요</strong>
		            	</tr>
		            </c:if>
		            <c:if test="${not isEmpty}">
		            	<c:forEach var="records" items="${requestScope.records}">
			              <tr>
			                <td>${records.hosno}</td>
			                <td><a href="<c:url value='HospitalView.do?hosno=${records.hosno}'/>">${records.hosname}</a></td>
			                <td>${records.hosphone}</td>
			                <td>${records.hosaddr}</td>
			                <td><a href="">제휴처리</a></td>
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
	<!-- 페이징 -->
	<div class="row">
		<div class="col-lg-12">
			<div class="paging">
				${pagingString}
			</div>
		</div>
	</div>
	<!-- 검색용 UI -->
	<div class="row">
		<div class="col-lg-12">
			<form class="form-inline" method="post"	action="<c:url value='HospitalSearch.do'/>">
				<div class="form-group">
					<select name="hosaddr" class="form-control">
						<option value="">지역 선택</option>
						<option value="강남구">강남구</option>
						<option value="강동구">강동구</option>
						<option value="강북구">강북구</option>
						<option value="강서구">강서구</option>
						<option value="관악구">관악구</option>
						
						<option value="광진구">광진구</option>
						<option value="구로구">구로구</option>
						<option value="금천구">금천구</option>
						<option value="노원구">노원구</option>
						<option value="도봉구">도봉구</option>
						
						<option value="동대문구">동대문구</option>
						<option value="동작구">동작구</option>
						<option value="마포구">마포구</option>
						<option value="서대문구">서대문구</option>
						<option value="서초구">서초구</option>
						
						<option value="성동구">성동구</option>
						<option value="성북구">성북구</option>
						<option value="송파구">송파구</option>
						<option value="양천구">양천구</option>
						<option value="영등포구">영등포구</option>
						
						<option value="용산구">용산구</option>
						<option value="은평구">은평구</option>
						<option value="종로구">종로구</option>
						<option value="중구">중구</option>
						<option value="중랑구">중랑구</option>
					</select>
				</div>
				<div class="form-group">
					<input type="text" name="hosname" class="form-control" placeholder="병원 이름을 입력하세요"/>
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