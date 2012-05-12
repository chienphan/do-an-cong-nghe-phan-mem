<%-- 
    Document   : user
    Created on : Apr 28, 2012, 12:26:31 PM
    Author     : Administrator
--%>

<%@page import="Model.TestOfUser"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <title>
        Hệ thống trắc nghiệm trực tuyến
        </title>

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
        %>
        <div id="container" class="ltr">

            <h1 id="logo">
                <a href="" title="Hệ thống trắc nghiệm trực tuyến">Hệ thống trắc nghiệm trực tuyến</a>
            </h1>
            
            <form id="form3" name="form3" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="get" novalidate
action="PersonController">

                <header id="header" class="info">
                    <div><h2>Danh sách các bài trắc nghiệm của </h2><h1><%= session.getAttribute("username")%></h1></div>
                    <div>(đăng xuất | đổi mật khẩu)</div>
                    <div>Bạn hãy chọn bài thi trong danh sách dưới</div>
                    
                    
                </header>

        <ul>
            <li id="foli111" class="likert notranslate col3 ">
                <table cellspacing="0">
                    <caption id="title111">Danh sách các bài thi trắc nghiệm</caption>
                    <thead>
                        <tr>
                            <th><div align="center">Đề thi</div></th>
                                <td >Môn</td>
                                <td >Số câu</td>
                                <td >Thời gian (phút)</td>
                                <td >Ghi chú</td>
                        </tr>
                    </thead>
                    
                    <tbody>
                    <%
                        ArrayList<TestOfUser> myList = (ArrayList<TestOfUser>) session.getAttribute("listtest");  
                        for(int i = 0; i < myList.size(); i++){                            
                    %>
                        <tr class="statement111">
                            <%  if(myList.get(i).getDone() == 0){
                            %>
                                    <th>
                                        <label for="Field111">
                                            <a href="TestController?userID=<%= session.getAttribute("userID") %>&testID=<%= myList.get(i).getID() %>"><%= myList.get(i).getTestName().toString() %>
                                            </a>
                                        </label>
                                    </th>
                            <%
                            } 
                            else {
                            %>
                                    <th><label for="Field111"><%= myList.get(i).getTestName().toString() %></label></th>
                            <%
                            }
                            %>
                            <td title="Môn"><label for="Field111_1"><%= myList.get(i).getSubjectsName().toString() %></label></td>
                            <td title="Số c&acirc;u"><label for="Field111_2"><%= myList.get(i).getNumberOfQuestion() %></label></td>
                            <td title="Thời gian"><label for="Field111_3"><%= myList.get(i).getTimeDoing()/(60000) %></label></td>
                            <td title="Ghi ch&uacute;"><label for="Field111_4"><% if(myList.get(i).getDone() == 0){  %>
                                    <%= "Chưa làm" %>
                                    <%
                                        }
                                            else {
                                    %>
                                            <%= myList.get(i).getScores() %>
                                    <%
                                        }
                                    %>
                            </label></td>
                        </tr>
                    <%
                        }
                    %>
                    </tbody>
                </table>
            </li>
            <li class="buttons ">
                <div>
                    <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Thoát"/>
                </div>
            </li>
            <li class="hide">
                <input type="hidden" id="idstamp" name="comment" value="logout" />
            </li>
        </ul>
</form> 

</div><!--container-->

<%}else {%>
    <meta http-equiv="Refresh" content="0 ; URL=index.jsp" />
    <%}%>
</body>
</html>
