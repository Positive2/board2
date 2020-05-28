package com.spring.board.interceptor;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
// 인터셉터
// Controller로 요청을 가로채 특정 작업을 하는 용도로 쓰인다
// 로그인 처리에 사용
public class InterceptorLogin extends HandlerInterceptorAdapter{
	
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)throws Exception {
		
		System.out.println("InterceptorLogin ok");
		//객체를 가져옴
		HttpSession session = request.getSession();
		Object obj = session.getAttribute("session");
		System.out.println(obj);
		//로그인 필요한상태
		if(obj == null) {
			
			response.sendRedirect("../board/login");
			
			return false;
		}
		System.out.println("preHandler ok");
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
			throws Exception {
		
		super.postHandle(request, response, handler, modelAndView);
		System.out.println("postHandle ok");
	}
}
