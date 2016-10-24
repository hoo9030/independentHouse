<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>에너지 독립주택 프로젝트</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
</head>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  x[slideIndex-1].style.display = "block";
}
</script>

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
          <li><a href="support.html">개요</a></li>
          <li><a href="about.html">시작하기</a></li>
          <li><a href="blog.html">게시판</a></li>
          <li><a href="contact.html">login</a></li>
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <img src="images/footertrees.gif" width="100%" height="100%" alt="" class="ctop" style=""/>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>aaa</span></h2>
          <p>Posted by <a href="#">Owner</a> | Filed under <a href="#">templates</a>, <a href="#">internet</a></p>
          <p>This is a free CSS website template by BlueWebTemplates. This work is distributed under the <a href="http://creativecommons.org/licenses/by/3.0/">Creative Commons Attribution 3.0 License</a>, which means that you are free to use it for any personal or commercial purpose provided you credit me in the form of a link back to BlueWebTemplates.com.</p>
          <p><a href="#">Read more</a> | March 16, 2015</p>
        </div>
        <div class="article">
          <h2><span>Lorem Ipsum</span> Dolor Sit</h2>
          <p>Posted by <a href="#">Owner</a> | Filed under <a href="#">templates</a>, <a href="#">internet</a></p>
          <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. <a href="#">Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu posuere nunc justo tempus leo.</a> Donec mattis, purus nec placerat bibendum, dui pede condimentum odio, ac blandit ante orci ut diam. Cras fringilla magna. Phasellus suscipit, leo a pharetra condimentum, lorem tellus eleifend magna, eget fringilla velit magna id neque. Curabitur vel urna. In tristique orci porttitor ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. Cras id urna. Morbi tincidunt, orci ac convallis aliquam.</p>
          <p><a href="#">Read more</a> | March 15, 2015</p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="#">TemplateInfo</a></li>
            <li><a href="#">Style Demo</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Archives</a></li>
            <li><a href="#">Website Templates</a></li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sponsors</span></h2>
          <ul class="ex_menu">
            <li><a href="#">DreamTemplate</a><br />
              Over 6,000+ Premium Web Templates</li>
            <li><a href="#">TemplateSOLD</a><br />
              Premium WordPress &amp; Joomla Themes</li>
            <li><a href="#">ImHosted.com</a><br />
              Affordable Web Hosting Provider</li>
            <li><a href="#">DreamStock</a><br />
              Download Amazing Stock Photos</li>
            <li><a href="#">Evrsoft</a><br />
              Website Builder Software &amp; Tools</li>
            <li><a href="#">MyVectorStore</a><br />
              Royalty Free Stock Icons</li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>


</div>



<div align=center>This template  downloaded form <a href='http://all-free-download.com/free-website-templates/'>free website templates</a></div></body>
</html>
