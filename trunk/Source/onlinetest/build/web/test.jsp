<%-- 
    Document   : test
    Created on : May 1, 2012, 10:16:00 AM
    Author     : Administrator
--%>

<%@page import="Model.User"%>
<%@page import="Model.Test"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hệ thống trắc nghiệm trực tuyến</title>

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
        <div id="container" class="ltr">

            <h1 id="logo">
                <a href="" title="Hệ thống trắc nghiệm trực tuyến">Wufoo</a>
            </h1>

            <form id="form4" name="form4" class="wufoo topLabel page" autocomplete="off" 
                  enctype="multipart/form-data" method="get" novalidate action="TestController">
                <%
                    if ((session.getAttribute("test") != null) && (session.getAttribute("user") != null)){
                        Test test = (Test) session.getAttribute("test");
                        User user = (User) session.getAttribute("user");
                %>
                <header id="header" class="info">
                    <h1><%= "Tên sinh viên: " + user.getUsername() %></h1>
                    <h2><%= "Bài thi:" + test.getTestName() %></h2>
                    <div>Chú ý thông tin bài thi bên dưới.</div>
                </header>
                
                <ul>
                    <li>
                        <table width="auto" border="0" style="margin-left:30px">
                            <tr>
                                <td><label class="desc" for="Field4">Môn: </label></td>
                                <td><div style="float:left"><%= test.getSubjectsName() %></div></td>
                            </tr>
                            <tr>
                                <td><label class="desc" id="title5" for="Field5">Số lượng câu: </label></td>
                                <td><div style="float:left"><%= test.getNumberOfQuestion() + " câu" %></div></td>
                            </tr>
                            <tr>
                                <td><label class="desc" id="title6" for="Field6">Thời gian: </label></td>
                                <td><div style="float:left"><%= test.getTimeDoing()/60000 + " phút" %></div></td>
                            </tr>
                        </table>
                    </li>
                    <li class="buttons ">
                        <div>
                            <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Bắt đầu làm bài" />
                            <input name="back" type="button" value="Back"  onClick="history.go(-1);return true;">
                        </div>
                    </li>
                </ul>
                <%
                    }
                %>
            </form> 
        </div><!--container-->
    </body>
</html>
