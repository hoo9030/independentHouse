<!DOCTYPE html>

<%@page import="java.io.FileWriter"%>
<%@page import="java.io.File"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>



<html>
<head>
<title>에너지 독립주택 프로젝트</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css"> -->

</head>

<%
String clientId = "b8vqc7oYuPyf57aspUDT";
String clientSecret = "jK1JgKwzVk";
try {
	
String text = URLEncoder.encode("전기요금", "UTF-8");
String apiURL = "https://openapi.naver.com/v1/search/news.xml?query="+ text +"&start=1&display=5";
URL url = new URL(apiURL);
HttpURLConnection con = (HttpURLConnection)url.openConnection();
con.setRequestMethod("GET");
con.setRequestProperty("X-Naver-Client-Id", clientId);
con.setRequestProperty("X-Naver-Client-Secret", clientSecret);
// response 수신
int responseCode = con.getResponseCode();
System.out.println("responseCode="+ responseCode);
if(responseCode==200) {
BufferedReader in = new BufferedReader(new InputStreamReader(con.getInputStream()));
String inputLine;
StringBuffer res = new StringBuffer();
while ((inputLine = in.readLine()) != null) {
res.append(inputLine);
}
in.close();
System.out.println(res.toString());
} else {
System.out.println("API 호출 에러 발생 : 에러코드=" + responseCode);
}
} catch (Exception e) {
System.out.println(e);
}

%>

<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.jsp" style="color: #CCC;">IndependentHome</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.jsp">홈</a></li>
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
      <div class="mainbar" >
      
      <table>
      <tr>
      <td><img src="images/b0080420_54d0fb5d9e951.jpg" width="100%"/></td>
      <td><img src="images/main_01-1.jpg" width="100%"/></td>      
      </tr>
      </table>
		
	  <p style="font-size: 30px">관련뉴스 및 칼럼</p>
	  
	  <p style="font-size: 15px">에너지 독립을 꿈꾼다<a href="http://blog.naver.com/energyplanet/220319708861">http://blog.naver.com/energyplanet/220319708861</a></p>
	  <p style="font-size: 15px">한전 사용량 '0'에너지 독립하우스를 가다<a href="http://www.ohmynews.com/NWS_Web/View/at_pg.aspx?CNTN_CD=A0002042430">http://www.ohmynews.com/NWS_Web/View/at_pg.aspx?CNTN_CD=A0002042430</a></p>		
      <p style="font-size: 15px">‘요금 폭탄’ 누진제의 진실…기업용 전기요금 못 올리는 진짜 이유
<a href="http://news.donga.com/3/03/20160813/79742422/1#csidx1e6142c3c253ff0bb6e3bcea76ca225">http://news.donga.com/3/03/20160813/79742422/1#csidx1e6142c3c253ff0bb6e3bcea76ca225</a> </p>
      
      </div>
      <div class="sidebar">
        <div class="gadget">
        	<p style="font-size: 30px">사이트 바로가기</p>
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
        <input type="submit" value="로그인"/>
        </form>
        <a href="signup">회원가입</a>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>

  </div>
</div>
</body>
</html>
