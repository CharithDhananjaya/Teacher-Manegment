package com.teacher;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ViweTeacherServelt2")
public class ViweTeacherServelt2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	
	String tid = request.getParameter("tId");
	
	try {
		List<Teacher> cusD = TeacherDBUtil.validate(tid);
		request.setAttribute("cusD",cusD);
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	
	RequestDispatcher dis = request.getRequestDispatcher("ViewTeacheSide.jsp");
	dis.forward(request, response);
	}
}