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
			<h1>건강정보 카테고리 수정</h1>
			<br>
			<form class="forms-sample" action="<c:url value='healthinfoCategoryView.do'/>">
				<div class="form-group">
					<label for="exampleInputName1">카테고리 명</label> 
					<input type="text" class="form-control col-md-4" id="exampleInputName1" placeholder="카테고리 명을 입력하세요" value="소아시력">
				</div>
				<div class="form-group">
					<label for="exampleTextarea1">설명</label>
					<textarea class="form-control col-md-6" id="exampleTextarea1" rows="2" placeholder="간단한 설명을 입력하세요">설명입니다</textarea>
				</div>
				<div class="form-group">
					<!-- 파일명 저장안되는데 어쩜?! -->
					<label>이미지 업로드</label> <br>
					<input type="file" name="fileupload" value="fileupload" id="fileupload"> 
				</div>
				<button type="submit" class="btn btn-success mr-2">수정하기</button>
				
			</form>
		</div>
	</div>
</div>