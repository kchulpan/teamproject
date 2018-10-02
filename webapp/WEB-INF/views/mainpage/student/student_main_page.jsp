<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<title>MainPage</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<meta name="description" content="" />
	<!-- css -->
	<link href="css/mainpage/bootstrap.min.css" rel="stylesheet" />
	<link href="css/mainpage/fancybox/jquery.fancybox.css" rel="stylesheet">
	<link href="css/mainpage/jcarousel.css" rel="stylesheet" />
	<link href="css/mainpage/flexslider.css" rel="stylesheet" />
	<link href="css/mainpage/style.css" rel="stylesheet" />

	<!-- Theme skin -->
	<link href="skins/mainpage/default.css" rel="stylesheet" />


</head>

<body>
	<div id="wrapper">
		<!-- start header -->
		<header>
			<div class="navbar navbar-default navbar-static-top">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
						<a class="navbar-brand" href="#"><span>D</span>djy</a>
					</div>
					<div class="navbar-collapse collapse ">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">Home</a></li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">수강<b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="/StudentSubPage">수강신청</a></li>
									<li><a href="#">신청내역조회</a></li>
									<li><a href="#">시간표</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
									성적조회<b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">전체성적</a></li>
									<li><a href="#">학기별성적</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
									학적변동<b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">학적조회</a></li>
									<li><a href="#">휴학/복학</a></li>
									<li><a href="#">전과/복수전공</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#"  class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
									증명발급<b class=" icon-angle-down"></b></a>
								<ul class="dropdown-menu">
									<li><a href="#">졸업증명서</a></li>
									<li><a href="#">재학증명서</a></li>
									<li><a href="#">성적증명서</a></li>
								</ul>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">
									<img src="/img/mainpage/face1.jpg" height="40" width="40" class="img-circle" alt="Avatar"/></a>
								<ul class="dropdown-menu">
									<li><a href="#">개인정보수정</a></li>								
									<li><a href="#">Settings</a></li>
									<li><a href="#">Logout</a></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</header>
		<!-- end header -->
		<section id="featured">
			<!-- start slider -->
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<!-- Slider -->
						<div id="main-slider" class="flexslider">
							<ul class="slides">
								<li>
									<img src="img/mainpage/slides/1.jpg" alt="" />
									<div class="flex-caption">
										<h3>행사1</h3>
										<p>세부내용1</p>
										<a href="#" class="btn btn-theme">Learn More</a>
									</div>
								</li>
								<li>
									<img src="img/mainpage/slides/2.jpg" alt="" />
									<div class="flex-caption">
										<h3>행사2</h3>
										<p>세부내용2</p>
										<a href="#" class="btn btn-theme">Learn More</a>
									</div>
								</li>
							</ul>
						</div>
						<!-- end slider -->
					</div>
				</div>
			</div>
		</section>
		<section class="callaction">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-primary">
							<ul class="nav nav-tabs nav-justified">
								<li class="nav-item">
									<a class="nav-link active" href="#">공지사항</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">게시판</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">레포트</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">자료실</a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">Q&A</a>
								</li>	
							</ul> 
						<div class="container">
							  <table>
							    <thead>
							      <tr>
							        <th>글번호</th>
							        <th>제목</th>
							        <th>작성일</th>
							      </tr>
							    </thead>
							    <tbody>
							      <tr>
							        <td>1</td>
							        <td>테스트내용입니다.</td>
							        <td>2018-09-28</td>
							      </tr>
							      <tr>
							        <td>2</td>
							        <td>테스트내용입니다.</td>
							        <td>2018-09-28</td>
							      </tr>
							    </tbody>
							    AJAX로작업하기
							  </table>
							
						</div>

					</div>
					</div>
				</div>
			</div>
		</section>
		<section id="content">
			<div class="container">
				<div class="row">
					<div class="col-lg-12">
						<div class="row">
							<div class="col-lg-3">
								<div class="box">
									<div class="box-gray aligncenter">
										<h4>즐겨찾기</h4>
										<div class="icon">
											<i class="fa fa-desktop fa-3x"></i>
										</div>
										<p>
											아이콘입력
										</p>

									</div>
									<div class="box-bottom">
										<a href="#">Learn more</a>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="box">
									<div class="box-gray aligncenter">
										<h4>모바일 학생증</h4>
										<div class="icon">
											<i class="fa fa-pagelines fa-3x"></i>
										</div>
										<p>
											아이콘입력
										</p>

									</div>
									<div class="box-bottom">
										<a href="#">Learn more</a>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="box">
									<div class="box-gray aligncenter">
										<h4>강의시간표</h4>
										<div class="icon">
											<i class="fa fa-edit fa-3x"></i>
										</div>
										<p>
											아이콘입력
										</p>

									</div>
									<div class="box-bottom">
										<a href="#">Learn more</a>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="box">
									<div class="box-gray aligncenter">
										<h4>편의서비스</h4>
										<div class="icon">
											<i class="fa fa-code fa-3x"></i>
										</div>
										<p>
											아이콘입력
										</p>

									</div>
									<div class="box-bottom">
										<a href="#">Learn more</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- divider -->
				<div class="row">
					<div class="col-lg-12">
						<div class="solidline">
						</div>
					</div>
				</div>
				<!-- end divider -->
				<!-- Portfolio Projects -->
				

			</div>
		</section>
		
		<!-- footer -->
		<footer>
			<div class="container">
				<div class="row">
					<div class="col-lg-4">
						<div class="widget">
							<h5 class="widgetheading">Get in touch with us</h5>
							<address>
								<strong>학교정보</strong><br>
								(18119) 경기도 오산시 청학로45<br>
					 		 </address>
							<p>
								<i class="icon-phone"></i> (051) 000-0000<br>
								<i class="icon-envelope-alt"></i> email@domainname.com
							</p>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="widget">
							<h5 class="widgetheading">Pages</h5>
							<ul class="link-list">
								<li><a href="#">Press release</a></li>
								<li><a href="#">Terms and conditions</a></li>
								<li><a href="#">Privacy policy</a></li>
								<li><a href="#">Career center</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="widget">
							<h5 class="widgetheading">Latest posts</h5>
							<ul class="link-list">
								<li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
								<li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
								<li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
							</ul>
						</div>
					</div>
					
				</div>
			</div>
			<div id="sub-footer">
				<div class="container">
					<div class="row">
						<div class="col-lg-6">
							<div class="copyright">
								<p>&copy; UNIVERSITY. All rights reserved.</p>
								<div class="credits">
									Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
								</div>
							</div>
						</div>
						<div class="col-lg-6">
							<ul class="social-network">
								<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</footer>
	</div>
	<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
	<!-- javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="js/mainpage/jquery.js"></script>
	<script src="js/mainpage/jquery.easing.1.3.js"></script>
	<script src="js/mainpage/bootstrap.min.js"></script>
	<script src="js/mainpage/jquery.fancybox.pack.js"></script>
	<script src="js/mainpage/jquery.fancybox-media.js"></script>
	<script src="js/mainpage/google-code-prettify/prettify.js"></script>
	<script src="js/mainpage/portfolio/jquery.quicksand.js"></script>
	<script src="js/mainpage/portfolio/setting.js"></script>
	<script src="js/mainpage/jquery.flexslider.js"></script>
	<script src="js/mainpage/animate.js"></script>
	<script src="js/mainpage/custom.js"></script>

</body>

</html>
