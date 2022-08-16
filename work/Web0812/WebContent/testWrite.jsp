<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ include file="ssi.jsp" %>
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
<script type="text/javascript">

	function nullCheck(){
		dcode = document.myform.code.value;
		dtitle = document.myform.title.value;
		dpay = document.myform.pay.value;
		if(dcode == null || dcode==""){
			alert("code null");
			myform.code.focus();
			return false;
		}else{myform.title.focus();}
		
		if(dtitle == null || dtitle==""){
			alert("title null");
			myform.title.focus();
			return false;
		}else{myform.pay.focus();}
		
		if(dpay == null || dpay==""){
			alert("pay null");
			myform.pay.focus();
			return false;
		}
		
		document.myform.submit();
	}//end
	
	function codeCheck(){
		dcode = document.myform.code.value;
		if(dcode == null || dcode==""){
			alert("중복체크 code null");
			myform.code.focus();
			return false;
		}
		window.open("openID.jsp","bb","width=400,height=150,left=100,top=100")

	}//end
</script>
</head>
<body>
<h2>testWrite.jsp</h2>
	<p id="top"></p>
	<form name="myform" method="get" action="testWriteSave.jsp">
	코드: <input type="text" name="code" id="code" size="6">
	<input type="button" value="code중복체크" onclick="codeCheck();"><br>
	제목: <input type="text" name="title" id="title"><br>
	급여: <input type="text" name="pay" id="pay"><br>
		 <input type="button" value="버튼데이터저장" onclick="nullCheck();">&nbsp;
		 <input type="reset" value="입력취소">
	</form>
	<p>
    <a href="testWrite.jsp">[게시판입력화면]</a>
    <a href="testList.jsp">[게시판전체출력]</a>
    <a href="index.jsp">[index]</a>
    
    
</body>
</html>