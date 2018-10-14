<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script>
/* 유효성 체크 */
/*
	$(function() {
		$('form').on('submit', function() {
			if ($("#name").val() == "") {
				alert("약국명을 입력하세요");
				$("#name").focus();
				return false;
			}
			if ($("#contact").val() == "") {
				alert("연락처를 입력하세요");
				$("#contact").focus();
				return false;
			}
			if ($("#addr").val() == "") {
				alert("주소를 입력하세요");
				$("#addr").focus();
				return false;
			}
			if ($("#pass").val() == "") {
				alert("비밀번호를 입력하세요");
				$("#pass").focus();
				return false;
			}
			if ($("#monopen").val() == "") {
				alert("월요일 오픈시간을 선택하세요");
				$("#monopen").focus();
				return false;
			}
			if ($("#monclose").val() == "") {
				alert("월요일 마감시간을 선택하세요");
				$("#monclose").focus();
				return false;
			}
			if ($("#tueopen").val() == "") {
				alert("화요일 오픈시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#tueclose").val() == "") {
				alert("화요일 마감시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#wedopen").val() == "") {
				alert("수요일 오픈시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#wedclose").val() == "") {
				alert("수요일 마감시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#thuopen").val() == "") {
				alert("목요일 오픈시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#thuclose").val() == "") {
				alert("목요일 마감시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#friopen").val() == "") {
				alert("금요일 오픈시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#friclose").val() == "") {
				alert("금요일 마감시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#satopen").val() == "") {
				alert("토요일 오픈시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#satclose").val() == "") {
				alert("토요일 마감시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#sunopen").val() == "") {
				alert("일요일 오픈시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#sunclose").val() == "") {
				alert("일요일 마감시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#holiopen").val() == "") {
				alert("공휴일 오픈시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
			if ($("#holiclose").val() == "") {
				alert("공휴일 마감시간을 선택하세요");
				$("#tueopen").focus();
				return false;
			}
		});
	});
*/
</script>

<style>
	.card-title {
		font-size: 1.8em;
	
	}
</style>

 <div class="col-12 stretch-card">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title"><strong>병원 수정하기</strong></h4>
      <p class="card-description">
       - 병원 상세정보를 수정합니다.
      </p>
      
      <hr/>
      
      <form class="forms-sample" method="post" action="<c:url value='HospitalEditComplete.do'/>">
        <div class="form-group row">
          <label for="name" class="col-sm-1 col-form-label">병원명</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="name" name="name" placeholder="병원명을 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">연락처</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="contact" name="contact" placeholder="연락처를 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="addr" class="col-sm-1 col-form-label">주소</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="addr" name="addr" placeholder="주소를 입력하세요"/>
          </div>
        </div>
        
        <hr/> 
        
		<div class="row">
		   <label for="contact" class="col-md-1 col-form-label">진료과목</label>
           <div class="col-md-2">
             <div class="form-group">
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="가정의학과">가정의학과
                 </label>
               </div>
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="결핵과"> 결핵과
                 </label>
               </div>
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="내과"> 내과
                 </label>
               </div>
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="마취통증의학과"> 마취통증의학과
                 </label>
               </div>
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="비뇨의학과"> 비뇨의학과
                 </label>
               </div>
             </div>
          </div>
           <div class="col-md-2">
             <div class="form-group">
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="피부과"> 피부과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="산부인과"> 산부인과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="성형외과"> 성형외과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="소아청소년과"> 소아청소년과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="신경외과"> 신경외과
                 </label>
               </div>
             </div>
          </div>
           <div class="col-md-2">
            <div class="form-group">
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="안과"> 안과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="영상의학과"> 영상의학과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="외과"> 외과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="이비인후과"> 이비인후과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="재활의학과"> 재활의학과
                 </label>
               </div>
             </div>
          </div>
           <div class="col-md-2">
             <div class="form-group">
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="정신건강의학과"> 정신건강의학과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="정형외과"> 정형외과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="치과"> 치과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="한방과"> 한방과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="흉부외과"> 흉부외과
                 </label>
               </div>
             </div>
          </div>
       </div>
       
       <hr/> 
       
	   <div class="form-group row">
          <label for="contact" class="col-sm-10 col-form-label">진료시간
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          [ 쉬는 요일은 OPEN과 CLOSE를 '휴무'로 입력해주세요 ]</label>
       </div>
	   
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"></label>
          <div class="col-sm-1 col-form-label">
    	      <label for="contact" class="col-form-label">[ OPEN ]</label>
          </div>
          <div class="col-sm-1 col-form-label">
	          <label for="contact" class="col-form-label">[ CLOSE ]</label>
          </div>
        </div>
        
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">월요일</label>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="monopen" name="monopen" placeholder="09:00"/>
          </div>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="monclose" name="monclose" placeholder="18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">화요일</label>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="tueopen" name="tueopen" placeholder="09:00"/>
          </div>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="tueclose" name="tueclose" placeholder="18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">수요일</label>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="wedopen" name="wedopen" placeholder="09:00"/>
          </div>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="wedclose" name="wedclose" placeholder="24:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">목요일</label>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="thuopen" name="thuopen" placeholder="09:00"/>
          </div>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="thuclose" name="thuclose" placeholder="18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">금요일</label>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="friopen" name="friopen" placeholder="09:00"/>
          </div>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="friclose" name="friclose" placeholder="18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">토요일</label>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="satopen" name="satopen" placeholder="09:00"/>
          </div>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="satclose" name="satclose" placeholder="13:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">일요일</label>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="sunopen" name="sunopen" placeholder="휴무"/>
          </div>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="sunclose" name="sunclose" placeholder="휴무"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">공휴일</label>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="holiopen" name="holiopen" placeholder="휴무"/>
          </div>
          <div class="col-sm-1">
            <input type="text" class="form-control" id="holiclose" name="holiclose" placeholder="휴무"/>
          </div>
        </div>
      
       <hr/> 
        
       <button type="submit" class="btn btn-success mr-2">수정하기</button>
      </form>
    </div>
  </div>
</div>
