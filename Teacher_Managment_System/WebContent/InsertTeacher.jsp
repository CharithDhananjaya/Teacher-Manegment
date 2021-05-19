<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script>
function check()
{

    var mobile = document.getElementById('cno1');
    var message = document.getElementById('message');

   var goodColor = "#0C6";
    var badColor = "#FF9B37";
  
    if(mobile.value.length!=10){
       
        mobile.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "required 10 digits, match requested format!"
    } 
}

function check2()
{

    var mobile = document.getElementById('cno2');
    var message = document.getElementById('message2');

   var goodColor = "#0C6";
    var badColor = "#FF9B37";
  
    if(mobile.value.length!=10){
       
        mobile.style.backgroundColor = badColor;
        message.style.color = badColor;
        message.innerHTML = "required 10 digits, match requested format!"
    } 
}
</script>

<link rel="stylesheet" type="text/css" href="css/InserTeacher.css"/>
<meta charset="ISO-8859-1">
<title>New Teacher Registration</title>
</head>
<body>
	        <div class="TeacherRegi">
	          <table width="410" height="50" align="center">
	            <tbody>
	              <tr>
	                <td width="402" align="center">New Teacher Registration</td>
                  </tr>
                </tbody>
              </table>
              </div>
<form name="fileform" class="form1" method="post" action="insert" enctype="multipart/form-data">
							<fieldset>
							  <legend class="tid">Personal Details</legend> 
						 	  <p>&nbsp;</p>
						 	   <div class="cd">
						 	  <table width="200" align="center">
						 	    <tbody>
						 	      <tr>
						 	        <td align="center">Teacher Name</td>
					 	          </tr>
					 	        </tbody>
					 	      </table>
					 	      </div>
					 	      <div class="cd">
						 	  <table width="533" height="68" align="center">
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
						      </div> 
							   <div class="cd">
							  <table width="359" height="232" align="center">
							            <tbody>
							              <tr>
							                <td width="294"><p>
							                  <label for="textfield4">Birth Date</label>
							                  <input  class="fnm" type="date" id="bday" name="bdate" required="required">
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
										  <td><p><label for="select2">Select Your Position:</label>
										    <select class="fnm" name="procisan" id="select2">
										     <option selected = "selected">Select(Position)</option>
										      <option value="principle">Principle</option>
										      <option value="vprinciple">vice Principle</option>
										      <option value="teacher">Teacher</option>
										    </select></p></td>
										</tr>
											<tr>
							                <td><p>
							                  <label for="textfield5">Teacher ID Number</label>
							                  <input  class="fnm" type="text" name="tId"  required="required">
							                </p></td>
							              </tr>
							              <tr>
										  	<td><p><label for="password">Password:</label>
										        <input  class="fnm" type="password" name="password"></p></td>
										  </tr>
									</tbody>
							           
							           
							  </table> 
							  </div>
							  <div class="cd">
							  <table width="319" height="80" align="center">
							    <tbody>
							      <tr>
							        <td width="283"><label for="fileField">File:</label>
							        <input name="photo" type="file" required="required" ></td>
							      </tr>
							    </tbody>
							  </table>
							  </div>
							</fieldset>
							
							
		<br>
  <fieldset>
					    <legend class="tid">Contact Details</legend>
							  <div class="cd">
							   <table width="200" align="center">
							     <tbody>
							       <tr>
							         <td align="center">Address</td>
						           </tr>
						         </tbody>
						         </div>
						      </table>
							   <h3>&nbsp;</h3>
							   <div class="cd"> 
							  <table width="378" align="center">
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
							        <input class="fnm"  id="cno1" type="number" name="cno1" required="required" required onkeyup="check(); return false;" ><span id="message"></span>
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
							          <input class="fnm"  id="cno2" type="number" name="cno2" required="required" required onkeyup="check2(); return false;" ><span id="message2"></span>

							        </p></td>
							      </tr>
							    </tbody>
							  </table>
							   </div>
							  <div class="cd"> 
							  <table width="242" align="center">
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
							  </div>
  </fieldset>
  <div class="cs"> 
  <table width="215" align="center">
    <tbody>
      <tr>
        <td width="103" align="center" class="bt"><input type="submit" formmethod="POST" value="Submit"></td>
        <td width="100" align="center" class="bt"><input type="reset" value="Clear"></td>
      </tr>
    </tbody>
  </table>
  </div>
  <p>&nbsp;</p>
</form>
    </body>
</html>