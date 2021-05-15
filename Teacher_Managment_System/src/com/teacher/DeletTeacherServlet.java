package com.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DeletTeacherServlet")
public class DeletTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tId = request.getParameter("tId");
		
		boolean tru;
		
		tru = TeacherDBUtil.DeletTeacher(tId);
		
		if(tru == true) {
			RequestDispatcher d1 = request.getRequestDispatcher("InsertTeacher.jsp");
        	d1.forward(request, response);
		}
		else {
			List<Teacher> TeacherDetails = TeacherDBUtil.getTeacherDetails(tId);
			request.setAttribute("TeacherDetails", TeacherDetails);
			
			RequestDispatcher d1 = request.getRequestDispatcher("successDB.jsp");
        	d1.forward(request, response);
			
		}
	}

}
