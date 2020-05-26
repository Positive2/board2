package com.spring.board.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.spring.board.dto.UserDto;
import com.spring.board.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	// 로그인 페이지 이동
    @RequestMapping(value = "/login")
    public String login(){    
        return "login";
    }
	
    // 로그아웃
    @RequestMapping(value="/logout")
    public String logout(HttpSession session) {
    	//세션 종료
    	session.invalidate();
    	return "redirect:/boardList";
    }
    
    //로그인
    @RequestMapping(value="loginForm/login")
    public @ResponseBody String Login(@RequestParam HashMap<String, Object> userMap, HttpSession session, HttpServletRequest request) throws Exception{
    	String result ="NO";
    	if(session.getAttribute("session")!= null) {
    		//로그인 요청시, 세션값 존재하면 삭제
    		session.removeAttribute("session");
    	}
    	//로그인 시도
    	UserDto loginInfo = userService.login(userMap);
    	System.out.println("ok1");
    	if(loginInfo != null) {
    		System.out.println("ok2");
			/* if(loginInfo.getU_active_state() ==1 ) { */
    			session.setAttribute("session", loginInfo);
    			System.out.println("loginInfo.getU_name()"+loginInfo.getU_name());
    			result = loginInfo.getU_name();
			/*
			 * } else { result = "이메일 비활성화"; }
			 */
    	}
    	System.out.println("ok3");
    	return result;
    }
	
 // 회원가입 페이지 이동
    @RequestMapping(value="/signUp")
    public String signup(HttpServletRequest request, HttpServletResponse response) throws Exception{
    	return "signUp";
    }
    
 // 회원가입 요청
    @RequestMapping(value="signUpForm/signUp")
    public String responseSignUp(@RequestParam HashMap<String, Object> signUpFormMap) throws Exception{
    	
    	userService.signUp(signUpFormMap);
    	return "redirect:/boardList"; //게시판으로 이동
    }
    
    
}

