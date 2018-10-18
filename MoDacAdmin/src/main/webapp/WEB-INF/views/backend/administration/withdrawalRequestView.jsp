<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.2.4/email.min.js"></script>


<style>
   
html { overflow-y: scroll; }

body {	
	font-family:sans-serif;
	
	background-repeat: no-repeat;
	background-size: 90%	
		
}


li {list-style:none;} 



.form-box {
	background: #F6F6F6; 
	padding: 20px;
	width: 900px;
	height: 700px;	 
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}

textarea{

margin-top: 5px;

}



input{

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
	margin-bottom: 10px;
	margin-top: 5px;
}



.sp{

	font-size: 1.3em;
	font-weight:bold;
	color: black;
	

}
    </style>
</head>

	<script>
	
	$(function() {
		
		$("#okbutton").click(function() {
					
			
			  var template_params = {
					   "send_email": $('#pemail').val(),
					   "pid": $('#pid').val()
					}

					var service_id = "default_service";
					var template_id = "out";
					emailjs.init("user_3wBofPIGcH4YvLkUkGRgV");
					emailjs.send(service_id,template_id,template_params);
					
					
					$("#outstart").submit();
			
		});
		
	})
	
	</script>



<body>

	<div class="content-wrapper">

		<div class="container">
			<div class="row">
				<div class="form-box">



					<h2 style="text-align: center;">
						제휴탈퇴 정보<small> 상세 보기</small>
					</h2>

					<div class="col-sm-12">
						<hr style="border: 1px dashed; margin-left: -16px;"
							class="col-sm-12" />
					</div>

					<form action="<c:url value='WithdrawalRequestView.do'/>" id="outstart" method="post">
		
					<c:forEach items="${partner}" var="partners">
					<input type="hidden"  name="pid" id="pid"  value="${partners.PID}" >
					<input type="hidden"  name="hosno" id="hosno"  value="${partners.HOSNO}" >						
						<div class="form-group">
							<div class="col-sm-6">
								<div class="col-sm-8">
									<span class="sp">병원 명</span> <input style="font-size: 1.2em;" type="text"
										class="form-control" name="hosname" id="hosname" value="${partners.HOSNAME}" disabled>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-12">							
								<div class="col-sm-3" >							
									<span class="sp">담당자 연락처</span>
									 <input style="font-size: 1.2em;" type="text"	class="form-control" name="pphone" id="pphone"  value="${partners.PPHONE}" disabled>
								</div> 
								<div class="col-sm-4" >	 
									  <span class="sp">이메일</span>
									 <input style="font-size: 1.2em;"  type="text"	class="form-control" name="pemail" id="pemail"  value="${partners.PEMAIL}">										
								</div>																
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-12">
									<span class="sp">탈퇴 이유</span>
									<textarea style="font-size: 1.2em;"  rows="10" class="form-control" id="reqdetail"
										name="reqdetail" disabled >${partners.REQDETAIL}</textarea> 
								</div>
							</div>
						</div>
					</c:forEach>



							<div class="form-group">
								<div class="col-sm-12">
									<div class="col-sm-12 col-sm-offset-5">
										
						<button style="margin-top: 20px; margin-left: 330px;" type="button" class="btn btn-primary" 
						data-toggle="modal" data-target="#basicModal" id="outbtn" > 탈퇴 수락 </button>					
									</div>
								</div>
							</div>
							<!-- 모달 창 -->
							<div class="modal fade" id="basicModal">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<!-- 모달닫기:data-dismiss="modal" -->
											<button class="close" data-dismiss="modal">
												<span aria-hidden="true">&times;</span>
											</button>
										
										</div>
										<div class="modal-body" style="text-align: center;" >

											회원님께 탈퇴 메일을 전송했습니다.

										</div>
										<div class="modal-footer">
											<button type="button" id="okbutton" class="btn btn-primary" data-dismiss="modal">확 인</button>
										</div>
									</div>
								</div>
							</div>
							<!-- 모달 끝 -->


						<div class="col-sm-12">
							<hr style="border: 1px dashed; margin-left: -16px;"
								class="col-sm-12" />
						</div>
					</form>

				</div>

			</div>

		</div>

	</div>

