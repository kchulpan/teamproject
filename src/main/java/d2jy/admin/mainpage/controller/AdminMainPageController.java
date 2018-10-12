package d2jy.admin.mainpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainPageController {
	
	@RequestMapping("/StudentSubPage")
	public String studentMainPage() {
		return "subpage/student/student_sub_page";
	}
	
	@RequestMapping("/AdminSubPage")
	public String admin_sub_page() {
		return "subpage/admin/admin_sub_page";
	}
	
	@RequestMapping("/ProfessorSubPage")
	public String professor_sub_page() {
		return "subpage/faculty/professor_sub_page";
	}
	
	
	/*include*/
	@RequestMapping("/SubPage")
	public String subPage() {
		return "include/sub_page";
	}
	
	@RequestMapping("/Commoncode")
	public String commoncode(String page_id) {
		
		return "include/commoncode";
	}
	
	@RequestMapping("/Freeln")
	public String freeln(String page_id) {
		return "include/freeln";
	}
	
	@RequestMapping("/Project")
	public String project(String page_id) {
		return "include/project";
	}
	
	@RequestMapping("/Charge")
	public String charge(String page_id) {
		return "include/charge";
	}
	
	@RequestMapping("/Client")
	public String client(String page_id) {
		return "include/client";
	}
	
	
}
