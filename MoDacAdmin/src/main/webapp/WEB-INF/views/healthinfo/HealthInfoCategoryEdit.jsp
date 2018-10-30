<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<link rel="stylesheet" href="<c:url value='css/filebox.css'/>">

<!-- 파일 미리보기 추가 부분 -->
<script>
function getThumbnailPrivew(html, $target) {
    if (html.files && html.files[0]) {
        var reader = new FileReader();
        reader.onload = function (e) {
            $target.css('display', '');
            //$target.css('background-image', 'url(\"' + e.target.result + '\")'); // 배경으로 지정시
            $target.html('<img id="img_resize" src="' + e.target.result + '" border="0" alt="" />');
        }
        reader.readAsDataURL(html.files[0]);
        console.log('html.files[0]: '+html.files[0]);
    }
}
</script>
<div class="col-md-12 grid-margin stretch-card">
	<div class="card">
		<div class="card-body">
			<h1>건강정보 카테고리 수정</h1>
			<br>
			<form class="forms-sample" action="ImageUpload.jsp" method="post" enctype="multipart/form-data" >
				<input type="hidden" name="hinfo" value="categoryEdit"/>
				<input type="hidden" name="categno" value="${record.categno }"/>
				<input type="hidden" name="categimage" value="${record.categimage }"/>
				<div class="form-group">
					<label for="exampleInputName1">카테고리명</label> 
					<input type="text" class="form-control col-md-4" id="exampleInputName1" placeholder="${record.categname }" value="${record.categname }" name="categname">
				</div>
				<div class="form-group">
					<label for="exampleTextarea1">설명</label>
					<textarea class="form-control col-md-6" id="exampleTextarea1" rows="2" placeholder="${record.explanation }" name="explanation">${record.explanation }</textarea>
				</div>
				<div class="form-group" >
					<div class="filebox">
						<label for="fileupload">이미지 업로드</label> <br>
						<input type="file" name="fileupload" value="fileupload" id="fileupload" accept="image/*" capture="camera" onchange="getThumbnailPrivew(this,$('#cma_image'))"/> 
					</div>
					<div class="cma_image" id="cma_image" style="width:100%;max-width:100%;border:none;/* display:none; */">
						<!-- 이미지들어갈 div style속성 빼면 이미지 미리보기 안됨 -->
						${record.categimage }
					</div>
				</div>
				<button type="submit" class="btn btn-success mr-2">수정하기</button>
			</form>
		</div>
	</div>
</div>