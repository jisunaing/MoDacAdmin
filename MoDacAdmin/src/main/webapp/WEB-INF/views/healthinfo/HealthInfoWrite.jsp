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
			<h1>건강정보 글 등록</h1>
			<br>
			<form class="forms-sample">
				<div class="form-group">
					<label for="exampleInputName1">제목</label> 
					<input type="text" class="form-control col-md-4" id="exampleInputName1" placeholder="제목을 입력하세요" >
				</div>
				<div class="form-group">
					<label for="exampleTextarea1">내용</label>
					<textarea class="form-control col-md-10" id="exampleTextarea1" rows="20" placeholder="내용을 입력하세요">
						
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