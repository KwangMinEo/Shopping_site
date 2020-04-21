<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>  
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>main_bar</title>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/Home_css(bootstrap).css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://malsup.github.com/jquery.cycle2.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</head>


<body>

    <header class="main_menu">
        <!-- position:absolute;-->
        <nav>
            <div class="top_menu">
            	<div class="logo">
            		<a href="home.do"><img alt="MUSINSA" src="./resources/images/musinsa_main_logo1.png"></a>
            	</div>
            	<div class="search">
            		<span class="new_search1"> <form action="" method="post" name="search">
            		<fieldset>
                        <input name="search" onkeydown="CheckKey_search();" value=""  class="MS_search_word search_top1" />
							<a href="javascript:search_submit();"><i class="fa fa-search" aria-hidden="true"></i></a>
                    </fieldset>
                </form></span>
            	</div>
            	<div class="login">
            		<a href="">가입하기</a>
            	</div>
            
            </div>
            
            <div class="bottom_menu">
                <ul>
                    <li><a href="">NEW</a></li>
                    <li><a href="">상의</a></li>
                    <li><a href="">하의</a></li>
                    <li><a href="">아우터</a></li>
                    <li><a href="">잡화</a></li>
                </ul>
            </div>
        </nav>
    </header>

</body></html>
