<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta>
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
          <li class="active"><a href="about">개요</a></li>
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
      
      <p style="font-size: 30px">계획 결과</p>
      <table border="1" style="width: 75%; height: 75px">
      <thead style="background-color: #00C0FF;text-align: center; ">
      <tr>
      <td>원 전력요금</td>
      <td>절감되는 전력 소비량</td>
      <td>목표치</td>
      <td>절약되는 전기요금</td>
      <td>결과</td>
      </tr>
      </thead>
      <tbody style="text-align: center; " >
      <tr>
      <td>${currentFee}</td>
      <td> ${reduction }</td>
      <td>${target }</td>
      <td>${currentFee - resultFee}</td>
      <td> ${resultFee }</td>
      </tr>
      </tbody>
      </table>
      <p>귀하님 가정에서 ${currentBudget }원의 예산으로 선택하신 해당 제품을 최대 ${times }개 까지 구매하실 수 있고</p>
      <p>이에따라 절감되는 전력 소비량은 ${reduction }kWh로,</p>
      <c:if test="${reduction >= target }">
      <p>목표치인 ${target }kWh를 만족시켰으며, 이를 적용하여 전기요금을 계산해보면 ${resultFee }원으로,</p>
      <p>총 ${currentFee - resultFee}원을 절약하실수 있습니다.
      </c:if>
      <c:if test="${reduction <= target }">
      <p>목표치인 ${target }kWh에는 만족하지 못하였고, 이를 적용하여 전기요금을 계산해보면 ${resultFee }원으로,</p>
      <p>총 ${currentFee - resultFee}원을 절약하실수 있습니다.</p>
      </c:if>
      
      <p>각각 수치들의 경우 계산상의 오차로 인하여 조금씩 차이가 날 수 있습니다.</p>
      
      <p style="font-size: 20px">만족하십니까? 목표치에 만족하지 못하셨다면 다른 제품으로도 여러번 시도해 보셔서 비교해보시기 바랍니다. 선택하는건 여러분의 몫입니다.</p> 
      <a href="next">계속하기</a>
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