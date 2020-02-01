<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	response.setContentType("text/html; charset=UTF-8");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="en">
<head>
<title>KIVIEW &mdash; BlogDetail</title>

<%@ include file="/head.jsp"%>

</head>
<body>

	<!-- @@ header 부분 @@ -->
	<%@ include file="/header.jsp"%>

	<!-- @@ <h1 class = "mb-2 bread"> sub title 이 부분 우선 header에서 따로 빼놨어요!!! </h1> @@ -->
	<section class="hero-wrap hero-wrap-2"
		style="background-image: url('images/bg_2.jpg');">
		<div class="overlay"></div>
		<div class="container">
			<div
				class="row no-gutters slider-text align-items-center justify-content-center">
				<div class="col-md-9 ftco-animate text-center">
					<h1 class="mb-2 bread">Blog Single</h1>
					<p class="breadcrumbs">
						<span class="mr-2"><a href="index.jsp">Home <i
								class="ion-ios-arrow-forward"></i></a></span> <span class="mr-2"><a
							href="index.html">Blog <i class="ion-ios-arrow-forward"></i></a></span>
						<span>Blog Single <i class="ion-ios-arrow-forward"></i></span>
					</p>
				</div>
			</div>
		</div>
	</section>
	<!-- @@ header 끝 @@ -->




	<section class="ftco-section">
		<div class="container">
			<h3># 카페 개설하기</h3>
			<hr>

			<div class="row d-flex align-items-stretch no-gutters">
				<div class="col-md-6 p-4 p-md-5 order-md-last bg-light">
					<form action="#">
						<div class="form-group">
							&nbsp;카페명 <input name="title" type="text" class="form-control"
								placeholder="카페명을 입력하세요.">
						</div>
						<div class="form-group">
							대표 썸네일
							<input type="file" class="form-control" value="파일 선택" name="thumb" accpect="img/*">
						</div>
						<div class="form-group">
							카페 배경
							<input type="file" class="form-control" value="파일 선택" name="background" accpect="img/*">
						</div>
						
						<div class="form-group">
							가입 방식<br>
							<div style="color:black">
							<input type="radio" value="바로 가입" name="restriction"> 바로 가입 
							<br>
							<input type="radio" value="승인 후 가입" name="restriction"> 승인 후 가입
							</div>
						</div>
						<div class="form-group">
							한줄소개
							<textarea name="intro" id="" cols="30" rows="7" class="form-control"
								placeholder="간단한 소개글을 입력하세요."></textarea>
						</div>
						<div class="form-group">
							<input type="submit" value="카페 개설하기"
								class="btn btn-primary py-3 px-5">
						</div>
					</form>
				</div>
				<div class="col-md-6 d-flex align-items-stretch">
					<img src="images/main/main_03.jpg" alt="" class="img-fluid">
				</div>
			</div>

		</div>
	</section>


	<!-- @@ footer 영역 @@ -->
	<%@ include file="/footer.jsp"%>


	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.stellar.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/aos.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="js/google-map.js"></script>
	<script src="js/main.js"></script>

</body>
</html>