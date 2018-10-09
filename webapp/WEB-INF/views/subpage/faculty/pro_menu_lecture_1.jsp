<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수강 신청/조회/시간표</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/subpage/subpage.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- js -->
	<script src="js/subpage/pro_subpage.js"></script>
<script>



</script>
</head>
<!-------------------------------- body ---------------------------------------->
<body>
<div id="wrapper">
<!-- header -->
  <header>
    <%@ include file="pro_common_layout/pro_header.jspf" %>
  </header>
  
  <div id="main_templet">
  <div id="slide_btn"></div>
<!-- side_menu -->
  <nav class="nav">
  	<%@ include file="pro_common_layout/pro_nav.jspf" %>
  </nav>

<!-- main -->
  <article>
   	<div class="tabs">
    </div>
    	
    <div class="sections">
    <!-- 상세 페이지 시작~~ -->	
    내강의조회
    <!-- 상세 페이지 끝~~   -->
    </div>
      
  </article>
  
  </div>
  
</div>
<script>
</script>
</body>

</html>