/**
 * 
 */
	function inputCheck()
	{
		var title = document.getElementById('title');
		if(title.value == '')
		{
			alert('제목을 입력하세요');
			return false;			
		}
		var writer = document.getElementById('writer');
		if(writer.value == '')
		{
			alert('작성자를 입력하세요');
			return false;			
		}
		var cont = document.getElementById('cont');
		if(cont.value == '')
		{
			alert('내용을 입력하세요');
			return false;			
		}
		
		return true;
	}


	window.onload = function()
	{
		var frmWrite = document.getElementById('frmWrite');
		frmWrite.onsubmit = function()
		{
			var result = inputCheck();
			return result;
		}
		
		var btn4 = document.getElementById('btn4');
		btn4.onclick = function()
		{
			var result = inputCheck();
			if(result == true)
			{
				//frm.action = '/Board/Write';
				frmWrite.submit(); 
			}
		}
		
		var btn5 = document.getElementById('btn5');
		btn5.onclick = function(e)
		{
			alert('(^(oo)^)');
			e.preventDefault();//기본이벤트 제거
			frmWrite.action = '/Board/List?menu_id=MENU01';
			//기존 href 경로를 변경할수 있음
			alert(frmWrite.action);
			frmWrite.submit();
		}
	}
