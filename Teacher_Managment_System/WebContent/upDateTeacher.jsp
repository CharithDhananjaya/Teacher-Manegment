<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/upDateTeacher.css"/>
<meta charset="ISO-8859-1">
<title>Update Teacher Profile</title>
</head>
<body>
	
		<%
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
			String con1 = request.getParameter("con1");
			String con2 = request.getParameter("con2");
			String prosican = request.getParameter("prosican");	
		%>
<form method="post" action="uploadTeacherData">
<center>
<div class = "wrapper">
<h3 class="sh">Update Teacher Profile - Administration side</h3>	
  <table width="1156">
    <tbody>
      <tr>
        <td width="581"><fieldset>
          <legend class="tid">Personal Details</legend>
          <p class="cd">Student Name</p>
          <div class="cd">
          <table width="566">
            <tbody>
              <tr>
                <td width="183"><label for="textfield">First</label>
                  <input name="fname" type="text" required="required" id="textfield" value=<%=firstName%>></td>
                <td width="184"><label for="textfield2">Middle</label>
                  <input name="mname" type="text" required="required" id="textfield2" value=<%=middleName%>></td>
                <td width="183"><label for="textfield3">Last</label>
                  <input type="text" name="lname" id="textfield3" value=<%=lastName%>></td>
				   
              </tr>
              <tr>
                <td><label for="b">Birth Date
                </label></td>
                <td><p>
                  <label for="textfield5"></label>
                  <input type="text" name="bdate" id="textfield5" value=<%=bdate%>>
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><label for="select">Gender
                </label></td>
                <td><p>
                  <label for="select2"></label>
                  <select name="gen" id="select2">
					    <option selected="selected" value=<%=gen%>><%=gen%></option>
						<option value="Male">Male</option>
		  				<option value="Female">Female</option>
                  </select>
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
				<td><p><label for="select2">Select Your Position:</label>
					<select name="procisan" id="select2">
					<option selected="selected" value=<%=prosican%>><%=prosican%></option>
					<option value="principle">Principle</option>
					<option value="vprinciple">vice Principle</option>
					<option value="teacher">Teacher</option>
					</select></p></td>
					<td>&nbsp;</td>
				</tr>
              <tr>
                <td><label for="textfield4">Teacher ID Number
                </label></td>
                <td><p>
                  <label for="textfield6"></label>
                  <input type="text" name="tId" id="textfield6" value=<%=tId%>>
                </p></td>
                <td>&nbsp;</td>
              </tr>
            </tbody>
      </table>
      </div>
        </fieldset></td>
        <td width="563"><fieldset> 
          <legend class="tid">Profile Picture          </legend>
          <table width="164" height="178" align="center">
            <tbody>
              <tr>
				  <td>&nbsp;</td>
                <td width="377" height="172"><p><img src="getImage.jsp?tId=<%=tId%>" width="200" height="200" alt=""/></p>
                 </td>
              </tr>
            </tbody>
</table>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
        </fieldset></td>
      </tr>
      <tr>
        <td><fieldset>
          <legend class="tid">Contact Details</legend>
          <p class="cd">Address</p>
          <div class="cd">
          <table width="381">
            <tbody>
              <tr>
                <td width="184"><p>
                  <label for="textfield4">No / Street</label>
                  <input type="text" name="noStreet" id="textfield4" value=<%=noStreet%>>
                </p></td>
                <td width="185"><p>
                  <label for="textfield8">Email </label>
                  <input type="text" name="email" id="textfield8" value=<%=email%>>
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield9">Street 2</label>
                  <input type="text" name="street2" id="textfield9" value=<%=street2%>>
                </p></td>
                <td><p>
                  <label for="textfield10">Contact No 1</label>
                  <input type="text" name="con1" id="textfield10" value=<%=con1%>>
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield11">City  </label>
                  <input type="text" name="city" id="textfield11" value=<%=city%>>
                </p></td>
                <td><p>
                  <label for="textfield12">Contact No 2</label>
                  <input type="text" name="con2" id="textfield12" value=<%=con2%>>
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield13">State / Province</label>
                  <input type="text" name="streetPro" id="textfield13" value=<%=streetPro%>>
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield14">Postal Code</label>
                  <input type="text" name="pcode" id="textfield14" value=<%=pcode%>>
                </p></td>
                <td>&nbsp;</td>
              </tr>
            </tbody>
          </table>
          </div>
        </fieldset></td>
        <td><table width="200" align="center">
          <tbody>
            <tr>
              <td height="53"><input class="bt" type="submit" value="Update my data"></td>
            </tr>
            <tr>
              <td height="56"><input class="bt" type="button" name="button2" id="button2" value="Back"></td>
            </tr>
          </tbody>
        </table></td>
      </tr>
    </tbody>
  </table>
</div>
 </form>  
</body>
</html>