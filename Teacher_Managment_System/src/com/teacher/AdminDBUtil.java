package com.teacher;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdminDBUtil {
	
	
	//Password Validate
	
			public static List<Admin> validate(String addminId, String password){
					
					ArrayList<Admin> admin= new ArrayList<>();
					
					//Create database connection
					
					 String dbURL = "jdbc:mysql://localhost:3306/adminpassword";
				     String dbUser = "root";
				     String dbPass = "1234";
				     
				     //validate
				     
				     Connection con = null;
				     
				     try {
				    	 Class.forName("com.mysql.jdbc.Driver");
				    	    con = DriverManager.getConnection(dbURL, dbUser, dbPass);
				    	    
				    	    PreparedStatement ps = con.prepareStatement("select * from adminlogin where addminId='"+addminId+"' and password='"+password+"'");
				    	    ResultSet rs = ps.executeQuery();
				    	 
				    	 
				    	 if(rs.next()) {
				    		 
				    		 String addminId2 = rs.getString(1);
				    		 String password2 = rs.getString(2);
				    	       
				    		 Admin a1 = new Admin(addminId2,password2 );
				    		 admin.add(a1);
				    	 }
				     }catch(Exception e) {
				    	 e.printStackTrace();
				     }
					
					return admin;
				}
				

}



