package d2jy.student.subpage.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StudentSubPageController {
	@RequestMapping("/slist")
	public String slist() {
		return "/mpage/slist";
	}
}
