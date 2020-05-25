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
	
	// 게시판 - 목록 페이지 이동 
    @RequestMapping( value = "/login")
    public String login(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "/login";
    }
	
    @RequestMapping(value="loginForm/login")
    public @ResponseBody String jsonLogin(@RequestParam HashMap<String, Object> userMap, HttpSession session, HttpServletRequest request) throws Exception{
    	String result ="NO";
    	if(session.getAttribute("session")!= null) {
    		session.removeAttribute("session");
    	}
    	//로그인 시도
    	UserDto loginInfo = userService.login(userMap);
    	
    	if(loginInfo != null) {
    		if(loginInfo.getU_active_state() ==1 ) {
    			session.setAttribute("session", loginInfo);
    			result = loginInfo.getU_id();
    		}
    		else {
    			result = "이메일 비활성화";
    		}
    	}
    	return result;
    }
	
}

