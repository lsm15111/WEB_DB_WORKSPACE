<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[testList.jsp]</title>
</head>
<style>
	* { font-weight:bold;}
	a { text-decoration:none; font-weight:bold;}
	a:hover { text-decoration:underline;}
	body { margin:10px;}
</style>
<body>
<h2>testList.jsp</h2>
	<table border="1" width=900 cellspacing="1">
	<tr>
	 <td>번호</td> <td>제목</td> <td>급여</td>
	</tr>
	
	<tr>
	 <td>7700</td> <td>일요일</td> <td>31</td>
	</tr>
	
	<tr>
	 <td>1100</td> <td>월요일</td> <td>15</td>
	</tr>
	
	</table>
	<p>
	<a href="testWrite.jsp">[게시판입력화면]</a>
	<a href="testList.jsp">[게시판전체출력]</a>
	<a href="index.jsp">[index]</a>
	
</body>
</html>