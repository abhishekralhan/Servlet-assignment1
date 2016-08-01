package com.bitwise.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter("/ValidateUserFilter")
public class ValidateUserFilter implements Filter {

	public ValidateUserFilter() {
		// TODO Auto-generated constructor stub
	}

	public void destroy() {
		// TODO Auto-generated method stub
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		ValidateUserCredentials credentials = new ValidateUserCredentials();
		credentials.addUserCredentials();
		PrintWriter out = response.getWriter();

		if (credentials.Validate(userName, password)) {

			chain.doFilter(request, response);

		} else {
			req.getRequestDispatcher("UserLogin.jsp?msg=Wrong Username/Password. Please try again.").forward(req, res);
		}

	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
