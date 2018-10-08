<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
	.form-control{
		border-width: 2px;
	}
</style> 
<div class="col-md-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
			<h1>건강정보 상세내용 수정</h1>
			<br>
			<form class="forms-sample" action="<c:url value='healthinfoView.do'/>">
				<div class="form-group">
					<label for="exampleInputName1">제목</label> 
					<input type="text" class="form-control col-md-4" id="exampleInputName1" placeholder="제목을 입력하세요" value="어린이 시력, 왜 약해 지나">
				</div>
				<div class="form-group">
					<label for="exampleTextarea1">내용</label>
					<textarea class="form-control col-md-10" id="exampleTextarea1" rows="20" placeholder="내용을 입력하세요">
						자녀 손을 잡고 안과를 처음 찾은 때가 언제였는가?
						자녀가 칠판 글씨가 잘 보이지 않는다고 호소해야 겨우 안과를 찾았는가?
						그런 경우에도 안과에는 들르지 않고 안경점으로 가 안경 맞춰주기에 급급했는가?
						자녀가 초등학교에 들어간 뒤에야 안과를 찾는다면 70점, 자녀에게 첫 안경을 맞춰줄 때조차 안과를 거치지 않고 안경점으로 직행하는 부모라면 50점도 채 못 받을 것이다. 자녀의 눈 건강 관리 항목에서는 말이다.
						
						아이들의 눈 건강이 점점 나빠지고 있다. 대한안과학회에서 서울․충북 지역 어린이 2천9백72명(만3~6세)의 눈 질환을 정밀 검사한 결과, 굴절 이상이 75.3%로 가장 많았다. 약시 18.3%, 사시 7.4%, 백내장과 같은 전안부 이상이 
					</textarea>
				</div>
				<div class="form-group">
					<!-- 파일명 저장안되는데 어쩜?! -->
					<label>이미지</label> <br>
					<input type="file" name="fileupload" value="fileupload" id="fileupload"> 
				</div>
				<button type="submit" class="btn btn-success mr-2">등록하기</button>
				
			</form>
		</div>
	</div>
</div>