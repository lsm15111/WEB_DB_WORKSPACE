<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ include file="ssi.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testList.jsp]</title>
 <style type="text/css">
    * { font-size:16pt;  }
    a { font-size:16pt; text-decoration:none ;font-weight:bold; }
    a:hover{ font-size:18pt; text-decoration:underline ; }
    body{margin-left:10px;}
 </style>
</head>
<body>


<p>
  <h1>testList.jsp</h1>
  <table border="1" width="700" cellspacing="0">
     <tr bgcolor="orange">
       <td>코 드</td> <td>제 목</td> <td>날 짜</td> <td>급 여</td>
     </tr>
<%
 msg = "select *  from  test order by code";
 ST = CN.createStatement();
 RS = ST.executeQuery(msg);
 while(RS.next()==true){
	 Gtitle = RS.getString("title");
	 Gpay = RS.getInt("pay");
	 Gwdate = RS.getDate("wdate");
	 Gcode = RS.getInt("code");
	 System.out.println(Gcode+" "+Gtitle+" "+Gwdate+" " + Gpay);

%>

  <tr>
    <td><%= Gcode %></td>
    <td><%= Gtitle %></td>
    <td><%= Gwdate %></td>
    <td><%= Gpay %></td>
  </tr>
<% }//while end %>
     
  </table>  

  <p>
  <a href="testWrite.jsp">[게시판입력화면]</a>
  <a href="testList.jsp">[게시판전체출력]</a>
  <a href="index.jsp">[index]</a>
</body>
</html>

