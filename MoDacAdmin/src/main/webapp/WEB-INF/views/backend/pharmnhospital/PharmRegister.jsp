<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=86b3c01c90f39e52ac7267db068b72c3&libraries=services,clusterer,drawing"></script>
<script>
/* 유효성 체크 */
$(function() {
      
      $('#addr').keyup(function(){
         var geocoder = new daum.maps.services.Geocoder();
         var address = document.getElementById('addr').value;
         
         geocoder.addressSearch(address, function(result, status) {
            
              if (status === daum.maps.services.Status.OK) {
	             var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	             $('#message').css('color','green').html('해당 주소는 지도상에 표시할 수 있습니다.');  
	             $('#lat').val(coords.getLat());
	             $('#lng').val(coords.getLng());
             } else {
            	 $('#message').css('color','red').html('해당 주소는 지도상에 표시할 수 없습니다.');
            	 $('#lat').val('nopos');
	             $('#lng').val('nopos');
             } 
         });
      });
      
      var geocoder = new daum.maps.services.Geocoder();
      var address = document.getElementById('addr').value;
      
      geocoder.addressSearch(address, function(result, status) {
           if (status === daum.maps.services.Status.OK) {
	            var coords = new daum.maps.LatLng(result[0].y, result[0].x);
	            $('#lat').val(coords.getLat());
	            $('#lng').val(coords.getLng());
          } else {
        	    $('#lat').val('nopos');
                $('#lng').val('nopos');
          }
      });
   		
      $('button').on('click', function() {
            
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
      font-size: 1.6em;
   
   }
</style>

 <div class="col-12 stretch-card">
  <div class="card">
    <div class="card-body">
      <h4 class="card-title"><strong>약국 등록하기</strong></h4>
      <p class="card-description">
          - 새로운 약국을 등록합니다.
      </p>
      
      <hr/>
      
      <form class="forms-sample" method="post" action="<c:url value='PharmRegistComplete.do'/>">
        <div class="form-group row">
          <label for="name" class="col-sm-1 col-form-label"><strong>약국명</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="name" name="name" placeholder="약국명을 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="contact" class="col-sm-1 col-form-label"><strong>연락처</strong></label>
          <div class="col-sm-2">
            <input type="text" class="form-control" id="phone" name="phone" placeholder="연락처를 입력하세요"/>
          </div>
        </div>
        <div class="form-group row">
          <label for="addr" class="col-sm-1 col-form-label"><strong>주소</strong></label>
          <div class="col-sm-6">
            <input type="text" class="form-control" id="addr" name="addr" placeholder="주소를 입력하세요"/><span id="message"></span>
            <input type="hidden" id="lat" name="lat"/>
            <input type="hidden" id="lng" name="lng"/>
          </div>
        </div>
        
       <hr/> 
       
       <div class="form-group row">
              <label for="addr" class="col-sm-1 col-form-label"><strong>약국종류</strong></label>
              <div class="col-sm-6">
                 <div class="form-radio">
                <label class="form-check-label">
                  <input type="radio" name="pharm" class="form-check-input" value="all" checked> 일반약국
                </label>
               </div>
                 <div class="form-radio">
                <label class="form-check-label">
                <input type="radio" name="pharm" class="form-check-input" value="night"> 심야약국                 
                </label>
               </div>
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