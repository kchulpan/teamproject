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
}
