<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- include libraries(jQuery, bootstrap) -->
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script>

<!-- include libraries(jQuery, bootstrap) -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 

<!-- include summernote css/js-->
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote.css" rel="stylesheet">
	
<style>
.navbar.default-layout{
	border:none;
	margin-bottom:0px;
	padding-bottom: 0px;
	
}
.navbar.default-layout .navbar-brand-wrapper .navbar-brand {
    color: #ffffff;
    font-size: 1.5rem;
    line-height: 48px;
    margin-right: 0;
    padding: 0.25rem 0;
    padding-top:15px;
    
}
.container-fluid .page-body-wrapper {
	margin-top:-100px;
	padding-top:-100px;
	width: 0%;
} 
</style>
<script>
//jQuery ui의 https://jqueryui.com/effect/참조함
$(function(){
	// $( ".stretch-card" ).effect( 'slide', {}, 1500 );	
    $('#summernote').summernote({
    	  height: 300,   //set editable area's height
    	  codemirror: { // codemirror options
    	    theme: 'monokai'
    	  }
   	});
});
</script>

<div class="col-md-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
			<h1>공지사항 등록</h1>
			<br>
			<form class="forms-sample" method="post" action="<c:url value='NoticeWrite.do'/>">
			<!-- 
				<div class="form-group">
					<label>이미지 업로드</label> <br>
					<input type="file" name="fileupload" value="fileupload" id="fileupload"> 
				</div>
			-->	
				<div class="form-group">
					<label for="exampleInputName1">제목</label> 
					<br/>
					<input type="text" name="title" class="form-control col-md-8"  placeholder="제목을 입력하세요">
					<br/>
				</div>
				<div class="form-group">
					<br/>
					<label for=".summernote">내용</label>
					<br/>
					<textarea name="content" id="summernote" placeholder="내용글 작성"></textarea>
<!-- 					<textarea class="form-control col-md-10" name="content" id="summernote"  style="height:auto;" placeholder="내용글 작성"></textarea> -->
				</div>
				<button type="submit" class="btn btn-success mr-2">등록하기</button>
			</form>	 	
		</div>
	</div>
</div>