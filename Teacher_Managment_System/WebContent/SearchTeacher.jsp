<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/SearchTeacher.css"/>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="teacher" class="form1" method="post">
  <table width="261" align="center">
    <tbody>
      <tr>
        <td align="center" class="search"><strong>Search Teacher</strong></td>
      </tr>
    </tbody>
  </table>
  <p>&nbsp;</p>
  <table width="200" align="center">
    <tbody>
      <tr>
        <td><input type="text" name="textfield" id="textfield"></td>
        <td><input type="text" name="textfield2" id="textfield2"></td>
        <td><input type="text" name="textfield3" id="textfield3"></td>
      </tr>
      <tr>
        <td align="center">First Name</td>
        <td align="center">Middle Name </td>
        <td align="center">Last Name</td>
      </tr>
      <tr>
        <td>&nbsp;</td>
        <td align="center"><p>&nbsp;
          </p>
          <p>
            <input type="submit" class="bt" name="submit2" value="Search">
        </p></td>
        <td>&nbsp;</td>
      </tr>
    </tbody>
  </table>
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