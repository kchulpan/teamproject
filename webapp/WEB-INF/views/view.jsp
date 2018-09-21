<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <table border="1" cellpadding="0" cellspacing="0" width="500"
      align ="center" >
  <caption>
    <h2>${page_menu_name}게시물 내용보기</h2>    
  </caption>    
  <tr>
   <td width="100" height="30" align="center">게시판 이름</td>
   <td height="30" colspan="3">
     ${page_menu_name}
   </td>
  <tr>
  <tr>
   <td width="100" height="30" align="center">작성자</td>
   <td width="150" height="30">
     ${ brd.writer }
   </td> 
   <td width="100" height="30" align="center">작성일</td>
   <td width="150" height="30">
     ${ brd.regdate }
   </td> 
  </tr>
  <tr>
   <td width="100" height="30" align="center">글번호</td>
   <td width="150" height="30">
     ${ brd.bnum }
   </td> 
   <td width="100" height="30" align="center">조회수</td>
   <td width="150" height="30">
     ${ brd.readcount }
   </td> 
  </tr>
  <tr>
   <td width="100" height="30" align="center">제목</td>
   <td width="400" height="30" colspan="3">
     ${ brd.title }
   </td> 
  </tr>
  <tr>   
   <td width="500" height="300" colspan="4" valign="top">
     ${ brd.cont }
   </td> 
  </tr>
  <tr>   
   <td width="500" height="30" colspan="4">
     <a href="mboard?command=WRITEFORM&bnum=0&lvl=0&step=0&nref=0&menu_id=${brd.menu_id}">새글쓰기</a>
     
     <a href="mboard?command=WRITEFORM&bnum=${brd.bnum}&lvl=${brd.lvl}&step=${brd.step}&nref=${brd.nref}&menu_id=${brd.menu_id}">답글쓰기</a>
     
     <a href="mboard?command=LIST&menu_id=${brd.menu_id}">목록</a>
     
     <a href="mboard?command=UPDATEFORM&idx=${brd.idx}">수정</a>
     
     <a href="mboard?command=DELETE&idx=${brd.idx}&nref=${brd.nref}&lvl=${brd.lvl}&step=${brd.step}&menu_id=${brd.menu_id}">삭제</a>
   </td> 
  </tr>
  </table>
</body>
</html>
