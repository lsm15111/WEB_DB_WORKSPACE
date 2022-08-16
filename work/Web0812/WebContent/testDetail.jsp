<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8" %>
<%@ page import="java.util.Date" %> 
<%@ page import="java.sql.Connection" %> 
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*"  %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [testDetail.jsp]</title>
 <style type="text/css">
    * { font-size:16pt;  }
    a { font-size:16pt; text-decoration:none ;font-weight:bold; }
    a:hover{ font-size:28pt; text-decoration:underline ; color:blue ;}
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
  java.util.Date  Gwdate, hiredate, Gbirth ; //날짜타입
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
  System.out.println("testDetail 오라클 db서버 연결 성공 08-16-화요일") ;
 }catch(Exception ex){ System.out.println("testDetail db에러 " + ex); }
%>


<%
 //testDetail.jsp 한건상세 조건 
 msg = "select * from  test where code = 2234";
 ST = CN.createStatement(); //명령어생성
 RS = ST.executeQuery(msg); //생성된명령 ST에 쿼리문을 실행해서 결과를 RS기억해요
 if(RS.next()==true){
	Gtitle = RS.getString("title");
	Gpay = RS.getInt("pay");
	Gwdate = RS.getDate("wdate");
	Gcode = RS.getInt("code");
 }			
%>
 
<p>
 <table width="900" border="1" cellspacing="0" cellpadding="7">
   <tr align="center">
    <td colspan="2">
        testDetail.jsp</br>
     </td>
   </tr>

   <tr>
   	 <td rowspan="4" align="center"> <img src="images/pic6.png" width="500" height="300" >  </td>
   	 <td width="400"> 코드: <%= Gcode %> </td> 
   </tr>  
   
   <tr>	<td> 제목: <%= Gtitle %>  </td>   </tr>
   <tr> <td> 날짜: <%= RS.getDate("wdate") %> </td>  </tr>    
   <tr> <td> 급여: <%= RS.getInt("pay") %> </td>    </tr>  
     
   <tr align="center">
    <td colspan="2">
        <a href="#">[수정]</a>
    	<a href="testWrite.jsp">[등록]</a>
    	<a href="#">[삭제]</a>
 		<a href="index.jsp">[index]</a>
 		<a href="testList.jsp">[전체출력]</a>
    </td>
   </tr>
 </table>

</body>
</html>







