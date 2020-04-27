<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" integrity="sha256-T0Vest3yCU7pafRw9r+settMBX6JkKN06dqBnpQ8d30=" crossorigin="anonymous"></script>
<script type="text/javascript" src="resources/script/cart.js" />
<meta charset="UTF-8">
<title> [orderList.jsp] </title>
<script type="text/javascript">
  
        
</script>
<style type="text/css">
.scale{
transform:scale(1);
-webkit-transform:scale(1);
-moz-transform:scale(1);
-ms-transform:scale(1);
-o-transform:scale(1);
transition:all 0.1s ease-in-out;//图片柔和放大

}
.scale:hover{
transform:scale(1.2);
-webkit-transform:scale(1.2);
-moz-transform:scale(1.2);
-ms-transform:scale(1.2);
-o-transform:scale(1.2);

}
.sa{font-size:12pt;color:red;}
</style>	
</head>
<body>
<div class="container">
<form name="myform" action="orderInsert.do" method="post" enctype="multipart/form-data">
<font size="15" color="blue" >주문/결제</font>
<hr size="9" color="grey" style="width:60%" align="left">
 <table width=900  border=1 cellspacing=0 >
  <tr><td colspan="3"><input type="checkbox" id="allcheck"></td></tr> 
  <tr bgcolor="orange">
  <td colspan="3">
  <font size="6">상품정보</font>
  </td>
  </tr>
  
  
  <c:forEach var="order" items="${product}" varStatus="status">
  
  <tr>
  <td rowspan="5" align="center"><input type="checkbox"  name="select" ></td>
  <td rowspan="5" align="center"><img  src="${order.product_img1}" width="200" height="150" class="scale"  ></td>
  <td>상품번호 &nbsp;:${order.product_id}</td>
  </tr>
  <tr><td >상품가격 &nbsp;:<span calss="total">${order.product_price }</span>원</td></tr>
  <tr><td >상품이름 &nbsp;:${order.product_name}</td></tr>
  <tr><td >상품옵션1:${order.product_color}</td></tr>
  <tr><td >상품옵션2:${order.product_size}</td></tr>
  </c:forEach>

  <tr><td colspan="3">총금액 : <span id="sum">0</span>원</td></tr>
  
 </table><p>
 
 <hr size="2" color="grey" style="width:60%" align="left" >

 <table width=900  border=1  cellspacing=0>
 <tr bgcolor="lightblue"><td colspan="2"><font size="5">배송정보</font></td></tr>
 <tr>
 <td>이름:</td>
 <td><input type="text" name="user_name" value="${users.user_name}" ></td>
 </tr>
 <tr>
 <td>배송주소:</td>
 <td><input type="text" name="user_address1" value="${users.user_address1}" ></td>
 </tr>
 <tr>
 <td>상세주소:</td>
 <td><input type="text" name="user_address2" value="${users.user_address2}" ></td>
 </tr>
 <tr>
 <td>연락처:</td>
 <td><input type="text" name="user_phone" value="${users.user_phone}" ></td>
 </tr>
 
   <tr align="center" >
  	 <td colspan="3" align="left" >
  	  	배송상황: <input type="text" name="status" value="주문중" class="sa" readonly >
  	</td  >
   </tr>
  
   <tr>
   <td align="center" colspan="3">
         <input type="submit" value="결제">&nbsp;
  	  	 <input type="reset" value="취소">
  	</td>
  	</tr>
 </table>
 </form>
</div> 
</body>
</html>











