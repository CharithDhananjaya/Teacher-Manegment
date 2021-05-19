<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/success.css"/>
<meta charset="ISO-8859-1">
<title>Success</title>
</head>
<c:forEach var="cus" items="${cusD}">
	
		<c:set var="fname" value="${cus.fname}"/>
		<c:set var="mname" value="${cus.mname}"/>
		<c:set var="lname" value="${cus.lname}"/>
		<c:set var="bdate" value="${cus.bdate}"/>
		<c:set var="gen" value="${cus.gen}"/>
		<c:set var="tId" value="${cus.tId}"/>
		<c:set var="noStreet" value="${cus.noStreet}"/>
		<c:set var="street2" value="${cus.street2}"/>
		<c:set var="city" value="${cus.city}"/>
		<c:set var="streetPro" value="${cus.streetPro}"/>
		<c:set var="pcode" value="${cus.pcode}"/>
		<c:set var="email" value="${cus.email}"/>
		<c:set var="con1" value="${cus.con1}"/>
		<c:set var="con2" value="${cus.con2}"/>
		<c:set var="prosican" value="${cus.prosican}"/>
		
		
		<c:url value="upDateTeacher.jsp" var="stuupdate">
		<c:param name="fname" value="${fname }"/>
		<c:param name="mname" value="${mname }"/>
		<c:param name="lname" value="${lname }"/>
		<c:param name="bdate" value="${bdate }"/>
		<c:param name="gen" value="${gen }"/>
		<c:param name="tId" value="${tId }"/>
		<c:param name="noStreet" value="${noStreet }"/>
		<c:param name="street2" value="${street2 }"/>
		<c:param name="city" value="${city }"/>
		<c:param name="streetPro" value="${streetPro }"/>
		<c:param name="pcode" value="${pcode }"/>
		<c:param name="email" value="${email }"/>
		<c:param name="con1" value="${con1 }"/>
		<c:param name="con2" value="${con2 }"/>
		<c:param name="prosican" value="${prosican }"/>
		</c:url>
		
		<c:url value="DeletTeacher.jsp" var="stuupdelete">
		<c:param name="fname" value="${fname }"/>
		<c:param name="mname" value="${mname }"/>
		<c:param name="lname" value="${lname }"/>
		<c:param name="bdate" value="${bdate }"/>
		<c:param name="gen" value="${gen }"/>
		<c:param name="tId" value="${tId }"/>
		<c:param name="noStreet" value="${noStreet }"/>
		<c:param name="street2" value="${street2 }"/>
		<c:param name="city" value="${city }"/>
		<c:param name="streetPro" value="${streetPro }"/>
		<c:param name="pcode" value="${pcode }"/>
		<c:param name="email" value="${email }"/>
		<c:param name="con1" value="${con1 }"/>
		<c:param name="con2" value="${con2 }"/>
		<c:param name="prosican" value="${prosican }"/>
		</c:url>
				<%
				String tId = request.getParameter("tId");
				%>
<center>
<div class = "wrapper">
<h3 class="sh">View Teacher Profile - Administration side</h3>	
  <table width="1156">
    <tbody>
      <tr>
        <td width="581"><fieldset>
          <legend class="tid">Personal Details</legend>
          <p class="cd">Teacher Name</p>
          <div class="cd">
          <table width="566">
            <tbody>
              <tr>
                <td width="183"><label for="textfield">First</label>
                  <input name="textfield" type="text" required="required" id="textfield" value="${cus.fname}"></td>
                <td width="184"><label for="textfield2">Middle</label>
                  <input name="textfield2" type="text" required="required" id="textfield2" value="${cus.mname}"></td>
                <td width="183"><label for="textfield3">Last</label>
                  <input type="text" name="textfield3" id="textfield3" value="${cus.lname}"></td>
				   
              </tr>
              <tr>
                <td><label for="textfield4">Birth Date
                </label></td>
                <td><p>
                  <label for="textfield5"></label>
                  <input type="text" name="textfield5" id="textfield5" value="${cus.bdate}">
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><label for="select">Gender
                </label></td>
                <td><p>
                  <label for="select2"></label>
                  <select name="select2" id="select2">
					    <option selected="selected" value="">${cus.gen}</option>
						<option value="Male">Male</option>
		  				<option value="Female">Female</option>
                  </select>
                </p></td>
                <td>&nbsp;</td>
              </tr>
                <tr>
				<td><p><label for="select2">Select Your Position:</label>
					<select name="procisan" id="select2">
					<option selected="selected" value="">${cus.prosican}</option>
					<option value="principle">Principle</option>
					<option value="vprinciple">vice Principle</option>
					<option value="teacher">Teacher</option>
				</select></p></td>
				<td>&nbsp;</td>	
			</tr>
              <tr>
                <td><label for="textfield4">Teacher ID No
                </label></td>
                <td><p>
                  <label for="textfield6"></label>
                  <input type="text" name="textfield6" id="textfield6" value="${cus.tId}">
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
          <legend  class="tid">Contact Details</legend>
          <p class="cd">Address</p>
          <div class="cd">
          <table width="381">
            <tbody>
              <tr>
                <td width="184"><p>
                  <label for="textfield4">No / Street</label>
                  <input type="text" name="textfield4" id="textfield4" value="${cus.noStreet}">
                </p></td>
                <td width="185"><p>
                  <label for="textfield8">Email </label>
                  <input type="text" name="textfield8" id="textfield8" value="${cus.email}">
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield9">Street 2</label>
                  <input type="text" name="textfield9" id="textfield9" value="${cus.street2} ">
                </p></td>
                <td><p>
                  <label for="textfield10">Contact No 1</label>
                  <input type="text" name="textfield10" id="textfield10" value="${cus.con1}">
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield11">City  </label>
                  <input type="text" name="textfield11" id="textfield11" value="${cus.city}">
                </p></td>
                <td><p>
                  <label for="textfield12">Contact No 2</label>
                  <input type="text" name="textfield12" id="textfield12" value="${cus.con2}">
                </p></td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield13">State / Province</label>
                  <input type="text" name="textfield13" id="textfield13" value="${cus.streetPro}">
                </p></td>
                <td>&nbsp;</td>
              </tr>
              <tr>
                <td><p>
                  <label for="textfield14">Postal Code</label>
                  <input type="text" name="textfield14" id="textfield14" value="${cus.pcode}">
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
              <td height="53"><a href="${stuupdate}"><input class="bt" name="button" type="button" id="button" value="Update Profile"></a></td>
            </tr>
            <tr>
              <td height="56"><a href="${stuupdelete}"><input class="bt" type="button" name="button2" id="button2" value="Delete  Profile"></a></td>
            </tr>
          </tbody>
        </table></td>
      </tr>
    </tbody>
  </table>
</div>
</c:forEach>
	

</body>
</html>