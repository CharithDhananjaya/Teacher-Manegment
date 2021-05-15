package com.teacher;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.teacher.TeacherDBUtil;

@WebServlet("/UpdateTeacherServlet")
public class UpdateTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String firstName = request.getParameter("fname");
        String middleName = request.getParameter("mname");
        String lastName = request.getParameter("lname");
        String bdate = request.getParameter("bdate");
        String gen = request.getParameter("gen");
        String tId = request.getParameter("tId");
        String noStreet = request.getParameter("noStreet");
        String street2 = request.getParameter("street2");
        String city = request.getParameter("city");
        String streetPro = request.getParameter("streetPro");
        String pcode = request.getParameter("pcode");
        String email = request.getParameter("email");
        String con1 = request.getParameter("cno1");
        String con2 = request.getParameter("cno2");
        
        
        
        boolean isTrue;
        
        isTrue = TeacherDBUtil.updateCustomer(firstName, middleName, lastName, bdate, gen, tId, noStreet, street2, city, streetPro, pcode, email, con1, con2);
        
        if(isTrue == true) {
        	List<Teacher> cusD = TeacherDBUtil.getTeacherDetails(tId);
        	request.setAttribute("cusD", cusD);
        	
        	RequestDispatcher d1 = request.getRequestDispatcher("successDB.jsp");
        	d1.forward(request, response);
        
        }else {
        	List<Teacher> cusD = TeacherDBUtil.getTeacherDetails(tId);
        	request.setAttribute("cusD", cusD);
        	
        	RequestDispatcher d2 = request.getRequestDispatcher("successDB.jsp");
        	d2.forward(request, response);
        }
	}
}


