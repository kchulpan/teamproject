package d2jy.index.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import d2jy.index.service.IndexService;


@Controller
public class IndexController
{
	@RequestMapping("/")
	public String logIn()
	{
		return "index";
	}
	
	@RequestMapping("/StudentMainPage")
	public String studentMainPage()
	{
		return "mainpage/student/student_main_page";
	}
}