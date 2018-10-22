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
/* 섬머노트 때문에 깨지는 부분 수정 */
.navbar.default-layout .navbar-brand-wrapper .navbar-brand {
    color: #ffffff;
    font-size: 1.5rem;
    line-height: 48px;
    margin-right: 0;
    padding: 0.25rem 0;
    height: 100%;
    width: auto
}
/* 아래 테스트용 적용 잘안됨 */
/* .container-fluid .page-body-wrapper { */
/* 	margin-top:-100px; */
/* 	padding-top:-100px; */
/* 	width: 0%; */
/* }  */
.container-scroller{
/*  	padding-top:-500px;  */
 	margin-top:-170px;
}
#topnav{
/*  	padding-top:1000px;  */
/*  	margin-top: 100px  */
}
img{
	max-width:1200px;
	height:auto;
}
</style>
<script>
//jQuery ui의 https://jqueryui.com/effect/참조함
$(function(){
// 	$( ".stretch-card" ).effect( 'slide', {}, 1500 );
	
    $('#summernote').summernote({
   	  height: 300,  //set editable area's height
   	  lang: 'ko-KR',
   	  fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
		fontNamesIgnoreCheck : [ '맑은고딕' ],
		focus: true,
			
		callbacks: {
			onImageUpload: function(files, editor, welEditable) {
	            for (var i = files.length - 1; i >= 0; i--) {
	            	sendFile(files[i], this);
	            }
	        }
		}
   	});

});///////////////////

function sendFile(file, el) {
    // 파일 전송을 위한 폼생성
	data = new FormData();
    data.append("uploadFile", file);
    $.ajax({ // ajax를 통해 파일 업로드 처리
        data : data,
        type : "POST",
        url : "ImageUpload.jsp",
        cache : false,
        contentType : false,
        enctype: 'multipart/form-data',
        processData : false,
        success : function(data) { // 처리가 성공할 경우
              // 에디터에 이미지 출력
//         	$(editor).summernote('editor.insertImage', data.url);
//         	editor.summernote(welEditable, data.url);
		 console.log(data.url);
		 console.log(data.fileName);
		 
//          $(el).summernote('editor.insertImage', data.url);
		 $(el).summernote('editor.insertImage', "Upload/"+data.fileName);
// 	     $('#imageBoard > ul').append('<li><img src="'+data.fileName+'" width="480" height="auto"/></li>');
        }
//  success: function(url) {
//  $(el).summernote('editor.insertImage', url);
//  $('#imageBoard > ul').append('<li><img src="'+url+'" width="480" height="auto"/></li>');
//}
    });
} // func
</script>
<%@include file="/WEB-INF/template/Top.jsp" %>
<div class="col-md-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
				<h4 style="font-family: monospace;"><strong>공지사항 등록</strong></h4>
			<br>
			<form class="forms-sample" method="post" action="<c:url value='NoticeWrite.do'/>">
				<input type="hidden" name="writer" value="<%=session.getAttribute("mid") %>"/>
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
					<!-- 
						<textarea class="form-control col-md-10" name="content" id="summernote"  style="height:auto;" placeholder="내용글 작성"></textarea> 
					-->
				</div>
				<button type="submit" class="btn btn-success mr-2">등록하기</button>
			</form>	 	
		</div>
	</div>
</div>