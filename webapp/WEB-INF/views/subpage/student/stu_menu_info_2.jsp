<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>학적 전과/복수전공</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/subpage/subpage.css" />
	<link rel="stylesheet" href="/css/mpage/cmajor.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- js -->
	<script src="js/subpage/stu_subpage.js"></script>
<script>
  $( function() {
    $( "#datepicker1" ).datepicker({
    	 changeMonth: true, 
         dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
         monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    		dateFormat:"yy-mm-dd"
    });
    
  } );
  $( function() {
    $( "#datepicker2" ).datepicker({
    	 changeMonth: true, 
         dayNames: ['월요일', '화요일', '수요일', '목요일', '금요일', '토요일', '일요일'],
         dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'], 
         monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
         monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
    		dateFormat:"yy-mm-dd"
    });
    
  } );
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
    	<!-- 상세 페이지~~ -->	
    전과/복수전공
    	<div>
   	<table>
		<h2>전과/복수전공신청</h2>

	</table>
</div>
<div>
	<table>
			<h3>◈ 부,복수전공신청</h3>
			<input type="button" value="신청"/>
			&nbsp;&nbsp;&nbsp;
			<tr>
				<td><div class="div1">소속진행상황</div></td>
				<td class="div1"><input type="text" /></td>
				<td><div class="div1">신청진행상황</div></td>
				<td class="div1"><input type="text" /></td>
				<td><div class="div1" >전공확정구분</div></td>
				<td colspan="3"><input type="text"  /></td>
				
			</tr>
			<tr>
				<td><div class="div1">신청학년도</div></td>
				<td class="div1"><input type="text" /></td>
				<td><div class="div1">신청학기</div></td>
					<td><select class="div1">
						   <option value="1">1학기</option>
						   <option value="2">2학기</option>			   
				   </select></td>
				<td><div class="div1">신청일자</div></td>
				<td class="div1"><p><input type="text" id="datepicker1"></p></td>
				<td><div class="div1">전공구분</div></td>
				<td>
					<select> 
						<option value="선택">선택</option>
						<option value="복수전공">복수전공</option>
						<option value="부전공">부전공</option>
					</select>
				</td>
			</tr>
			<tr>
				<td><div class="div1">과정</div></td>
				<td colspan="3"><select class="select" >
						<option value="선택">선택</option>
						<option value="학사">학사</option>
						<option value="석사">석사</option>
						<option value="박사">박사</option>
				</select></td>
				<td><div class="div1">대학(원)</div></td>
				<td colspan="3"><select class="select">
						<option value="선택">선택</option>
						<option value="상경대학">상경대학</option>
						<option value="사회대학">사회대학</option>
						<option value="인문대학">인문대학</option>
				</select></td>
			</tr>
			<tr>
				<td><div class="div1">학과(부)</div></td>
				<td colspan="3"><select class="select" >
						<option value="선택">선택</option>
						<option value="경영학과">경영학과</option>
						<option value="회계학과">회계학과</option>
						<option value="무역학과">무역학과</option>
				</select></td>
				<td><div class="div1">전공</div></td>
				<td colspan="3"><select class="select">
						<option value="선택">선택</option>
						<option value="경영학전공">경영학전공</option>
						<option value="회계학전공">회계학전공</option>
						<option value="무역학전공">무역학전공</option>
				</select></td>
		</table>
	</div>
		&nbsp;&nbsp;&nbsp;
	<div>
		<table>
 			<tr>
				<td><div class="div1">핸드폰번호</div></td>
				<td><input type="text" class="select" /></td>
			</tr> 
		</table>
	</div>
	<div>	
		<table>
			<h3>◈ 전과신청</h3>
			<input type="button" value="신청"/>
			<h4>전과신청</h4>
			<tr>
				<td><div class="div1">전과학년도</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">전과학기</div></td>
					<td><select class="div1">
						   <option value="1">1학기</option>
						   <option value="2">2학기</option>			   
				   </select></td>
				<td><div class="div1">신청전공</div></td>
				<td><select class="div1">
						<option value="선택">선택</option>
						<option value="경영학전공">경영학전공</option>
						<option value="회계학전공">회계학전공</option>
						<option value="무역학전공">무역학전공</option>
				</select></td>
				<td><div class="div1">신청일자</div></td>
				<td><p><input type="text" id="datepicker2"></p></td>
			</tr>
	</table>
</div>
<div>
	<table class="long">
		<h4>전과신청이력</h4>
		<tr>
		<td  class="no1"><div>번호</div></td>
		<td ><div>학년도</div></td>
		<td ><div>학기</div></td>
		<td ><div>신청전공</div></td>
		<td ><div>신청일자</div></td>
		<td ><div>처리상태</div></td>
		</tr>
		<tr>
		<td  class="no1"><div>1</div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td class="no1"><input type="button"  value="취소"></td>
		</tr>
		<tr>
		<td class="no1"><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td class="no1"><input type="button"  value="취소"></td>
		</tr>
		<tr>
		<td class="no1"><div ></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td class="no1"><input type="button"  value="취소"></td>
		</tr>
		<tr>
		<td class="no1"><div ></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td class="no1"><input type="button"  value="취소"></td>
		</tr>
		<tr>
		<td class="no1"><div ></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td ><div></div></td>
		<td class="no1"><input type="button"  value="취소"></td>
		</tr>
	</table>
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