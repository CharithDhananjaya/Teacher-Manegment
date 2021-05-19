<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/msg.css"/>
<meta charset="ISO-8859-1">
<title>Successfully registered</title>
</head>
<body>
	<h3 align="center">Successfully registered: ${message}</h3>
	<form action="teacher" class="form1" method="post">
  <p>&nbsp;</p>
  <table width="340" height="89" align="center">
    <tbody>
      <tr>
        <td width="103" align="center" class="tid">Teacher ID :</td>
        <td width="187" align="center"><input type="text" name="tId"></td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="center"><input type="submit" class="bt" name="submit" value="Search"></td>
      </tr>
    </tbody>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
</body>
</html>