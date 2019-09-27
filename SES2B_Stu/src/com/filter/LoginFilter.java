package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Student;

public class LoginFilter implements Filter {
	private String[] noLoginFilter = {"/student/login","/stu_login.jsp","/css/","/js/","/img/","/upload/"};
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
	}
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		String servletPath = ((HttpServletRequest) request).getServletPath();
		//System.out.println("servletPath: "+servletPath);
		for(String login: noLoginFilter) {
			if(servletPath!=null&&servletPath.toLowerCase().contains(login)) {
				chain.doFilter(request, response);
				return;
			}
		}
		
		Student student = (Student)((HttpServletRequest) request).getSession().getAttribute("student");
		if(student!=null) {
			chain.doFilter(request, response);
		}else {
			HttpServletResponse res = (HttpServletResponse)response;
			res.sendRedirect("stu_login.jsp");
		}
	}
	@Override
	public void destroy() {
		// TODO Auto-generated method stub
	}
}
