<%@page import="java.sql.*,java.io.*"%>
<%@page import="javax.servlet.http.Part.*"%>
<%@page import="java.io.InputStream.*"%>

<%
	String addNo = request.getParameter("tId");
	String photo = request.getParameter("photo");
try{
   Class.forName("com.mysql.jdbc.Driver");
   Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/teachermanegment", "root", "1234");
      File imgfile = new File("D:/Wallpapers/Batman/"+photo);
      FileInputStream fin = new FileInputStream(imgfile);
      PreparedStatement pre = con.prepareStatement("update teacher set photo=? where tId=?"); 
      pre.setBinaryStream(1,fin,(int)imgfile.length());
      pre.setInt(2,1);
      pre.executeUpdate();
      out.println("updated Successfully!");
      pre.close();
     }     
catch(Exception ex){
out.println("error :"+ex);
}
%>