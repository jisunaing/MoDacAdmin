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
							<th>제목</th>
							<td>소아시력</td>
						</tr>
						<tr>
							<th>등록일</th>
							<td>2018-10-01</td>
						</tr>
						<tr>
							<th>내용</th>
							<td>
								<p>
								자녀 손을 잡고 안과를 처음 찾은 때가 언제였는가? 자녀가 칠판 글씨가 잘 보이지 않는다고 호소해야
								겨우 안과를 찾았는가?<br> 그런 경우에도 안과에는 들르지 않고 안경점으로 가 안경 맞춰주기에 급급했는가? 자녀가<br>
								초등학교에 들어간 뒤에야 안과를 찾는다면 70점, 자녀에게 첫 안경을 맞춰줄 때조차 안과를 거치지 않고 안경점으로
								직행하는 부모라면 50점도 채 못 받을 것이다. <br>자녀의 눈 건강 관리 항목에서는 말이다. 아이들의 눈 건강이 점점<br>
								나빠지고 있다. <br>대한안과학회에서 서울․충북 지역 어린이 2천9백72명(만3~6세)의 눈 질환을 정밀 검사한 결과,
								
								</p>
							</td>
						</tr>
						<tr>
							<th>이미지</th>
							<td>XXX.png</td>
						</tr>
					</table>
				</div>
				<!-- 추가용 버튼  시작-->
				<div style="padding-top: 3%; padding-left: 80%">
					<a href="<c:url value='healthinfoEdit.do'/>">
						<button type="button" class="btn btn-dark btn-fw">수정하기</button>
					</a>
				</div>
				<!-- 추가용 버튼  끝-->
			</div>
		</div>
	</div>
</div>
