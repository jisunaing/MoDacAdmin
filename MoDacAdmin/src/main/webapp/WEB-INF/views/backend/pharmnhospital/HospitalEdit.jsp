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
      
      <form class="forms-sample" method="post" action="<c:url value='HospitalEditComplete.do?hosno=${requestScope.record.hosno}'/>">
        <div class="form-group row">
          <label for="hosname" class="col-sm-1 col-form-label">병원명</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="hosname" name="hosname" value="${requestScope.record.hosname}" placeholder="병원명을 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="hosphone" class="col-sm-1 col-form-label">연락처</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="hosphone" name="hosphone" value="${requestScope.record.hosphone}" placeholder="연락처를 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="hosaddr" class="col-sm-1 col-form-label">주소</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="hosaddr" name="hosaddr" value="${requestScope.record.hosaddr}" placeholder="주소를 입력하세요"/>
          </div>
        </div>
        
        <hr/> 
        
		<div class="row">
		   <label for="contact" class="col-md-1 col-form-label">진료과목</label>
           <div class="col-md-2">
             <div class="form-group">
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="가정의학과" <c:if test="${requestScope.family == '가정의학과'}">checked</c:if>  />가정의학과
                 </label>
               </div>
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="결핵과" <c:if test="${requestScope.tuberculosis == '결핵과'}">checked</c:if> /> 결핵과
                 </label>
               </div>
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="내과" <c:if test="${requestScope.medicine == '내과'}">checked</c:if> /> 내과
                 </label>
               </div>
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="마취통증의학과" <c:if test="${requestScope.anesthetic == '마취통증의학과'}">checked</c:if> /> 마취통증의학과
                 </label>
               </div>
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="비뇨의학과" <c:if test="${requestScope.urology == '비뇨의학과'}">checked</c:if> /> 비뇨의학과
                 </label>
               </div>
             </div>
          </div>
           <div class="col-md-2">
             <div class="form-group">
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="피부과" <c:if test="${requestScope.skin == '피부과'}">checked</c:if> /> 피부과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="산부인과" <c:if test="${requestScope.obstetrics == '산부인과'}">checked</c:if> /> 산부인과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="성형외과" <c:if test="${requestScope.plastic == '성형외과'}">checked</c:if> /> 성형외과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="소아청소년과" <c:if test="${requestScope.child == '소아청소년과'}">checked</c:if> /> 소아청소년과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="신경외과" <c:if test="${requestScope.nerve == '신경외과'}">checked</c:if> /> 신경외과
                 </label>
               </div>
             </div>
          </div>
           <div class="col-md-2">
            <div class="form-group">
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="안과" <c:if test="${requestScope.ophthalmology == '안과'}">checked</c:if> /> 안과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="영상의학과" <c:if test="${requestScope.imaging == '영상의학과'}">checked</c:if> /> 영상의학과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="외과" <c:if test="${requestScope.surgery == '외과'}">checked</c:if> /> 외과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="이비인후과" <c:if test="${requestScope.otorhinolaryngology == '이비인후과'}">checked</c:if>/> 이비인후과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="재활의학과" <c:if test="${requestScope.rehabilitation == '재활의학과'}">checked</c:if>/> 재활의학과
                 </label>
               </div>
             </div>
          </div>
           <div class="col-md-2">
             <div class="form-group">
               <div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="정신건강의학과" <c:if test="${requestScope.mental == '정신건강의학과'}">checked</c:if>/> 정신건강의학과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="정형외과" <c:if test="${requestScope.orthopedics == '정형외과'}">checked</c:if>/> 정형외과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="치과" <c:if test="${requestScope.dentist == '치과'}">checked</c:if>/> 치과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="한방과" <c:if test="${requestScope.oriental == '한방과'}">checked</c:if>/> 한방과
                 </label>
               </div>
             	<div class="form-check form-check-flat">
                 <label class="form-check-label">
                   <input type="checkbox" name="subject" class="form-check-input" value="흉부외과" <c:if test="${requestScope.thoracic == '흉부외과'}">checked</c:if>/> 흉부외과
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
            <input type="text" class="form-control" id="mon" name="mon" value="${requestScope.record.mon}" placeholder="09:00~18:00"/>
          </div>
       </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>화요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="tue" name="tue" value="${requestScope.record.tue}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>수요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="wed" name="wed" value="${requestScope.record.wed}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>목요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="thu" name="thu" value="${requestScope.record.thu}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>금요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="fri" name="fri" value="${requestScope.record.fri}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>토요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="sat" name="sat" value="${requestScope.record.sat}" placeholder="09:00~13:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>일요일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="sun" name="sun" value="${requestScope.record.sun}" placeholder="휴무"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>공휴일</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="holiday" name="holiday" value="${requestScope.record.holiday}" placeholder="휴무"/>
          </div>
        </div>
      
       <hr/> 
        
       <button type="submit" class="btn btn-success mr-2">수정하기</button>
      </form>
    </div>
  </div>
</div>
