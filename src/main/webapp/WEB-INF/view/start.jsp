<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.jsp" style="color: #CCC;">IndependentHome</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.jsp">홈</a></li>
          <li><a href="about">개요</a></li>
          <li><a href="start">시작하기</a></li>
          <c:if test="${user eq null }">
          <li><a data-toggle="modal" href="#myModal">로그인</a></li>
          </c:if>
          <c:if test="${user ne null }">
          <li>${user }님 환영합니다</li>
          <li><a href="logout">로그아웃</a></li>         
          </c:if>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <img src="images/footertrees.gif" width="100%" height="100%" alt="" class="ctop" style=""/>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">

		<p style="font-size: 40px">시작하기에 앞서</p>
		<p>우선 여러분이 전기를 얼마나 사용하는지를 알아야 합니다. 전기사용량을 조회하는 방법은 한국전력공사 사이버지점에서 확인하실수 있습니다.</p> 
		<a href="https://cyber.kepco.co.kr/ckepco/front/jsp/CY/E/A/CYEAPP004.jsp">사이버지점 바로가기</a>	
		<br>
		<p>관련 블로그 : <a href="http://hajunggu.blog.me/220309498282">http://hajunggu.blog.me/220309498282</a></p>
		전기사용량을 조회하셨다면 다음으로 넘어가서 본격적으로 계획을 시작하세요<a href="next">다음으로</a>	
      </div>
      <div class="sidebar">
        <div class="gadget">
          <ul class="sb_menu">
          <li><a href="http://home.kepco.co.kr/kepco/main.do"><img alt="" src="images/S_05.jpg" width="100%"></a></li>
          <li><a href="http://www.kemco.or.kr/web/kem_home_new/new_main.asp"><img alt="" src="images/tab3.gif" width="100%"></a></li>
          <li><a href="http://www.kier.re.kr/"><img alt="" src="images/KIER(L).jpg" width="100%"></a></li>
          <li><a href="http://blog.naver.com/energyplanet">한국원자력문화재단 공식 블로그</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
</div>
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog modal-sm">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title" style="text-align: center;">Login</h4>
      </div>
      <div class="modal-body">
      <form action="login" method="post">
        아이디  &nbsp;&nbsp; <input type="text" name="id"/><br>
        비밀번호 <input type="text" name="password"/><br>
        <input type="submit" value="로그인"/><a href="signup">회원가입</a>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>

  </div>
</div>

</body>
</html>