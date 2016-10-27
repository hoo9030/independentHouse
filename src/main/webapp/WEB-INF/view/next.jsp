<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
          <li class="active"><a href="board">게시판</a></li>
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
<p style="font-size: 40px">계획 수립</p>
<form action="calculate" method="post">
<p>앞서 확인하신 평균전력 사용량을 입력하세요 <input type="text" name="current">kWh</p>
<p style="font-size: 30px">◆ 목표 설정</p>
<p>최소한 얼마만큼의 전기사용량을 줄이는걸 목표로 하는지를 적어주세요 <input type="text" name="target">kWh</p>
<p style="font-size: 30px">◆ 예산 설정</p>
<p>최대한 사용할수 있는 예산을 적어주시기 바랍니다. <input type="text" name="budget">원</p>
<p style="font-size: 30px">◆ 기능 설정</p>
<p>현재는 태양광 기능밖에 지원되지 않습니다. 추후에 여러가지 기능을 추가할 예정입니다.</p>

<input type="checkbox" checked="checked" disabled="disabled">태양광
<input type="checkbox" name="LED">LED교체

<p style="font-size: 30px">◆변수 설정</p>
<p>각자 원하는 태양광 패널을 선택해 보세요. 모든 제품 수치는 임의적으로 설정한 것임을 알려드립니다. 알아보신 제품이 있다면 수치를 직접 입력할수도 있습니다.</p>
<select>
<option value="1">L사 100W 200,000원</option>
<option value="3">S사 300W 2,400,000원</option>
<option value="4">T사 250W 730,000원</option>
</select>
직접입력 : <input type="text" name="power">W<input type="text" name="price">원

<input type="submit" value="계산">

</form>
<p style="font-size: 30px">엑셀을 이용하여 간단하게 계획하기</p>
<p>Microsoft Excel의 해찾기 기능을 이용하여 비교적 간단하게 계획을 수립할수 있습니다.</p>
<p>만약 귀하님께서 엑셀을 잘 다루신다면, 오히려 이 방법이 더 유용할 수 이습니다.</p>
<p><a>다운로드</a></p>
<p>엑셀의 해찾기 기능 튜토리얼 : <a href="https://support.office.com/ko-kr/article/%ED%95%B4-%EC%B0%BE%EA%B8%B0%EB%A5%BC-%EC%82%AC%EC%9A%A9%ED%95%98%EC%97%AC-%EB%AC%B8%EC%A0%9C-%EC%A0%95%EC%9D%98-%EB%B0%8F-%ED%92%80%EA%B8%B0-9ed03c9f-7caf-4d99-bb6d-078f96d1652c#bm2">바로가기</a></p>

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