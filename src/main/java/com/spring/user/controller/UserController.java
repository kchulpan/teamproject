package com.spring.user.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.spring.user.vo.UserVo;
import com.spring.user.service.UserService;

@Controller
public class UserController
{
	//로그인 정보를 보관할 session 설정
	private HttpSession session;
	
	
	@Autowired
	private UserService userService;
	
	@RequestMapping("/Login")
	public ModelAndView loginForm(HashMap<String, Object> map)
	{
		ModelAndView mav = new ModelAndView();
		mav.setViewName("login/loginForm");
		
		return mav;
	}
	
	@RequestMapping("/LoginProcess")
	public ModelAndView loginProcess(
			@RequestParam HashMap<String, Object> map,
			HttpServletRequest request)
	{
		//map{userid, userpass}
		ModelAndView mav = new ModelAndView();
		
		UserVo vo = userService.login(map);
		
		System.out.println("vo:"+vo);
		if(vo == null) // 로그인 실패
		{
			mav.setViewName("login/loginForm");
		}
		else //로그인 성공
		{
			String userid = vo.getUserid();
			
			session = request.getSession();
			session.setAttribute("userid", userid);
			mav.setViewName("redirect:/Home");
		}
		mav.addObject("vo", vo);
		
		return mav;
	}
	
	@RequestMapping("/Logout")
	public ModelAndView logout(HttpSession session)
	{
		session.invalidate(); //세션 전체 초기화
		//session.removeAttribute("userid"); //세션 해당키만 지움
		
		ModelAndView mav= new ModelAndView("/Login");
		
		return mav;
	}
}
