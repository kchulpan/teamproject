package d2jy.admin.subpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminSubPageController {
	//side메뉴 클릭 -> content 페이지로 이동

	@RequestMapping("/adm_menu_personal_1")
	public String adm_menu_personal_1() {
		return "subpage/admin/adm_menu_personal_1";
	}
	
	@RequestMapping("/adm_menu_lecture_1")
	public String adm_menu_lecture_1() {
		return "subpage/admin/adm_menu_lecture_1";
	}
	
	@RequestMapping("/adm_menu_lecture_2")
	public String adm_menu_lecture_2() {
		return "subpage/admin/adm_menu_lecture_2";
	}
	
	@RequestMapping("/adm_menu_exam_1")
	public String adm_menu_exam_1() {
		return "subpage/admin/adm_menu_exam_1";
	}
	
	@RequestMapping("/adm_menu_exam_2")
	public String adm_menu_exam_2() {
		return "subpage/admin/adm_menu_exam_2";
	}
	
	@RequestMapping("/adm_menu_board_1")
	public String adm_menu_board_1() {
		return "subpage/admin/adm_menu_board_1";
	}
	
	@RequestMapping("/adm_menu_college_1")
	public String adm_menu_college_1() {
		return "subpage/admin/adm_menu_college_1";
	}
	
	@RequestMapping("/adm_menu_system_1")
	public String adm_menu_system_1() {
		return "subpage/admin/adm_menu_system_1";
	}
	
	@RequestMapping("/adm_menu_system_2")
	public String adm_menu_system_2() {
		return "subpage/admin/adm_menu_system_2";
	}
	
	@RequestMapping("/adm_menu_system_3")
	public String adm_menu_system_3() {
		return "subpage/admin/adm_menu_system_3";
	}
	
	@RequestMapping("/adm_menu_system_4")
	public String adm_menu_system_4() {
		return "subpage/admin/adm_menu_system_4";
	}
	
	@RequestMapping("/adm_menu_system_5")
	public String adm_menu_system_5() {
		return "subpage/admin/adm_menu_system_5";
	}
	
	@RequestMapping("/adm_menu_system_6")
	public String adm_menu_system_6() {
		return "subpage/admin/adm_menu_system_6";
	}
	
	@RequestMapping("/adm_menu_system_7")
	public String adm_menu_system_7() {
		return "subpage/admin/adm_menu_system_7";
	}	
	
}
