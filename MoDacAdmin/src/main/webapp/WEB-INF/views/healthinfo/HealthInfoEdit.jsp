<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
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

<link rel="stylesheet" href="<c:url value='css/summernotearea.css'/>">
<style>
	.form-control{
		border-width: 2px;
	}
</style> 
<script>
//jQuery ui의 https://jqueryui.com/effect/참조함
$(function(){
//	$( ".stretch-card" ).effect( 'slide', {}, 1500 );
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
		} // callbacks
	}); // $ summernote
});  // $ func

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
		 console.log(data.url);
		 console.log(data.fileName);
		 // 얻어온 이미지파일의 경로를 이용해서 에디터에 이미지 뿌려줌
		 console.log('summernote_img: '+"Upload/"+data.fileName);
		 $(el).summernote('editor.insertImage', "Upload/"+data.fileName);
      }
  });
} // func
</script>
<div class="col-md-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
			<h1>건강정보 상세내용 수정</h1>
			<br>
		<form class="forms-sample" action="<c:url value='healthinfoEdit.do?categno=${record.categno}&healthinfono=${record.healthinfono }'/>" method="post" >
				<input type="hidden" name="image" value='none'/>
				<input type="hidden" name="hinfo" value="hinfo"/> 
				<div class="form-group">
					<label for="exampleInputName1">제목</label>
					<br/>
					<input type="text" name="title" class="form-control col-md-8"  placeholder="${record.title }" value="${record.title }">
					<br/>
				</div>
				<div class="form-group">
					<br/>
					<label for=".summernote">내용</label>
					<br/>
					<textarea name="content" id="summernote" placeholder="${record.content }">${record.content }</textarea>
				</div>
				<button type="submit" class="btn btn-success mr-2">수정완료</button>
			</form>
		</div>
	</div>
</div>