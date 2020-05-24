# [팀 프로젝트] 무신사
> 기존의 온라인 쇼핑몰 웹페이지의 개선점을 파악하고 유저의 입장에서 서로가 보다 편리한 레이아웃으로 변경하여 쇼핑몰 기능 구현.

> Spring으로 TIS정보통신교육센터 교육을 들으며 3차 마지막 프로젝트로 진행하였습니다.

> 2020-0424 ~ 2020-05-04

## 개발환경
* JDK 1.8.0
* Apache Tomcat 9
* Eclipse(Spring Tool Suite)
* Oracle SQL 11g
* Github
* Exerd
* JSP
* JAVA
* Jquery
* JavaScript
* HTML5
* CSS3
* Bootstrap
* MyBatis
* Interceptor
* Lombok
* EL
* JSTL
* Maven

## 주요기능<CRUD>
* 로그인<R>
* 회원가입<C>
* 회원정보조회<R>
* 회원정보수정<U>
* 탈퇴하기<D>
* 마이페이지<R>
* 인터셉터(마이페이지, 구매하기, 찜리스트)
* 고객문의 & 1:1 문의<R>
* 메인네비게이션 & 상품목록<R>
* 상품페이지<CR>
  - 구매하기 이동
  - 찜리스트에 추가하기
* 상품 리뷰 & 문의<CRUD>
* 주문 / 결제<RUD>
* 주문내역<R>
* 찜리스트<R>

## 어려웠던점
* 인터셉터 이후 전 페이지로 이동 구현
 - String referrer = request.getHeader("Referer");
    request.getSession().setAttribute("prevPage", referrer);
    return "login";
    구현

* 여러 상품리스트 전체 전달하기
 - ArrayList 구현
