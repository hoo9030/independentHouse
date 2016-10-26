<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
=======
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

>>>>>>> af06a1d5417a27647df5b3839917b6ae69eae788
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

<script src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
      
      // This code generates a "Raw Searcher" to handle search queries. The Raw 
      // Searcher requires you to handle and draw the search results manually.
      google.load('search', '1');

      var newsSearch;

      function searchComplete() {

        // Check that we got results
        document.getElementById('content').innerHTML = '';
        if (newsSearch.results && newsSearch.results.length > 0) {
          for (var i = 0; i < newsSearch.results.length; i++) {

            // Create HTML elements for search results
            var p = document.createElement('p');
            var a = document.createElement('a');
            a.href="/news-search/v1/newsSearch.results[i].url;"
            a.innerHTML = newsSearch.results[i].title;

            // Append search results to the HTML nodes
            p.appendChild(a);
            document.body.appendChild(p);
          }
        }
      }

      function onLoad() {

        // Create a News Search instance.
        newsSearch = new google.search.NewsSearch();
  
        // Set searchComplete as the callback function when a search is 
        // complete.  The newsSearch object will have results in it.
        newsSearch.setSearchCompleteCallback(this, searchComplete, null);

        // Specify search quer(ies)
        newsSearch.execute('에너지자립');

        // Include the required Google branding
        google.search.Search.getBranding('branding');
      }

      // Set a callback to call your code when the page loads
      google.setOnLoadCallback(onLoad);
    </script>


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
          <li class="active"><a href="index.jsp">홈</a></li>
<<<<<<< HEAD
          <li><a href="about.jsp">개요</a></li>
          <li><a href="about.html">시작하기</a></li>
          <li><a href="board">게시판</a></li>
          <li><a data-toggle="modal" href="#myModal">login</a></li>
=======
          <li><a href="about">개요</a></li>
          <li><a href="start">시작하기</a></li>
          <li><a href="board">게시판</a></li>
          <c:if test="${user eq null }">
          <li><a data-toggle="modal" href="#myModal">로그인</a></li>
          </c:if>
          <c:if test="${user ne null }">
          <li>${user }님 환영합니다</li>
          <li><a href="logout">로그아웃</a></li>         
          </c:if>
>>>>>>> af06a1d5417a27647df5b3839917b6ae69eae788
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <img src="images/footertrees.gif" width="100%" height="100%" alt="" class="ctop" style=""/>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
		<p style="font-size: 25px">관련 뉴스</p>
    <div id="branding"  style="float: left;"></div><br />
    <div id="content">Loading...</div>
<div class="gs-result gs-newsResult">

 <!-- Note, a.gs-title can have embedded HTML
 // so make sure to account for this in your rules.
 // For instance, to change the title color to red,
 // use a rule like this:
 // a.gs-title, a.gs-title * { color : red; }
 -->
 <div class="gs-title">
  <a class="gs-title"></a>
 </div>
 <div class="gs-publisher"></div>

 <!-- The default CSS rule enables the relative
 // published date while a result is sitting in
 // a search control, and an absolute published date
 // if the result is outside of the control. Using your
 // own CSS rule, you can select whichever date form
 // works best for your pages.
 -->
 <div class="gs-publishedDate"></div>
 <div class="gs-relativePublishedDate"></div>

 <div class="gs-snippet"></div>

 <!-- If a result is related to other
 // articles, this element is present.
 -->
 <div class="gs-clusterUrl">
  <a class="gs-clusterUrl"></a>
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
<<<<<<< HEAD
        <input type="submit" value="로그인"/><a href="signup.jsp">회원가입</a>
        </form>
=======
        <input type="submit" value="로그인"/>
        </form>
        <a href="signup">회원가입</a>
>>>>>>> af06a1d5417a27647df5b3839917b6ae69eae788
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
      </div>
    </div>

  </div>
</div>
</html>
