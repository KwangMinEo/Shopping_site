<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> [orderList.jsp] </title>
<script type="text/javascript">
      function getsum(){   
		var items = document.getElementsByName("item");
		var sum = 0 ;
		for(var x=0;x<items.length;x++){
			if(items[x].checked)
				sum += parseInt(items[x].value);
		}
		myform.price.value=sum;
        } 
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
</style>	
</head>
<body>
<div class="container">
<form name="myform" action="">
<font size="15" color="blue" >주문/결제</font>
<hr size="9" color="grey" style="width:60%" align="left">
 <table width=900  border=2  cellspacing=1 >
  <tr bgcolor="orange">
  <td colspan="4">
  <font size="6">상품정보</font>
  </td>
  </tr>
  
<%--   <c:set var="total" value="0"/> --%>
  <c:forEach var="order" items="${product}" varStatus="status">
  
  <tr><td rowspan="6" align="center"><input type="checkbox" id="chk1" name="item" value="${order.product_price } " onclick="getsum();"></td></tr>
  <tr>
  <td rowspan="5"  align="center" >
    <img  src="${order.product_img1}" width="200" height="150" class="scale" >
  </td>
  </tr>
  <tr><td colspan="2">상품이름:<input type="text" name="product_name" value="${order.product_name}" readonly></td></tr>
  <tr><td colspan="2">상품옵션1:<input type="text" name="option1" value="${order.product_color}" ></td></tr>
  <tr><td colspan="2">상품옵션2:<input type="text" name="option2" value="${order.product_size}" ></td></tr>
  <tr><td colspan="2">상품가격:<input type="text" name="product_price"  value="${order.product_price }" readonly></td></tr>
<%--   <input type="hidden" value ="${total = total + order.product_price }"> --%>
  </c:forEach>
<%--   <tr><td colspan="3">총금액 : <input type="text" name="price"  size=10  value="${total }"  readonly></td></tr> --%>
  <tr><td colspan="3">총금액 : <input type="text"   name="price" size=10  value="" readonly></td></tr>
  
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
 
   <tr align="center">
  	 <td colspan="5" align="left">
  	  	배송상황: <font color="red">주문중</font>
  	</td>
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











