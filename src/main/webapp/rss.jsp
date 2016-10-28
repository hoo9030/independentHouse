<%@page import="org.jdom2.Element"%>
<%@page import="org.jdom2.Document"%>
<%@page import="org.jdom2.input.SAXBuilder"%>
<%@ page language="java"
    contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.net.URL" %>
<%@ page import="java.util.List" %>
<%@ page import="org.xml.sax.InputSource" %>
 
<%
    List list = null;
 
    try{
        SAXBuilder parser = new SAXBuilder();
        parser.setValidation(false);
        parser.setIgnoringElementContentWhitespace(true);
        //URL url = new URL("http://jsp.picomax.net/rss/sample.xml");
        URL url = new URL("http://rss.hankooki.com/news/hk00_list.xml");
        InputSource is = new InputSource(url.openStream());
        Document doc = parser.build(is);
 
        Element root = doc.getRootElement();
        Element channel = root.getChild("channel");
        list = channel.getChildren("item");
    }catch(Exception e){
        e.getStackTrace();
    }
%>
 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>RSS 열라 파씽</title>
</head>
 
<body>
 
<ul>
 
<%
    if(list!=null){
        for(int i=0; i<list.size(); i++){
            Element el = (Element) list.get(i);
%>
    <li><a href='<%=el.getChildText("link")%>' target=_news>
        <%=el.getChildText("title")%></a></li>
<%
        }
    }else{
%>
    <li>잠시 후 다시 접속하여 주십시오.</li>
<%
    }
%>
</ul>
 
</body>
 
</html>

[출처] http://hooni.net/2164

