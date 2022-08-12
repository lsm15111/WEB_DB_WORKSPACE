<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<img src="images/cd.gif">
	<img src="images/cd.gif">
	<h2>testWriteSave.jsp(단독실행=err)</h2>
	<%
	out.println("<h2>데이터받기 reqeust내장객체 </h2>");
	String Gtitle = request.getParameter("title");
	String Gpay = request.getParameter("pay");
	out.println("<h2>제목데이터" + Gtitle + "</h2>");
	out.println("<h2>급여데이터 = "+ Gpay + "</h2>");
	out.println("<h2>데이터받기 성공 </h2>");
	%>
	<p>
	<a href="https:www.naver.com">[네이버]</a>
	<a href="https:www.kakao.com">[카카오]</a>
	<a href="https:www.daum.net">[다음]</a>
</body>
</html>