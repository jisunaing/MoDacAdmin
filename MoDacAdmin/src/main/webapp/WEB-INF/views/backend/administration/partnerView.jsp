<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.2.4/email.min.js"></script>


<style>


.form-box {
	background: #F6F6F6; 
	padding: 20px;
	width: 900px;
	height: 1060px;	
	margin: 0px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}


input{
	font-size: 22px;
	display: block;
	width: 100%;
	height: 100%;
	padding: 5px 10px;
	background: none; /* 밑 배경색 보여주기 위해 none 처리 */
	border: 1px solid #a0b3b0;
	color: black;
	border-radius: 0;
	-webkit-transition: border-color .25s ease, box-shadow .25s ease;
	transition: border-color .25s ease, box-shadow .25s ease;
	margin-top: 5px;
	margin-bottom: 5px;
}

textarea{
margin-top: 5px;
}


.sp{

	font-size: 1.3em;
	font-weight:bold;
	color: black;

}

#h2id{

 text-align: center;

}


</style>


		<!-- 내용 시작  -->
		<div class="container">
			<div class="row">
				<div class="form-box">

					<h2 id="h2id">
						병원 정보<small> 상세 보기</small>
					</h2>

					<div class="col-sm-12">
						<hr style="border: 1px dashed; margin-left: -16px;"
							class="col-sm-12" />
					</div> 
					<form action="<c:url value='PartnerDelete.do'/>" method="post" id="partnerDelete">
			<c:forEach var="partners" items="${partner}" varStatus="loop">
					<input type="hidden"  name="pid" id="pid"  value="${partners.PID}" >
					<input type="hidden"  name="hosno" id="hosno"  value="${partners.HOSNO}" >	
		
						<div class="form-group">
							<div class="col-sm-6">
								<div class="col-sm-8">
									<span class="sp">병원 명</span> 
									<input type="text" class="form-control" name="hosname" id="hosname" value="${partners.HOSNAME}" disabled>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-4 col-sm-pull-1">
								<div class="col-sm-12">
									<span class="sp">병원 연락처</span> 
									<input type="text" class="form-control" name="hosname" id="hosname" value="${partners.HOSNAME}" disabled>
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-10">
									<span class="sp">진료 과목</span>
									 <input	type="text" class="form-control" name="subjectlist" id="subjectlist" value="${subjectlist}" disabled>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-8">
									<span class="sp">병원 주소</span>
									 <input type="text" class="form-control" name="hosaddr" id="hosaddr" value="${partners.HOSADDR}" disabled>
								</div>
							</div>
						</div>



						<div class="form-group">

							<div class="col-sm-12">

								<div class="col-sm-12">
									<span class="sp" style="text-align: center;">진료 시간</span>
								</div>

								<div style="margin-left: 30px;" class="col-sm-5">
									월요일 <input type="text" class="form-control" name="mon" id="mon"
										value="${partners.MON}" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									화요일 <input type="text" class="form-control" name="tue" id="tue"
										value="${partners.TUE}" disabled>
								</div>

								<div style="margin-left: 30px;" class="col-sm-5">
									수요일 <input type="text" class="form-control" name="wed" id="wed"
										value="${partners.WED}" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									목요일 <input type="text" class="form-control" name="thu" id="thu"
										value="${partners.THU}" disabled>
								</div>
								<div style="margin-left: 30px;" class="col-sm-5">
									금요일 <input type="text" class="form-control" name="fri" id="fri"
										value="${partners.FRI}" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									토요일 <input type="text" class="form-control" name="sat" id="sat"
										value="${partners.SAT}" disabled>
								</div>
								<div style="margin-left: 30px;" class="col-sm-5">
									일요일 <input type="text" class="form-control" name="sun" id="sun"
										value="${partners.SUN}" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									공휴일 <input type="text" class="form-control" name="holiday" id="holiday"
										value="${partners.HOLIDAY}" disabled>
								</div>

								<div style="margin-left: 30px;" class="col-sm-5">
									점심시간 <input type="text" class="form-control" name="lunch" id="lunch"
										value="${partners.LUNCH}" disabled>
								</div>
								
							</div>
						</div>


						
						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-12">
									<span class="sp"><br/>병원 안내글</span>
									<textarea rows="10" class="form-control" id="info" name="info" disabled>${partners.INFO}</textarea>
								</div>
							</div>
						</div>
				</c:forEach>

						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-5 col-sm-offset-4">
						<button style="margin-top: 20px; margin-left: 28px;" type="button" class="btn btn-danger"  onclick="button_event();" >회원 삭제</button>
						<a href="<c:url value='PartnerList.do'/>"><button style=" margin-top: 20px; margin-left: 15px;" type="button" class="btn btn-primary">목록</button></a>
								
								</div>								
							</div>
						</div>
					
						<div class="col-sm-12">
							<hr style="border: 1px dashed; margin-left: -16px;" class="col-sm-12" />
						</div>

					</form>

				</div>

			</div>

		</div>
		<!-- 내용 끝 -->
		
	<script>
	

		function button_event(){
		if (confirm("정말 해당 회원님을 삭제하시겠습니까??") == true){    //확인
		   
			$("#partnerDelete").submit();
						
			
		}else{   //취소
		    return;
		}
		}////function
		

	</script>
