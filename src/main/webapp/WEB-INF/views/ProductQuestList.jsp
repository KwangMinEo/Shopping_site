<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<meta charset="UTF-8">
<title> [제품 문의사항]</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	    $( ".accordion" ).accordion({
	      collapsible: true
	    });
	  } );
  </script>
</head>

<body>

 
 <div class="container">
	 <table class="table">
	  <thead>
	    <tr>
	      <th scope="col">번호</th>
	      <th scope="col">제목</th>	     
	    </tr>
	  </thead>
	  <tbody>
	  	<c:forEach var="bean" items="${PD}">
		    <tr>
		      <th scope="row">${bean.qrn}</th>
		      <td> 
					<div class="accordion">
					  <h3>${bean.title}</h3>
					  <div>
					    <p>
					    <c:choose> 
					    <c:when test="${questpwd==bean.pwd && questnum==bean.product_quest_num}">
					    	${bean.content} <p>
					    	<a href="productQuestOut.do">[확인완료]</a><p>
					    	<a href="productQuestDelete.do?qid=${bean.product_quest_num}">[삭제]</a>
					    	
					    </c:when>	
					    <c:otherwise>					    
						    <form action="productQuestPwd.do">
						    <input type="hidden" name="product_quest_num" value="${bean.product_quest_num}">
						    <input type="password" name="pwd">
						    <button type="submit">ok</button>
						    </form> 
					    </c:otherwise>
					    			     
					    </c:choose> 
					    </p>
					  </div>
					</div>
				</td>
			</tr>
	    </c:forEach>
	  </tbody>
	</table>
		
	<button type="button" class="btn btn-outline-dark">1</button>
	<p>
	<a href="productQuest.do">[문의하기]</a>
    <a href="productReviewList.do">[리뷰]</a>
    <a href="productQuestList.do">[문의]</a>
</div>


</body>
</html>
