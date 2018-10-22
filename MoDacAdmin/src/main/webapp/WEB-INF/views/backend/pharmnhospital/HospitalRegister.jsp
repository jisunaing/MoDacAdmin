<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script>
/* 유효성 체크 */
	$(function() {
		$('form').on('submit', function() {
			if ($("#name").val() == "") {
				alert("병원명을 입력하세요");
				$("#name").focus();
				return false;
			}
			if ($("#phone").val() == "") {
				alert("연락처를 입력하세요");
				$("#phone").focus();
				return false;
			}
			if ($("#addr").val() == "") {
				alert("주소를 입력하세요");
				$("#addr").focus();
				return false;
			}
			if ($("input:checkbox[name='subject']").is(":checked") == false) {
				alert("진료과목을 한 개 이상 선택하세요");
				return false;
			}
			if ($("#mon").val() == "") {
				alert("월요일 진료시간을 입력하세요");
				$("#mon").focus();
				return false;
			}
			if ($("#tue").val() == "") {
				alert("화요일 진료시간을 입력하세요");
				$("#tue").focus();
				return false;
			}
			if ($("#wed").val() == "") {
				alert("수요일 진료시간을 입력하세요");
				$("#tue").focus();
				return false;
			}
			if ($("#thu").val() == "") {
				alert("목요일 진료시간을 입력하세요");
				$("#tue").focus();
				return false;
			}
			if ($("#fri").val() == "") {
				alert("금요일 진료시간을 입력하세요");
				$("#fri").focus();
				return false;
			}
			if ($("#sat").val() == "") {
				alert("토요일 진료시간을 입력하세요");
				$("#sat").focus();
				return false;
			}
			if ($("#sun").val() == "") {
				alert("일요일 진료시간을 입력하세요");
				$("#sun").focus();
				return false;
			}
			if ($("#holiday").val() == "") {
				alert("공휴일 진료시간을 입력하세요");
				$("#holiday").focus();
				return false;
			}
		});
	});
</script>

<style>
	.card-title {
		font-size: 1.6em;
	}
</style>

 <div class="col-12 stretch-card">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title"><strong>병원 등록하기</strong></h4>
      <p class="card-description">
       	- 새로운 병원을 등록합니다.
      </p>
      
      <hr/>
      
      <form class="forms-sample" method="post" action="<c:url value='HospitalRegistComplete.do'/>">
        <div class="form-group row">
          <label for="name" class="col-sm-1 col-form-label"><strong>병원명</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="name" name="name" placeholder="병원명을 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="phone" class="col-sm-1 col-form-label"><strong>연락처</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="phone" name="phone" placeholder="연락처를 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="addr" class="col-sm-1 col-form-label"><strong>주소</strong></label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="addr" name="addr" placeholder="주소를 입력하세요"/>
          </div>
        </div>
        
        <hr/> 
        
		<div class="row">
		   <label for="contact" class="col-md-1 col-form-label"><strong>진료과목</strong></label>
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
       	  <label for="contact" class="col-sm-1 col-form-label"></label>
          <div class="col-sm-2 col-form-label">
    	      <label for="contact" class="col-form-label">쉬는 요일은 <strong>휴무</strong>로 입력해주십시오.</label>
          </div>
        </div>
        
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>월요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="mon" name="mon" placeholder="09:00~18:00"/>
          </div>
       </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>화요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="tue" name="tue" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>수요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="wed" name="wed" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>목요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="thu" name="thu" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>금요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="fri" name="fri" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>토요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="sat" name="sat" placeholder="09:00~13:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>일요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="sun" name="sun" placeholder="휴무"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>공휴일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="holiday" name="holiday" placeholder="휴무"/>
          </div>
        </div>
      
       <hr/> 
        
       <button type="submit" class="btn btn-success mr-2">등록하기</button>
      </form>
    </div>
  </div>
</div>
