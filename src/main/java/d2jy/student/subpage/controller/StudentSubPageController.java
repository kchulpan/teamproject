package d2jy.student.subpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentSubPageController {
	@RequestMapping("/slist")
	public String slist() {
		return "/mpage/slist";
	}
	
	//side메뉴 클릭 -> content 페이지로 이동
	
	@RequestMapping("/stu_menu_lecture_1")
	public String stu_menu_lecture_1() {
		return "subpage/student/stu_menu_lecture_1";
	}
	
	@RequestMapping("/stu_menu_exam_1")
	public String stu_menu_exam_1() {
		return "subpage/student/stu_menu_exam_1";
	}
	
	@RequestMapping("/stu_menu_exam_2")
	public String stu_menu_exam_2() {
		return "subpage/student/stu_menu_exam_2";
	}
	
	@RequestMapping("/stu_menu_info_1")
	public String stu_menu_info_1() {
		return "subpage/student/stu_menu_info_1";
	}
	
	@RequestMapping("/stu_menu_info_2")
	public String stu_menu_info_2() {
		return "subpage/student/stu_menu_info_2";
	}
	
}
