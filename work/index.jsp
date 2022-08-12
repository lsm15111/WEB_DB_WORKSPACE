<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[index.jsp]</title>
<style>
	* { font-weight:bold;}
	a { text-decoration:none; font-weight:bold;}
	a:hover { text-decoration:underline; }
	body { margin:10px;}
</style>
</head>
<body>
	<p/>
	<div align="center">
	<img src="./images/tulips.png" width=350 height=250>
	<p>
	<a href="testWrite.jsp">[게시판입력화면]</a>
	<a href="testList.jsp">[게시판전체출력]</a>
	<a href="index.jsp">[index]</a>
	</div>
	<script>
	setTimeout("location.href='testList.jsp'", 3000);
	</script>
</body>
</html>