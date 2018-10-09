<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성적 목록 조회</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/subpage/subpage.css" />
	<link rel="stylesheet" href="/css/subpage/stu_menu3_2.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<!-- js -->
	<script src="js/subpage/stu_subpage.js"></script>
<script>



</script>
</head>
<!-------------------------------- body ---------------------------------------->
<body>
<div id="wrapper">
<!-- header -->
  <header>
    <%@ include file="stu_common_layout/stu_header.jspf" %>
  </header>
  
  <div id="main_templet">
  <div id="slide_btn"></div>
<!-- side_menu -->
  <nav class="nav">
  	<%@ include file="stu_common_layout/stu_nav.jspf" %>
  </nav>

<!-- main -->
  <article>
   	<div class="tabs">
    </div>
    	
    <div class="sections">
      <form>
    	<div class="div1">
    	  <div class="input_group"> 
	    	  <div class="input_sub">성명</div>
	    	  <input type="text" value="신지연" class="input_val" readonly/>
    	  </div>
    	  <div class="input_group">
	    	  <div class="input_sub">학번</div>
	    	  <input type="text" value="201312308" class="input_val" readonly/>
    	  </div>
    	</div>
    	
    	<div class="div1">
	    	<div class="div2">
	    	  <div class="input_group">
		    	  <div class="input_sub">소속대학</div>
		    	  <input type="text" value="공과대학" class="input_val" readonly/>
	    	  </div>
	    	  <div class="input_group">
		    	  <div class="input_sub">학부(과)</div>
		    	<input type="text" value="융합디스플레이공학과" class="input_val" readonly/>
	    	  </div>
	    	</div>
	    	<div class="div2">
	    	  <div class="input_group">
		    	  <div class="input_sub">학년</div>
		    	 <input type="text" value="4" class="input_val" readonly/>
	    	  </div>
	    	  <div class="input_group">
		    	  <div class="input_sub">학적상태</div>
		    	<input type="text" value="졸업" class="input_val" readonly/>
	    	  </div>
	    	</div>
	    	<div class="div2">
	    	  <div class="input_group">
		    	  <div class="input_sub">제 2전공 <br/>및 기타</div>
		    	  <textarea class="input_val textarea" readonly></textarea>
	    	  </div>
	    	</div>
        </div>
      </form>
    
	  <div id="grade_tbl">
	    <div id="first_row">
	      <div>연도/학기</div>
	      <div>과목코드</div>
	      <div>교과목명</div>
	      <div>이수구분</div>
	      <div>학점</div>
	      <div>등급</div>
	    </div>
	    <div id="content"></div>
	  </div>
	  
	  
    	
    </div>
      
  </article>
  
  </div>
  
</div>
<script>
	$(function(){
		$('.icon').each(function(index,item){
			console.log($(this).parent().length());
		});
	});
</script>
</body>

</html>