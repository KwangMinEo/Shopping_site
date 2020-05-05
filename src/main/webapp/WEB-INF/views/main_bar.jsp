
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>main_bar</title>

<link rel="stylesheet" href="./resources/css/Home_css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />



<script src="http://malsup.github.com/jquery.cycle2.js"></script>

<script type="text/javascript">
	$(window).ready(function() {
		var sessionCK = "${userId}";
		if (sessionCK == "" || sessionCK == "null" || sessionCK == null) {
			$(document).ready(function() {
				$('.user_out').show()
				$('.user_in').hide()
			});
		} else {
			$(document).ready(function() {
				$('.user_out').hide()
				$('.user_in').show()
			});
		}
	});
</script>
</head>

<body>


	<!-- 상단메뉴 -->
	<div id="main_menu">
		<div class="top_menu">
			<a class="logo" href="home.do">
				<img alt="MUSINSA" src="./resources/images/musinsa_main_logo2.png">
			</a>
			<div class="search">
				<span class="new_search1">
					<form action="" method="post" name="search">
						<fieldset class="new_search2">
							<input name="search" onkeydown="CheckKey_search();" value=""
								class="MS_search_word search_top1" /> <a class="text-secondary"
								href="javascript:search_submit();"><i class="fa fa-search"
								aria-hidden="true"></i></a>
						</fieldset>
					</form>
				</span>
			</div>


			<div class="user_action pull-right">
				<ul class="user_out">
						<li class="sign in"><a class="text-secondary" href=""> <i
								class="fa fa-arrow-right" aria-hidden="true"> 회원가입</i>
						</a></li> |
						<li class="login"><a class="text-secondary" href="login.do">
								<i class="fa fa-sign-in" aria-hidden="true"> 로그인</i>
						</a></li>
					</ul>
					<ul class="user_in">
						<li class="membership"><a class="text-secondary"
							href="my_page.do"> <i class="fa fa-user-circle-o"
								aria-hidden="true"> 마이페이지</i>
						</a></li> |
						<li class="logout"><a class="text-secondary" href=""> <i
								class="fa fa-share" aria-hidden="true"> 로그아웃</i>
						</a></li>
			</div>
		</div>


		<!-- 하단메뉴 -->
		<div class="bottom_menu">
			<ul class="b_list">
				<li><a class="text-secondary" href="">NEW</a></li>
				<li><a class="text-secondary" href="">BEST</a></li>
				<li><a class="text-secondary" href="">상의</a></li>
				<li><a class="text-secondary" href="">하의</a></li>
				<li><a class="text-secondary" href="">아우터</a></li>
				<li><a class="text-secondary" href="">신발</a></li>
				<li><a class="text-secondary" href="">가방</a></li>
				<li><a class="text-secondary" href="">악세사리</a></li>
			</ul>


		</div>
	</div>
</body>

</html>
