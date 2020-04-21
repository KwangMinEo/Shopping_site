<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [orderList.jsp] </title>
	<style type="text/css">
     
	</style>

	
</head>
<body>
<div class="container">
<form name="myform" action="">
<font size="15" color="blue" >주문/결제</font>
 <table width=900  border=2  cellspacing=1 >
  <hr size="9" color="grey" style="width:60%" align="left">
  <tr bgcolor="orange">
  <td colspan="3">
  <font size="5">상품정보</font>
  </td>
  <td align="right"><input type="button" onclick="location.href='orderDelete.do?idx='" value="삭제"></td>
  </tr>
  <c:forEach var="order" items="product">
  <tr><td rowspan="5" align="center"><input type="checkbox" name="product_id" value=""></td></tr>
  <tr>
  <td rowspan="4"  align="center" >
    <img  src="resources/images/musinsa_main_banner4.jpg" width="100%" height="200" name="upload_f">
    
<%--     <img  src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name}" width="200" height="150"> --%>
  </td>
  </tr>
  <tr><td colspan="2">상품이름:<input type="text" name="product_name" value="product_name" readonly></td></tr>
  <tr><td colspan="2">상품색상:<input type="text" name="option1" value="product_color" ></td></tr>
  <tr><td colspan="2">상품사이즈:<input type="text" name="option1" value="product_size" ></td></tr>
  <tr >
  <td colspan="4" align="right">상품수량:<input type="text" name="count" value="1" >
   &nbsp;&nbsp; 상품가격:<input type="text" name="price" value="product_desc" ></td>
  </tr>
  </c:forEach>
 </table><p>
 
 <hr size="2" color="grey" style="width:60%" align="left" >
<!--  <img src="resources/images/jiantou.jpg" width="900px" height="80px"> -->
 <table width=900  border=1  cellspacing=0>
 <tr bgcolor="lightblue"><td colspan="2"><font size="5">배송정보</font></td></tr>
 <tr>
 <td>이름:</td>
 <td><input type="text" name="user_name" value="user_name" ></td>
 </tr>
 <tr>
 <td>배송주소:</td>
 <td><input type="text" name="user_address1" value="user_address1" ></td>
 </tr>
 <tr>
 <td>상세주소:</td>
 <td><input type="text" name="user_address2" value="uwer_address2" ></td>
 </tr>
 <tr>
 <td>연락처:</td>
 <td><input type="text" name="user_phone" value="user_phone" ></td>
 </tr>
 
   <tr align="center">
  	 <td colspan="5" align="left">
  	  	배송상황: <font color="red">주문중</font>
  	</td>
   </tr>
 </table>
 총금액 : 
  	  	 <input type="text" name="price" size=10 value="100000" readonly>
  	  	 <input type="submit" value="결제">
  	  	 <input type="reset" value="취소">
 </form>
</div> 
</body>
</html>











