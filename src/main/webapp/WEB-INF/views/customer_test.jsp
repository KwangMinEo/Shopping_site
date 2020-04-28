<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[boardList.jsp]</title>
<style type="text/css">
* {
	font-size: 16pt;
}

a {
	text-decoration: none;
	font-size: 16pt;
	color: blue;
}

a:hover {
	font-size: 16pt;
	text-decoration: underline;
	color: green;
}
</style>

<script type="text/javascript">
	function clearText() {
		document.myform.keyword.value = "";
		document.myform.keyword.focus();
	}
</script>
</head>
<body>

	<!-- main_menu -->
	<header>
		<div id="main_bar">
			<c:import url="/main_bar.do" />
		</div>
	</header>
	<!-- 	본문 -->
	<div class="container">






		<table width=800 border=1 cellspacing=0>
			<tr align="right">
				<td colspan="5">레코드갯수: ${Gtotal}/${GGtotal} &nbsp;</td>
			</tr>

			<tr bgcolor=pink height="55">
				<td>번호</td>
				<td>분류</td>
				<td>제목</td>
			</tr>

			<c:forEach var="dto" items="${LG}">
  	  div class="accordion" id="accordionExample">
						<div class="card">
					<div class="card-header" id="headingOne">
						<h5 class="mb-0">
							<button class="btn btn-link" type="button" data-toggle="collapse"
								data-target="#collapseOne" aria-expanded="true"
								aria-controls="collapseOne">
								<tr>
									<td>${dto.QnA_num}</td>
									<td>${dto.QnA_Kategorie}</td>
									<td>${dto.QnA_title}</td>
									<td><a href="boardDetail.do?Gidx=${dto.hobby_idx}">${dto.title}</a>
									<c:if test="${dto.rcnt>0}">
											<font style="color: red; font-size: 14pt">
												[${dto.rcnt}] </font>
										</c:if></td>
									<td>${dto.img_file_name}</td>
									<td align="center"><img
										src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name}"
										width=100 height=30 border="0"></td>
								</tr>
							</button>
						</h5>
					</div>

					<div id="collapseOne" class="collapse show"
						aria-labelledby="headingOne" data-parent="#accordionExample">
						<div class="card-body">${QnA_detail}</div>
					</div>
				</div>
				</div>



				<tr>
					<td>${dto.rn}</td>
					<td>${dto.name}</td>
					<td><a href="boardDetail.do?Gidx=${dto.hobby_idx}">${dto.title}</a>
					<c:if test="${dto.rcnt>0}">
							<font style="color: red; font-size: 14pt"> [${dto.rcnt}] </font>
						</c:if></td>
					<td>${dto.img_file_name}</td>
					<td align="center"><img
						src="${pageContext.request.contextPath}/resources/upload/${dto.img_file_name}"
						width=100 height=30 border="0"></td>
				</tr>





			</c:forEach>

			<tr align="center">
				<td colspan="5">
					<!-- 이전 --> <c:if test="${startpage>10}">
						<a href="boardList.do?pageNum=${startpage-10}">[이전]</a>
					</c:if> <c:forEach var="i" begin="${startpage}" end="${endpage}" step="1">
						<c:choose>
							<c:when test="${i==pageNUM}">
								<font style='color: red; font-size: 20pt'>[${i}]</font>
							</c:when>
							<c:otherwise>
								<a href="boardList.do?pageNum=${i}${returnpage}">[${i}]</a>
							</c:otherwise>
						</c:choose>
					</c:forEach> <!-- 다음 --> <c:if test="${endpage<pagecount}">
						<a href="boardList.do?pageNum=${startpage+10}">[다음]</a>
					</c:if>

				</td>
			</tr>

			<tr align="center">
				<td colspan="5">
					<form name="myform">
						검색 : <select name="keyfield" onchange="clearText();">
							<option value="">-----선택하세요-----</option>
							<option value="name">하비이름필드</option>
							<option value="title">하비제목필드</option>
							<option value="content">하비내용필드</option>
							<option value="">전체출력</option>
						</select> <input type="text" name="keyword" size=10> <input
							type="submit" value="검색">
					</form>
				</td>
			</tr>

		</table>








	</div>
</body>
</html>




