<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*"  %> 

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
<%! 
  Connection CN=null ; //DB서버연결,명령어생성참조
  Statement ST=null ; //명령어생성 ST=CN.createStatement();
  PreparedStatement PST=null; //명령어생성 PST=CN.prepareStatement(내용);
  ResultSet RS=null; //조회한결과기억 RS=ST.executeQuery("select~~")

  int Grn, Gcode, Gsabun, Gpay, Ghit ; //정수숫자 자동으로 0으로 초기화
  String  Gname, Gtitle, Gconent, Gwriter, Gemail; //문자열타입
  java.util.Date  Gwdate, hiredate, birth ; //날짜타입
  boolean Ggender, Gflag ;
  int Gtotal=0, total=0, Stotal=0 ; 
  String Gdata, data, Gmsg, msg ;
  
%>
<%
 //오라클db문서가 있는 서버정보연결
 try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
  String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
  CN=DriverManager.getConnection(url, "system", "1234");
  System.out.println("testList 오라클 db서버 연결 성공 08-16-화요일") ;
 }catch(Exception ex){
	System.out.println("testList db에러 " + ex);
 }
%>
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

