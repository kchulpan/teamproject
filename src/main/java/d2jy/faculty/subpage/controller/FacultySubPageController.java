package d2jy.faculty.subpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FacultySubPageController 
{
	//side메뉴 클릭 -> content 페이지로 이동
	
	@RequestMapping("/pro_menu_abscent_1")
	public String pro_menu_abscent_1() {
		return "subpage/faculty/pro_menu_abscent_1";
	}
	
	@RequestMapping("/pro_menu_exam_1")
	public String pro_menu_exam_1() {
		return "subpage/faculty/pro_menu_exam_1";
	}
	
	@RequestMapping("/pro_menu_lecture_1")
	public String pro_menu_lecture_1() {
		return "subpage/faculty/pro_menu_lecture_1";
	}
	
}
