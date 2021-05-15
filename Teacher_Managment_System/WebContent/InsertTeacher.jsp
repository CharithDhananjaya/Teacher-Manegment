<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/InsertTeacher.css"/>
<meta charset="ISO-8859-1">
<title>New Teacher Registration</title>
</head>
<body>
    	<div class = "wrapper1"> 
	        <div class="TeacherRegi"><h1>New Teacher Registration</h1></div>
	               <form name="fileform" method="post" action="insert" enctype="multipart/form-data">
	               	<div id = "TimeTableID">
							<fieldset>
							  <legend>Personal Details</legend> 
							 	 <h3>Teacher Name</h3>
							  <table width="533" height="68">
										<tbody>
										  <tr>
											<td width="180"><label for="textfield">First</label>
											<input class="fnm"type="text" name="fname"  required="required"></td>
											<td width="180"><label for="textfield2">Middle</label>
											<input class="fnm"type="text" name="mname"  required="required"></td>
											<td width="180"><label for="textfield3">Last</label>
											<input class="fnm"type="text" name="lname"  required="required"></td>
										  </tr>
										</tbody>
							  </table> 
							  <table width="315" height="232">
							            <tbody>
							              <tr>
							                <td width="294"><p>
							                  <label for="textfield4">Birth Date</label>
							                  <input  class="fnm" type="date" name="bdate"  required="required">
							                </p></td>
							              </tr>
							              <tr>
							                <td><p>
							                  <label for="select">Gender</label>
							                  <select   class="fnm" name="gen" id="select">
												  <option selected = "selected">Select(Gender)</option>
												  <option value="Male">Male</option>
							  					  <option value="Female">Female</option>
							                  </select>
							                </p></td>
							              </tr>
							              <tr>
							                <td><p>
							                  <label for="textfield5">Teacher ID Number</label>
							                  <input  class="fnm" type="text" name="tId"  required="required">
							                </p></td>
							              </tr>
							              <tr>
										  	<td><label for="password">Password:</label>
										    <input type="password" name="password"></td>
											</tr>
											<tr>
										  	<td><label for="confirm password">Confirm Password:</label>
										    <input type="password" name="Confirm Password" ></td>
										</tr>
									</tbody>
							           
							           
							  </table> 
							  <table width="319" height="80">
							    <tbody>
							      <tr>
							        <td width="283"><label for="fileField">File:</label>
							        <input name="photo" type="file" required="required" ></td>
							      </tr>
							    </tbody>
							  </table>
							</fieldset>
		<br>
							<fieldset>
							  <legend>Contact Details</legend>
							   <h3>Address</h3> 
							  <table width="378">
							    <tbody>
							      <tr>
							        <td width="190" height="80"><p>
							          <label for="textfield7">No/Street </label>
							          <input  class="fnm" type="text" name="noStreet"  required="required">
							        </p></td>
							        <td width="176" height="80"><p>
							          <label for="textfield8">Email</label>
							          <input   class="fnm" type="text" name="email"  required="required">
							        </p></td>
							      </tr>
							      <tr>
							        <td height="80"><p>
							          <label for="textfield9">Street 2 </label>
							          <input  class="fnm" type="text" name="street2"  required="required">
							        </p></td>
							        <td height="80"><p>
							          <label for="textfield10">Contact Number 1</label>
							          <input  class="fnm" type="text" name="cno1"  required="required">
							        </p></td>
							      </tr>
							      <tr>
							        <td height="80"><p>
							          <label for="textfield11">City<br>
							          </label>
							          <input  class="fnm" type="text" name="city" required="required">
							        </p></td>
							        <td height="80"><p>
							          <label for="textfield12">Contact Number 2</label>
							          <input class="fnm" type="text" name="cno2">
							        </p></td>
							      </tr>
							    </tbody>
							  </table>
							  <table width="242">
							    <tbody>
							      <tr>
							        <td width="234" height="80"><p>
							          <label for="textfield13">State/Province</label>
							          <input  class="fnm" type="text" name="streetPro"  required="required">
							        </p></td>
							      </tr>
							      <tr>
							        <td height="80"><p>
							          <label for="textfield14">Postal Code</label>
							          <input  class="fnm" type="text" name="pcode"  required="required">
							        </p></td>
							      </tr>
							    </tbody>
							  </table>
							</fieldset>
				 
	            <input type="submit" value="Submit">
	            <input type="reset" value="Clear">
	         	
	         	
	            </div>
	        </form>
	    </div>
    </body>
</html>