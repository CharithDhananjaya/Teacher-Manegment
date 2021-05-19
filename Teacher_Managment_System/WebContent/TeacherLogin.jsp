<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/Teacher.css"/>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
</head>

<body>
<form action="log" class="form1" method="post">
  <table width="200" height="38" align="center">
    <tbody>
      <tr>
        <td align="center" class="search"><strong>Teacher Login</strong></td>
      </tr>
    </tbody>
  </table>
  <p>&nbsp;</p>
  <table width="355" height="140" align="center">
    <tbody>
      <tr>
        <td width="119" align="center" class="tid">Teacher ID <td width="224" align="center"><input type="text" name="tId">
        </tr>
      <tr>
        <td height="52" align="center" class="tid">Password</td>
        <td align="center"><input type="password" name="pass"></td>
      </tr>
      <tr align="center">
        <td><input type="reset" class="bt" name="reset" id="reset" value="Reset"></td>
        <td><input name="submit" class="bt" type="submit" id="submit" formmethod="POST" value="Submit"></td>
      </tr>
    </tbody>
  </table>
</form>
</body> 
</html>
