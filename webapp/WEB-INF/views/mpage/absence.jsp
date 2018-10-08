<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 <title>Insert title here</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/css/absence.css"/>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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
<body>
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
				<input type="text" />학기</td>
			</tr>
			<tr>
				<td><div class="div1">비상연락처1(휴대폰)</div></td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td><div class="div1">비상연락처2</div></td>
				<td><input type="text" /></td>
			</tr>
			<tr>
				<td><div class="div1">휴학사유</div></td>
				<td>
				<input type="radio" name="reason" value="취업준비"/>취업준비
				<input type="radio" name="reason" value="경제사정"/>경제사정
				<input type="radio" name="reason" value="개인사정"/>개인사정
				<input type="radio" name="reason" value="군입대예정(금학기입대자만해당)"/>군입대예정(금학기입대자만해당)
				<input type="radio" name="reason" value="어학연수"/>어학연수
				<input type="radio" name="reason" value="질병"/>질병
				</td>
			</tr>
		</table>
 		<table>
			<h4>◈수업학년</h4>
 			<tr>
				<td><div class="Nabsence">미복학시 제적(처리가능)년도/학기</div></td>
				<td><input type="text" class="Nabsence_input" readonly/></td>
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
			<tr>
				<td><div class="div1">취소사유</div></td>
				<td><input type="text" /></td>
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
				<td ><div class="no1">번호</div></td>
				<td ><div class="div1">신청일자</div></td>
				<td ><div class="div1">학년도</div></td>
				<td ><div class="div1">학기</div></td>
				<td ><div class="div1">진행상태</div></td>
				<td ><div class="div1">취소일자</div></td>
				<td ><div class="div1">취소사유</div></td>
				</tr>
				<tr>
				<td ><div class="no1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				</tr>
				<tr>
				<td ><div class="no1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				</tr>
				<tr>
				<td ><div class="no1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				</tr>
				<tr>
				<td ><div class="no1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				</tr>
				<tr>
				<td ><div class="no1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				<td ><div class="div1"></div></td>
				</tr>
		</table>
	</div>
</body>
</html>