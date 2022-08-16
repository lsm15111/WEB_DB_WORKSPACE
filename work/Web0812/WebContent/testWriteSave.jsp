<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[testWriteSave.jsp]</title>
<style>
	* { font-weight:bold;}
	a { text-decoration:none; font-weight:bold; color: red;}
	a:hover { text-decoration:underline; color: blue;}
</style>
</head>
<body>
<%!
Connection CN = null; //DB서버연결,명령어생성
Statement ST = null; //명령어생성 ST=CN.createStatement();
PreparedStatement PST=null; //명령어생성 PST=CN.prepareStatement(내용);
ResultSet RS=null; //조회한결과기억 RS=ST.executeQuery("select ~~")
//RS.next()기술해야함
int Grn, Gcode, Gsabun, Gpay, Ghit ; //정수숫자 자동으로 0으로 초기화
String Gname, Gtitle, Gcontent, Gwriter, Gemail; //문자열타입
java.util.Date wdate, hiredate, nalja, birth ; //날짜타입
boolean Ggender, Gflag ;
int Gtotal=0, total=0, Stotal=0;
String Gdata, data, msg;
%>
<%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 String url="jdbc:oracle:thin:@127.0.0.1:1521:XE";
 CN=DriverManager.getConnection(url,"system","1234");
 System.out.println("오라클 db서버 연결 성공 08-16-화요일");
 out.println("<h2>오라클 db서버 연결 성공 08-16-화요일</h2>");
}catch(Exception ex){System.out.println("db에러" + ex);}

%>

	<img src="images/cd.gif">
	<img src="images/cd.gif">
	<h2>testWriteSave.jsp(단독실행=err)</h2>
  <%
    //request데이터전달 100% 문자열로 전달
    //자바에서 String타입을 int형으로 변환 Integer.parseInt(문자열)
   Gtitle = request.getParameter("title");
   Gpay = Integer.parseInt(request.getParameter("pay"));
   Gcode = Integer.parseInt(request.getParameter("code"));
   out.println("제목데이터 = "+ Gtitle + "<br>");
   out.println("급여데이터 = "+ Gpay + "<br>");
   out.println("코드데이터 = "+ Gcode + "<br>");
   out.println("데이터받기 성공, 절대 단독실행하면 에러발생합니다  <br>");
   msg = "insert into test(title,pay,wdate,code) values('snow',24,sysdate,7700)";
   msg = "insert into test(title,pay,wdate,code) values('Gtitle',Gpay,sysdate,Gcode)";
   msg = "insert into test values('Gtitle',Gpay,sysdate,Gcode)";
   msg = "insert into test values('"+Gtitle+"',"+Gpay+",sysdate,"+Gcode+")";
   out.println(msg);
   System.out.println(msg);
   
   try{   
	   ST = CN.createStatement();
	   ST.executeUpdate(msg);
	   out.println(Gcode +"코드 데이터 성공처리 ");
	   System.out.println(Gcode +"코드 데이터 성공처리 ");
	   response.sendRedirect("testList.jsp"); // response내장객체문서 이동
	}catch(Exception ex){
		response.sendRedirect("testList.jsp"); //저장실패시에도 문서이동
		System.out.println("test테이블 저장실패 에러 " + ex);
	}

  %>

	<p>
    <a href="testWrite.jsp">[게시판입력화면]</a>
    <a href="testList.jsp">[게시판전체출력]</a>
    <a href="index.jsp">[index]</a>
</body>
</html>