package com.teacher;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;



@MultipartConfig(maxFileSize = 16177215)
public class DataUplordTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	 private static final int BUFFER_SIZE = 4096;
	    // database connection settings
	    private String dbURL = "jdbc:mysql://localhost:3306/teachermanegment";
	    private String dbUser = "root";
	    private String dbPass = "1234";

	    //naive way to obtain a connection to database
	    //this MUST be improved, shown for 
	    private Connection getConnection() {
	        Connection conn = null;
	        
	        try {
	            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
	        } catch (Exception e) {
	            //wrapping any exception and rethrowing it
	            //inside a RuntimeException
	            //so the method is silent to exceptions
	            throw new RuntimeException("Failed to obtain database connection.", e);
	        }
	        return conn;
	    }
	    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//get values of text fields
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
        String password = request.getParameter("password");
        String prosican = request.getParameter("prosican");
        
        InputStream inputStream = null; // input stream of the upload file
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("photo");
        inputStream = filePart.getInputStream();
        
        Connection conn = null; // connection to the database
        String message = null; // message will be sent back to client
        try {
            // connects to the database
            conn = getConnection();
            
            // constructs SQL statement
            String sql = "INSERT INTO teacher (fname, mname, lname,bdate,gen,tId,noStreet,street2,city,streetPro,pcode,email,con1,con2,photo,password,prosican) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            
            //Using a PreparedStatement to save the file
            PreparedStatement pstmtSave = conn.prepareStatement(sql);
            pstmtSave.setString(1, firstName);
            pstmtSave.setString(2, middleName);
            pstmtSave.setString(3, lastName);
            pstmtSave.setString(4, bdate);
            pstmtSave.setString(5, gen);
            pstmtSave.setString(6, tId);
            pstmtSave.setString(7, noStreet);
            pstmtSave.setString(8, street2);
            pstmtSave.setString(9, city);
            pstmtSave.setString(10, streetPro);
            pstmtSave.setString(11,pcode);
            pstmtSave.setString(12,email);
            pstmtSave.setString(13,con1);
            pstmtSave.setString(14,con2);
            pstmtSave.setBlob(15, inputStream);
            pstmtSave.setString(16,password);
            pstmtSave.setString(17,prosican);
            
            //sends the statement to the database server
            int row = pstmtSave.executeUpdate();
            if (row > 0) {
                message = "Data saved into database";
            } 
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    //silent
                }
            }
            // sets the message in request scope
            request.setAttribute("message", message);

            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp")
                .include(request, response);
        }
    }
	
	
}
