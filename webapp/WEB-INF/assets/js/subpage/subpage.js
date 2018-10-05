
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
	$('.side_menu').on('click',function(e){
		console.log(e.target.id);
		if(e.target.id === 'menu1_1') {
			$.ajax({
				url: '/slist',
				dataType: 'html',
				success: function(data) {

					console.log(data);
					$('.sections').html(data);
				}
			});
		}
		
		
		
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
	
	//resize -> nav 나타났다가 사라졌다가,,
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
	//top_menu 클릭하면
	$('#top_menu_box > div:even').on('click',function(){
		
		var box_id = $(this).attr('id') + '_box';
		$('#' + box_id).empty();
		
		if($('#' + box_id).hasClass('side_menu_box_active')){
		//side menu 나와있을 때
			//side menu 안보이게, top menu, icon 색깔 -> 흰색(원래대로)
			$('#' + box_id).removeClass('side_menu_box_active');
			$(this).removeClass('top_menu_active');
			$(this).find('i').removeClass('menu_icon_active');
		}else{
		//side menu 안나와있을 때
			//side menu 보이게, top menu, icon 색깔 -> 파란색
			$('#' + box_id).addClass('side_menu_box_active');
			$(this).addClass('top_menu_active');
			$(this).find('i').addClass('menu_icon_active');
			
			//side menu 생성
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