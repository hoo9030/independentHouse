<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>GreenWorld | About</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
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

		<p style="font-size: 30px">전기요금을 어떻게하면 줄일수 있을까요?</p>
		<div><a href="https://www.homify.co.kr/photo/459820/rear" target="_blank"><img alt="MZO TARR Architects의 모던 주택" src="https://res.cloudinary.com/homify/a_0,c_fill,h_316,q_70,w_316/v1439022856/p/photo/image/459820/residential_2.jpg"/></a></div>
		<p>여러분은 평소 전기를 얼마나 사용하시나요? 혹시 매달 맞는 전기료 폭탄에 힘들어 하고계시진 않으셨습니까?</p>
		<p>여러분은 그동안 요금을 줄이기 위해 어떤노력을 하셨습니까? 또한 요금을 줄이는 방법은 어떤 방법들이 있을까요?</p>
		<p>현재로써 가장 효율적인 방법이자 상식적으로 드는 생각은 사용량을 줄이는 것입니다.</p>
		<p>하지만 사용량을 줄이는 것은 의외로 그리 쉽지는 않습니다. 특히나 건축된지 오래된 집의 경우 자체 냉난방 기능이 상당히 부실한 상태기 때문에 냉난방을 지속적으로 떼워야합니다.</p>
		<p>직업 특성장 집안에 전자제품이 많은 가정의 경우도 전기사용량이 많을 수밖에 없습니다.</p>
		<p style="font-size: 30px">친환경시대, 이제 스스로 전기를 만들어 사용한다</p>
		<img src="images/태양전지.gif" width="50%"/>
		<p>그렇다면 방법이 없을까요?</p>
		<p>주요 문제는 '전기요금과 사용량을 줄이는 것'에 맞추어져 있습니다.</p>
		<p>보통 일반적인 가정의 경우 한전 등의 전력회사로부터 전력을 공급받아 사용량에 따른 사용료를 지불하는 방식으로 구성되어 있습니다.</p>
		<p>바로 이 전력회사로부터 전기를 공급받지 않고 스스로 전기를 생산하고 소비하는 방법입니다.</p>
		<p>최근 화석연료등의 과도한 사용으로 인해 지구온난화 등 환경문제가 대두됨에 따라 친환경적인 신재생에너지 발전으로의 트렌드가 변화하고 있습니다</p>
		<p>이에 따라 신재생에너지 산업이 각광을 받고있는 상황입니다.</p>
		<p>국가적으로도 이를 주도하고 있고, 각종 단체와 여론 등등에서 지원 및 장려정책등을 시행하고 있습니다</p>
		<p>여러분들도 이에 편승해서 충분히 이러한 혜택을 보실수있습니다</p>
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
