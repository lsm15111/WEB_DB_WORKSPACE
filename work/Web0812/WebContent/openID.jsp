<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [openID.jsp]</title>
 <style type="text/css">
    *{font-size:10pt; font-weight:bold;  font-family: Comic Sans MS ; margin-left: 10px; }
	a{font-size:10pt; text-decoration:none; font-weight:bold; color:blue;  font-family: Comic Sans MS ; }
	a:hover{font-size:14pt; text-decoration:underline; color:green;  font-family: Comic Sans MS ; }
    body{margin-left:15px;}
 </style>
 
 <script type="text/javascript">
 
 </script>
</head>
<body bgcolor=orange>
<%
Gcode = Integer.parseInt(request.getParameter("code"));
%>

  <p/>
  <h2>openID.jsp</h2>
  
 <div>
  <img src="images/bar.gif" width=300><br>
	<form name="open_form" method="get" action="openIDSave.jsp">
	  코드:<input type="text" name="mycode" size="10" value="<%= Gcode %>">
	         <input type="submit" value="중복처리">
	</form>
  <img src="images/bar.gif" width=300><br>
</div>
  
</body>
</html>







