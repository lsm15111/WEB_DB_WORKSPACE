<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[testWrite.jsp]</title>
<style>
	* { font-weight:bold;}
	a { text-decoration:none; font-weight:bold; color: red;}
	a:hover { text-decoration:underline; color: blue;}
	#top { margin-top:30px;}
	body { margin:10px;}
</style>
</head>
<body>
<h2>testWrite.jsp</h2>
	<p id="top"></p>
	<form name="myform" method="get" action="testWriteSave.jsp">
	제목: <input type="text" name="title" id="title"><br>
	급여: <input type="text" name="pay" id="pay"><br>
	코드: <input type="text" name="code" id="code"><br>
		 <input type="submit" value="데이터저장">&nbsp;
		 <input type="reset" value="입력취소">
	</form>
	<p>
    <a href="testWrite.jsp">[게시판입력화면]</a>
    <a href="testList.jsp">[게시판전체출력]</a>
    <a href="index.jsp">[index]</a>
</body>
</html>