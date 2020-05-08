<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title> [Productquest_rep.jsp]</title>
	
	
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
  
</head>
<body>
  
 <div class="container">
<br>
<form  method="get"  action="questreply.do" >
  <table width="700"  border='0' cellspacing="0">
  <c:if test="${userId=='admin.master'}">
		 	<tr>
		 		<td>
		 	 		<input type="hidden"  name="product_quest_num"  value="${questnum}"> 
			 		<input type="hidden"  name="product_id"  value="${prid}">
			 		=============답변===============
		 		</td>
		 	</tr>
		 	
		 	<tr>
		 	  <td>
		 		내용: <textarea  name="content" cols="60" rows=3></textarea>
		 		<input type="submit"  value="게시판댓글저장 "> 
		 	  </td>
		 	</tr>
 	</c:if>
  </table>
 </form>

 
 <p>
  <table width="750"  border='0' cellspacing="0">
   <tr  bgcolor="white"  height='30'  align="center">
 	   <td colspan=5>관리자 답변</td>       
   </tr>
  <c:forEach var="rdto" items="${rPQ}">
  <tr  
    onMouseOver="style.background='#00FFFF'" 
    onMouseOut="style.background='' "
  >
  	<td width=50> ${rdto.rrn}  </td> 
  	<td width=50>   </td> 
    <td width=100 >   </td> 
 	<td width=200 ><font color="red"> ${rdto.content}</font> </td>
 	  <td width=250 align="right"> 
 	  <c:if test="${userId=='admin.master'}">
 	   <input type="button" onclick="location.href='questreply_delete.do?qrd=${rdto.product_rep_num}'" value="삭제">
 	  </c:if>
   
 	 </td>     
  </tr>
  </c:forEach>
  

  </table>
</div>	
</body>
</html>