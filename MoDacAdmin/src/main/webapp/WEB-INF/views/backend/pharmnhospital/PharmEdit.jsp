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
				alert("약국명을 입력하세요");
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
			if ($("#mon").val() == "") {
				alert("월요일 영업시간을 입력하세요");
				$("#mon").focus();
				return false;
			}
			if ($("#tue").val() == "") {
				alert("화요일 영업시간을 입력하세요");
				$("#tue").focus();
				return false;
			}
			if ($("#wed").val() == "") {
				alert("수요일 영업시간을 입력하세요");
				$("#wed").focus();
				return false;
			}
			if ($("#thu").val() == "") {
				alert("목요일 영업시간을 입력하세요");
				$("#thu").focus();
				return false;
			}
			if ($("#fri").val() == "") {
				alert("금요일 영업시간을 입력하세요");
				$("#fri").focus();
				return false;
			}
			if ($("#sat").val() == "") {
				alert("토요일 영업시간을 입력하세요");
				$("#sat").focus();
				return false;
			}
			if ($("#sun").val() == "") {
				alert("일요일 영업시간을 입력하세요");
				$("#sun").focus();
				return false;
			}
			if ($("#holiday").val() == "") {
				alert("공휴일 영업시간을 입력하세요");
				$("#holiday").focus();
				return false;
			}
		});
	});
</script>

<style>
	.card-title {
		font-size: 1.8em;
	
	}
</style>

 <div class="col-12 stretch-card">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title"><strong>약국 수정하기</strong></h4>
      <p class="card-description">
       	- 약국 상세정보를 수정합니다.
      </p>
      
      <hr/>
      
      <c:if test="${empty pharm}" var="isEmpty">
		<c:set var="no" value="${nightPharm.nphno}"/>
		<c:set var="addr" value="${nightPharm.nphaddr}"/>
		<c:set var="name" value="${nightPharm.nphname}"/>
		<c:set var="phone" value="${nightPharm.nphphone}"/>
		<c:set var="mon" value="${nightPharm.nphmon}"/>
		<c:set var="tue" value="${nightPharm.nphtue}"/>
		<c:set var="wed" value="${nightPharm.nphwed}"/>
		<c:set var="thu" value="${nightPharm.nphthu}"/>
		<c:set var="fri" value="${nightPharm.nphfri}"/>
		<c:set var="sat" value="${nightPharm.nphsat}"/>
		<c:set var="sun" value="${nightPharm.nphsun}"/>
		<c:set var="holiday" value="${nightPharm.npholiday}"/>
	  </c:if>
	  <c:if test="${not isEmpty}">
		<c:set var="no" value="${pharm.phno}"/>
		<c:set var="addr" value="${pharm.phaddr}"/>
		<c:set var="name" value="${pharm.phname}"/>
		<c:set var="phone" value="${pharm.phphone}"/>
		<c:set var="mon" value="${pharm.phmon}"/>
		<c:set var="tue" value="${pharm.phtue}"/>
		<c:set var="wed" value="${pharm.phwed}"/>
		<c:set var="thu" value="${pharm.phthu}"/>
		<c:set var="fri" value="${pharm.phfri}"/>
		<c:set var="sat" value="${pharm.phsat}"/>
		<c:set var="sun" value="${pharm.phsun}"/>
		<c:set var="holiday" value="${pharm.pholiday}"/>
	  </c:if>		        
      
      <c:if test="${empty pharm}" var="isEmpty">
      	<c:url var="url" value='PharmEditComplete.do?pharm=night&no=${no}'/>
      </c:if>
      <c:if test="${not isEmpty}">
      	<c:url var="url" value='PharmEditComplete.do?pharm=all&no=${no}'/>
      </c:if>
      
      <form class="forms-sample" method="post" action="${url}">
        <div class="form-group row">
          <label for="name" class="col-sm-1 col-form-label">약국명</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="name" name="name" value="${name}" placeholder="약국명을 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">연락처</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="phone" name="phone" value="${phone}" placeholder="연락처를 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="addr" class="col-sm-1 col-form-label">주소</label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="addr" name="addr" value="${addr}" placeholder="주소를 입력하세요"/>
          </div>
        </div>
        
       <hr/> 
       
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"></label>
          <div class="col-sm-3 col-form-label">
    	      <label for="contact" class="col-form-label">쉬는 요일은 <strong>휴무</strong>로 입력해주십시오.</label>
          </div>
        </div>
        
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">월요일</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="mon" name="mon" value="${mon}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">화요일</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="tue" name="tue" value="${tue}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">수요일</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="wed" name="wed" value="${wed}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">목요일</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="thu" name="thu" value="${thu}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">금요일</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="fri" name="fri" value="${fri}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">토요일</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="sat" name="sat" value="${sat}" placeholder="09:00~18:00"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">일요일</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="sun" name="sun" value="${sun}" placeholder="휴무"/>
          </div>
        </div>
       <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label">공휴일</label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="holiday" name="holiday" value="${holiday}" placeholder="휴무"/>
          </div>
        </div>
      
       <hr/> 
        
       <button type="submit" class="btn btn-success mr-2">수정하기</button>
      </form>
    </div>
  </div>
</div>
