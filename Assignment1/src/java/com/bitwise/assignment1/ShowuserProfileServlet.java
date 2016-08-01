package com.bitwise.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ShowuserProfileServlet")
public class ShowuserProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ShowuserProfileServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at:
		// ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<String> loggedInUserProfile = new ArrayList<String>();
		loggedInUserProfile.add(request.getParameter("firstName") + " " + request.getParameter("lastName"));
		loggedInUserProfile.add(request.getParameter("dob"));
		loggedInUserProfile.add(request.getParameter("gender"));
		loggedInUserProfile.add(request.getParameter("fatherName"));
		loggedInUserProfile.add(request.getParameter("email"));
		loggedInUserProfile.add(request.getParameter("contactNo"));
		loggedInUserProfile.add(request.getParameter("country"));

		request.getSession(false).setAttribute("id", loggedInUserProfile);

		PrintWriter out = response.getWriter();
		out.println("Profile Created...");
		request.getRequestDispatcher("Homepage.jsp").forward(request, response);
		//ArrayList<Integer> list = (ArrayList<Integer>) request.getSession().getAttribute("list");
		doGet(request, response);
	}

}
