<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductQuestWrite.jsp</title>
	
</head>
<body>
 	<div class="container">
		<font color=blue>[ProductQuestWrite.jsp]</font> <p>
	 	<form action="productQuestInsert.do">
	 	<input type=text name="product_id" value="kim"> <br>
	 	비밀번호: <input type="password" name="pwd" value="1234"> 
	 	제목: <input type=text name="title" value="LEE"> <br>
	 	내용: <textarea name="content" rows="4" cols="20">KBbank</textarea> <br>
	 	
	 	  
	 	  <input type="submit" value="저장">&nbsp;&nbsp;
	 	  <input type="reset" value="입력취소">          
	 	</form>

		<p>
	 	<a href="index.jsp">[index.jsp]</a>
	  	<a href="board.do">[board등록]</a>
	  	<a href="boardList.do">[board출력]</a>
	</div>
</body>
</html>













