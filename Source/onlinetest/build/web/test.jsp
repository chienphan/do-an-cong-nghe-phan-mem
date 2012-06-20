<%-- 
    Document   : test
    Created on : May 1, 2012, 10:16:00 AM
    Author     : Administrator
--%>

<%@page import="Model.User"%>
<%@page import="Model.Test"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n</title>

        <!-- Meta Tags -->
        <meta charset="utf-8">
        <meta name="generator" content="Wufoo">
        <meta name="robots" content="index, follow">

        <!-- CSS -->
        <link href="css/structure.css" rel="stylesheet">
        <link href="css/form.css" rel="stylesheet">

        <!-- JavaScript -->
        <script src="scripts/wufoo.js"></script>

        <!--[if lt IE 10]>
        <script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>
    <body id="public">
         <% if(session.getAttribute("message") == "login"){
            User user = (User) session.getAttribute("user");
        %>
        <div id="container" class="ltr">

            <h1 id="logo">
                <a href="" title="H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n">H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n</a>
            </h1>

            <form id="form4" name="form4" class="wufoo topLabel page" autocomplete="off" 
                  enctype="multipart/form-data" method="get" novalidate action="TestController">
                
                <header id="header" class="info">
                    <h1><%= "T&#234;n sinh vi&#234;n: " + user.getUsername() %></h1>
                    <% for(int i = 0; i < user.getListTest().size(); i++) {
                        if(user.getListTest().get(i).getID() == Integer.parseInt(session.getAttribute("testID").toString())) {
                    %>  
                    <h2><%= "B&#224;i thi: " + user.getListTest().get(i).getTestName() %></h2>
                    
                    <div>Ch&#250; &#253; th&#244;ng tin b&#224;i thi b&#234;n d&#432;&#7899;i.</div>
                </header>
                
                <ul>
                    <li>
                        <table width="auto" border="0" style="margin-left:30px">
                            <tr>
                                <td><label class="desc" for="Field4">M&#244;n: </label></td>
                                <td><div style="float:left"><%= user.getListTest().get(i).getSubjectsName() %></div></td>
                            </tr>
                            <tr>
                                <td><label class="desc" id="title5" for="Field5">S&#7889; l&#432;&#7907;ng c&#226;u: </label></td>
                                <td><div style="float:left"><%= user.getListTest().get(i).getNumberOfQuestion() + " c&#226;u" %></div></td>
                            </tr>
                            <tr>
                                <td><label class="desc" id="title6" for="Field6">Th&#7901;i gian: </label></td>
                                <td><div style="float:left"><%= user.getListTest().get(i).getTimeDoing() + " ph&#250;t" %></div></td>
                            </tr>
                        </table>
                    </li>
                    <li class="hide">
                        <input type="hidden" id="idstamp" name="testID" value="<%= user.getListTest().get(i).getID() %>" />
                    </li>
                    <li class="hide">
                        <input type="hidden" id="idstamp" name="IDUser" value="<%= user.getID() %>" />
                    </li>
                    <li class="hide">
                        <input type="hidden" id="idstamp" name="username" value="<%= user.getUsername() %>" />
                    </li>
                    <li class="hide">
                        <input type="hidden" id="idstamp" name="permission" value="<%= user.getPermission() %>" />
                    </li>
                    <li class="hide">
                        <input type="hidden" id="idstamp" name="state" value="doing" />
                    </li>
                    <li class="buttons ">
                    <% } 
                    }%>
                        <div>
                            <input id="saveForm" name="submit" class="btTxt submit" type="submit" value="B&#7855;t &#273;&#7847;u l&#7857;m b&#224;i" />
                            <input name="back" type="button" value="Tr&#7903; l&#7841;i"  onClick="history.go(-1);return true;">
                        </div>
                    </li>
                </ul>
              
            </form> 
        </div><!--container-->
        <% } else {%>
    <meta http-equiv="Refresh" content="0 ; URL=index.jsp" />
    <%}%>
    </body>
</html>