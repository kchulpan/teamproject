<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>학적 휴/복학</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- css -->
	<link rel="stylesheet" href="/css/subpage/subpage.css" />
	<link rel="stylesheet" href="/css/mpage/newabsence.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<!-- js -->
	<script src="js/subpage/stu_subpage.js"></script>
  
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
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
    휴/복학
    <div>
		<table>
			<h2>휴 복학신청</h2>
<!-- 			<tr>
				<td><div class="Unum">학번</div></td>
				<td><input type="text" class="Unum_input" /></td>
			</tr> -->
		</table>
		<table>
			<h4>◈ 학생정보</h4>
			<tr>
				<td><div class="div1">성명</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">학번</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">학과전공</div></td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td><div class="div1">수업학년도</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">수업학년</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">수업학기</div></td>
				<td><input type="text" /></td>
			</tr>
		</table>
		<table>
			<h4>◈ 신청학적변동</h4>
			<tr>
				<td ><div class="div1">신청변동</div></td>
				<td colspan="7"><input type="text" class="Nabsence_input"/></td>

			</tr>
			<tr>
				<td><div class="div1">접수일자</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">신청변동 적용기준일</div></td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td><div class="div1">접수학년</div></td>
				<td><input type="text" /></td>
				<td><div class="div1">가장최근 학적변동</div></td>
				<td><input type="text" /></td>
			</tr>
		</table>
		<h3>휴학신청</h3>
		<table>
			<h4>◈입력사항</h4>
			<tr>
			   <td colspan="2" align="left">
				   ●신청학기
					   <select>
						   <option value="1">1학기</option>
						   <option value="2">2학기</option>			   
					   </select>&nbsp;&nbsp;&nbsp;
					●휴학학기수
						<select>
							<option value="선택">선택</option>
							<option value="1">1학기</option>
							<option value="2">2학기</option>
							<option value="3">3학기</option>
							<option value="4">4학기</option>
						</select>
				<!-- <label>*희망 학기 수를 선택하면 복학예정 년도/학기가 자동으로 셋팅됩니다.</label> -->
				</td> 

			</tr>
			<tr>
				<td><div class="div1">복학예정 년도/학기</div></td>
				<td><input type="text" />학년도
					<select class="div1">
						   <option value="1">1학기</option>
						   <option value="2">2학기</option>			   
				   </select></td>
			</tr>
			<tr>
				<td><div class="div1">비상연락처1(휴대폰)</div></td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td><div class="div1">휴학사유</div></td>
				<td>
				<input type="radio" name="reason" value="일반휴학"/>일반휴학(질병,취업등)
				<input type="radio" name="reason" value="군입대휴학"/>군입대휴학(금학기입대자만해당)
				</td>
			</tr>
		</table>
 		<table>
			<h4>◈수업학년</h4>
 			<tr>
				<td><div class="Nabsence">잔역휴학학기수/신청가능학기수</div></td>
				<td><input type="text" class="Nabsence_input" value="2 / 4"></td>
			</tr> 
		</table>
		<div style="width: 400px;margin:22px auto;">
			<table>
				<tr>
				   <input type="button"  value="신청">
				</tr>
			</table>
		</div> 
		<h3>복학신청</h3>
		<table>
			<tr>
				<td><div class="div1">복학적용 년도/학기</div></td>
				<td><input type="text" />학년도
					<select class="div1">
						   <option value="1">1학기</option>
						   <option value="2">2학기</option>			   
				   </select></td>
			</tr>
			<tr>
				<td><div class="div1">복학예정일</div></td>
				<td><p><input type="text" id="datepicker"></p></td>
			</tr>
		</table>
	  <div style="width: 400px;margin:22px auto;">
		<table>
				<tr>
				   <input type="button"  value="신청">
				</tr>
			</table>
		</div> 
		<div>
			<table class="long">
				<h4>◈휴복학신청 이력</h4>
				<tr>
				<td ><div class="no1">구분</div></td>
				<td ><div class="div3">신청일자</div></td>
				<td ><div class="div3">학년도</div></td>
				<td ><div class="div3">학기</div></td>
				<td ><div class="div3">진행상태</div></td>
				</tr>
				<tr>
				<td ><div class="no1">휴학</div></td>
				<td ><div class="div3">sysdate</div></td>
				<td ><div class="div3">2018</div></td>
				<td ><div class="div3">3</div></td>
				<td ><div class="div3">진행중</div></td>
				<td class="no1"><input type="button"  value="취소"></td>
				</tr>
				<tr>
				<td ><div class="no1">복학</div></td>
				<td ><div class="div3">sysdate</div></td>
				<td ><div class="div3">2018</div></td>
				<td ><div class="div3">2</div></td>
				<td ><div class="div3">처리완료</div></td>
				<td class="no1"><input type="button"  value="취소"></td>
				</tr>
				<tr>
				<td ><div class="no1"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
				<td class="no1"><input type="button"  value="취소"></td>
				</tr>
				<tr>
				<td ><div class="no1"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
				<td class="no1"><input type="button"  value="취소"></td>
				</tr>
				<tr>
				<td ><div class="no1"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
				<td ><div class="div3"></div></td>
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