<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<!-- css -->
	<link rel="stylesheet" href="/css/subpage/subMain.css" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script>

	var top_menus = ["학적변동","수강","성적조회","증명발급"];
	var top_menus_id = ["menu1","menu2","menu3","menu4"];
	var side_menus = [];
	
	side_menus [0] = ["학적조회", "휴학/복학", "전과/복수전공"];
	side_menus [1] = ["수강신청", "신청내역 조회", "시간표 조회"];
	side_menus [2] = ["전체 성적 조회", "금학기 성적 조회","강의평가"];
	side_menus [3] = ["졸업증명서", "성적증명서", "재학증명서"];
	
	
//-------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------
function create_side_menu(idx, menu_id, side_menus_name){
	// menu_id = menu1
	//side menu 만들기
	for (var i = 0; i < side_menus_name.length; i++) {
		var side_menu = $('<div></div>')
					.html(side_menus_name[i])
					.addClass('side_menu')
					.attr('id', menu_id +'_'+ (i+1));
		$('#'+menu_id+'_box').append(side_menu);
		
		/* sub_menu(소메뉴) 만들기 */
		/* if(menu_id=='menu5'){				//소메뉴가 있는 조건
		
			var sub_menu_box = $('<div></div>').attr('id','menu5_1_box').addClass('sub_menu_box');
				
				for (var j = 0; j < sub_menus.length; j++) {
					var sub_menu = $('<div></div>')
								.html(sub_menus[j])
								.addClass('sub_menu')
								.attr('id',menu_id +'_' +(i+1) +'_'+ (j+1));
					$(sub_menu_box).append(sub_menu);

				}
			$('#'+menu_id+'_box').append(sub_menu_box);
		}  */
	}
		
	/* side_menu 클릭 이벤트 */
	$('.side_menu').on('click',function(){
		
		var id = $(this).attr('id');							/* id="menu1_1" */	
		var html = $(this).html();
		
		/* 소메뉴가 있을 때 */
		/* if(id=='menu5_1'){					//소메뉴가 있는 조건
			
			var box_id = $(this).attr('id') + '_box';

			if($('#' + box_id).hasClass('sub_menu_box_active')){
				$('#' + box_id).removeClass('sub_menu_box_active')
			}else{
				$('#' + box_id).addClass('sub_menu_box_active')
			} 
			
			$('.sub_menu').on('click',function(){
				create_tab($(this).attr('id'), $(this).html());
			});	
			
		}else{ */
			create_tab(id, html);	
		/* } */
	});
}
	
function create_tab(menu_id, menu_html){
	/* tab 중복 막기 */
	var tab_id = 'tab_' + menu_id;
	//alert(tab_id);
	
	if(document.getElementById(tab_id)){
		
		$('#'+tab_id).prop('checked',true);	/* tab이미 있을 때, 그 탭 다시 체크 */
		$('[for =' + tab_id + ']').css('order',1);
		
		$('.tabs > label').not('[for =' + tab_id + ']').each(function (index, item) {
             var order = Number($(item).css('order'));
             $(item).css('order', order+1);
         });
		return;
	}
	
	/* tab 생성 */

	var input_tab = $('<input />').attr({
		type:"radio", id :tab_id, name : "tabs" , checked : true
	});
	var label_tab = $('<label></label>').attr('for',tab_id).css('order',1).html(menu_html);
	var img_tab = $('<img />').attr({
		src:"/img/subpage/icon_x_grey.png", class:"icon"
	});
	
	label_tab.append(img_tab);
	
	 $('.tabs > label').each(function (index, item) {
            var order = Number($(item).css('order'));
            $(item).css('order', order+1);
     });

	$('.tabs').append(input_tab);
	$('.tabs').append(label_tab);

	$('.tabs').trigger('create');
	
	/* 삭제 이미지 클릭 */
	$('.icon').on('click',function(){
		var name = $(this).parent().attr('for');
		
		$(this).parent().remove();
		$('#'+name).remove();
	});
}
		
<!-------------------------------- ready --------------------------------------------------------->	


$(document).ready(function(){
	
	$( window ).resize(function() {
		  if($(window).width() <=800){ 
			  $('nav').addClass("nav_active");
			  $('article').addClass('article_active');
		  }
		  if($(window).width() > 800){
			  //if($('nav').hasClass('nav_active')) return;
			  $('nav').removeClass("nav_active");
			  $('article').removeClass('article_active');
		  } 
	});
	
	//nav 만들기
	$('#top_menu_box > div:even').on('click',function(){
		
		var box_id = $(this).attr('id') + '_box';
		$('#' + box_id).empty();
		
		if($('#' + box_id).hasClass('side_menu_box_active')){
			$('#' + box_id).removeClass('side_menu_box_active');
			$(this).removeClass('top_menu_active');
			$(this).find('i').removeClass('menu_icon_active');
		}else{
			$('#' + box_id).addClass('side_menu_box_active');
			$(this).addClass('top_menu_active');
			$(this).find('i').addClass('menu_icon_active');
			
			for (var i = 0; i < top_menus_id.length; i++) {
				if($(this).attr('id')==top_menus_id[i]){
					create_side_menu(i,$(this).attr('id'), side_menus[i]);
				}
			}
		}
		
	});
	
	/* 내정보 클릭 -> 하위메뉴 정보변경/로그아웃 보여줌 */
	$('#myPage').on('click',function(){
		var hidden_myPage = $('.hidden_myPage');
		
		if(hidden_myPage.hasClass('profile_active')){
			hidden_myPage.removeClass('profile_active');
		} else{
			hidden_myPage.addClass('profile_active');
		}
	});
	
	/* side_menu 버튼 클릭-> 왼쪽으로 밀려나게 */
	$('#slide_btn').on('click',function(){
		if($('nav').hasClass('nav_active')){
			$('nav').removeClass('nav_active');
			$('article').removeClass('article_active');
		} else{
			$('nav').addClass('nav_active');
			$('article').addClass('article_active');
		}
		/* if($('.nav').css('left') == '-190px'){
			$('.nav').eq(0).css('left','0px');
			$('article').css('margin-left','217px');
			
		} else{
			$('.nav').eq(0).css('left','-190px');
			$('article').css('margin-left','30px');
		} */
	});
	
	
});
	
	
</script>
</head>
<!-------------------------------- body ---------------------------------------->
<body>
<div id="wrapper">
<!-- header -->
  <header>
    <div id="title"><a class="title_logo" href="#"><span>D</span>djy</a></div>
    <div id="myPage">
       <img src="/img/subpage/profile_photo.jpg" id="profile_photo" />
       <span>ㅇㅇㅇ님</span>
       <i class="fa fa-angle-down down_arrow" style="font-size:24px;"></i>
       <!-- <img src="/img/icon_down_arrow .png" id="down_arrow"/> -->
    </div>
    <div class="hidden_myPage">
	       <div>정보변경</div>
	       <div>로그아웃</div>
    </div>
  </header>
  
  <div id="main_templet">
<!-- side_menu -->
  <nav class="nav">
  	<div id="slide_btn"></div>
<!-- top_menu -->
    <div id="top_menu_box">
  	   <div id="menu1" class="top_menu">
  	   		<i class="fa fa-user-o menu_icon"></i>
  	   		학적	  
  	   </div>
  	   <div id="menu1_box" class="side_menu_box">
  	   </div>
  	   <div id="menu2" class="top_menu">
  	   		<i class="fa fa-table menu_icon"></i> 
  	   		수강	  
  	   </div>
  	   <div id="menu2_box" class="side_menu_box"></div>
  	   <div id="menu3" class="top_menu">
  	   		<i class="fa fa-line-chart menu_icon"></i>
  	  		성적조회 
  	   </div>
  	   <div id="menu3_box" class="side_menu_box"></div>
  	   <div id="menu4" class="top_menu">
  	   		<i class="fa fa-file-o menu_icon"></i>
  	   		증명발급 
  	   </div>
  	   <div id="menu4_box" class="side_menu_box"></div>
  	   <!-- <div id="menu5" class="top_menu">발급</div>    
  	   <div id="menu5_box" class="side_menu_box"></div> -->
    </div>
  </nav>

<!-- main -->
  <article>
   	<div class="tabs">
    </div>
    	
    <div class="sections">
    	<!-- 상세 페이지~~ -->	
    	sadkfj
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	
    	<br/>
    	dsf<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	v
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf
    	<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf<br/>
    	dsf
    	
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