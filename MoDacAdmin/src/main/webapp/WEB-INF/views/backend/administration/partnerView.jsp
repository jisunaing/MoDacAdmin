<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value='/Bootstrap/js/bootstrap.min.js'/>"></script>


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
	height: 950px;	
	margin: 50px auto; 
	border-radius: 20px; 
	box-shadow: 0 4px 10px 4px rgba(9,35,47, .50);		
	}

label {
	pointer-events: none;
	position: absolute;
	left:13px;
	/* 화면 전이가 일어나기 전의 스타일 정의 */
	/* 레이블 위치 스타일 정의 */
	-webkit-transform: translateY(6px); 
	transform: translateY(6px);
	color: black;
	font-size: 16px;
	/* 화면 전이 정의 */
	-webkit-transition: all 0.25s ease;
	transition: all 0.25s ease;
	margin-top: 25px;
	margin-left: 10px; 
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

					<form action="/" method="post">

						<div class="form-group">
							<div class="col-sm-6">
								<div class="col-sm-8">
									<span class="sp">병원 명</span> <input type="text"
										class="form-control" name="id" id="id" value="" disabled>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-4 col-sm-pull-1">
								<div class="col-sm-12">
									<span class="sp">병원 연락처</span> <input type="text"
										class="form-control" name="id" id="id" value="" disabled>
								</div>
							</div>
						</div>


						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-10">
									<span class="sp">진료 과목</span> <label for="email2"> </label> <input
										type="text" class="form-control" name="id" id="id" value=""
										disabled>
								</div>
							</div>
						</div>

						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-8">
									<span class="sp">병원 주소</span> <input type="text"
										class="form-control" name="id" id="id" value="" disabled>
								</div>
							</div>
						</div>



						<div class="form-group">

							<div class="col-sm-12">

								<div class="col-sm-12">
									<span class="sp" style="text-align: center;">진료 시간</span>
								</div>

								<div style="margin-left: 30px;" class="col-sm-5">
									월요일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									화요일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>

								<div style="margin-left: 30px;" class="col-sm-5">
									수요일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									목요일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>
								<div style="margin-left: 30px;" class="col-sm-5">
									금요일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									토요일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>
								<div style="margin-left: 30px;" class="col-sm-5">
									일요일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									공휴일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>

								<div style="margin-left: 30px;" class="col-sm-5">
									휴무일 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>
								<div class="col-sm-offset-1 col-sm-5">
									점심시간 <input type="text" class="form-control" name="id" id="id"
										value="" disabled>
								</div>
							</div>
						</div>


						
						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-12">
									<span class="sp"><br/>병원 안내글</span>
									<textarea rows="10" class="form-control" id="greeting"
										name="greeting" disabled></textarea>
								</div>
							</div>
						</div>




						<div class="form-group">
							<div class="col-sm-12">
								<div class="col-sm-5 col-sm-offset-5">
									<button style="margin-top: 20px; margin-left: -14px;"
										type="submit" class="btn btn-danger">회원 삭제</button>
								</div>
							</div>
						</div>

						<div class="col-sm-12">
							<hr style="border: 1px dashed; margin-left: -16px;"
								class="col-sm-12" />
						</div>

					</form>

				</div>

			</div>

		</div>
