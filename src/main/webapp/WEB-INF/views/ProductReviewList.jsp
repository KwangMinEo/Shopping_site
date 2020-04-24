<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title> [제품 이용후기]</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>

<body>

 
 <div class="container">
	 <table class="table">
	  <thead>
	    <tr>
	      <th scope="col">번호</th>
	      <th scope="col">내용</th>
	      <th scope="col">아이디</th>
	      <th scope="col">포인트</th>	     
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach var="bean" items="${PD}">
		    <tr>
		      <th scope="row">${bean.rrn}</th>
		      <td>${bean.content}</td>
		      <td>${bean.user_id}</td>
		      <td>
		     	 <c:forEach var="i" begin="1" end="${bean.point}">
				 	<img src="resources/images/staryellow.png" width="20" height="20">
				 </c:forEach>
				 <c:forEach var="j" begin="1" end="${5-bean.point}">
				 	<img src="resources/images/stargray.png" width="20" height="20">
				 </c:forEach>
			  </td>
		    </tr>
	    </c:forEach> 
	 
	  </tbody>
	</table>
	
	<button type="button" class="btn btn-outline-dark">1</button>
	<p>
	 <a href="productReview.do">[글쓰기]</a>
     <a href="productReviewList.do">[리뷰]</a>
   	 <a href="productQuestList.do">[문의]</a>
</div>


</body>
</html>
