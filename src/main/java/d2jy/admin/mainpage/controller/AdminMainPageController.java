package d2jy.admin.mainpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminMainPageController {
	
	@RequestMapping("/StudentSubPage")
	public String studentMainPage()
	{
		return "subpage/student/student_sub_page";
	}

}
