package com.itbank.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;


public class LoginInterceptor implements HandlerInterceptor {
	

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		System.out.println("1. preHandle");
		HttpSession session = request.getSession();
		
		String url = request.getRequestURL().toString();
		System.out.println("url : " + url);
		
		if(session.getAttribute("login") == null) {	// 만약 세션에 로그인이 없으면
			String cpath = request.getContextPath();
			response.sendRedirect(cpath + "/member/login?url=" + url);
			System.out.println("로그인상태가 아니므로, 로그인 페이지로 이동합니다\n");
			return false;							// 진행을 중단한다
		}
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView mav) throws Exception {
		// 컨트롤러의 처리가 끝났고, JSP로 넘어가기 전에 작동한다
		// JSP로 forward가 이루어지기 전에, request, cookie, session 등에서 필요한 값을 확인하고 판별하여
		// ModelAndView를 이용하여 특정 데이터를 넣어주는데 활용할 수 있다
		// header.jsp 를 사용할 수도 있으나, 모든 페이지에 영향을 주기 때문에 일부페이지에만 적용하기 쉽지 않다
		System.out.println("2. postHandle");
		mav.addObject("test1", "Hello, Interceptor");
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// 사용자에게 JSP의 화면이 모두 전달되고, 응답이 완료된 후 작동한다
		// 만약, 예외가 발생했다면, 혹은 예외가 특정 타입의 예외라면 로그에 기록하거나 알림을 처리할 수 있다
		// @ExceptionHandler, @ControllerAdvice 가 예외를 처리하는데 특화되어 있다
		// Log4j와 같은 로그 라이브러리가 있다
		System.out.println("3. afterCompletion");
	}
}







