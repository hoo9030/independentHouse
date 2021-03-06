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

<div class="bbs_box">
	<div class="bbs_list">
		<table class="list" summary="공지사항 게시판의 번호, 제목, 첨부, 작성일, 조회수 에 대한 설명입니다.">
			<caption>공지사항 게시판</caption>
			<colgroup>
				<col width="10%">
				
				<col width="*">
				<col width="10%">
				<col width="10%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
				    <th scope="col">번호</th>
					
			        <th scope="col">제목</th>
			        <th scope="col">첨부</th>
			        <th scope="col">작성일</th>
			        <th scope="col" style="border-right: none;">조회수</th>
			    </tr>
			</thead>
			<tbody>
				
				
					
						
				
			</tbody>
		</table>
	</div>
                  
	<div class="paging">
	    <a href="#" onclick="javascript:fncGoPage(1); return false;" class="ico_first"><span class="hide">처음페이지</span></a> <a href="#" onclick="javascript:fncGoPage(1); return false;" class="ico_prev"><span class="hide">전페이지</span></a> <a href="#" class="on">1</a> <a href="#" onclick="javascript:fncGoPage(2); return false;">2</a> <a href="#" onclick="javascript:fncGoPage(3); return false;">3</a> <a href="#" onclick="javascript:fncGoPage(4); return false;">4</a> <a href="#" onclick="javascript:fncGoPage(5); return false;">5</a> <a href="#" onclick="javascript:fncGoPage(6); return false;">6</a> <a href="#" onclick="javascript:fncGoPage(7); return false;">7</a> <a href="#" onclick="javascript:fncGoPage(8); return false;">8</a> <a href="#" onclick="javascript:fncGoPage(9); return false;">9</a> <a href="#" onclick="javascript:fncGoPage(10); return false;">10</a> <a href="#" onclick="javascript:fncGoPage(11); return false;" class="ico_next"><span class="hide">뒷페이지</span></a> <a href="#" onclick="javascript:fncGoPage(32); return false;" class="ico_last"><span class="hide">마지막페이지</span></a>

	</div>
</div>

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