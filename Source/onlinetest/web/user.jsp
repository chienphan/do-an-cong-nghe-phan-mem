<%-- 
    Document   : user
    Created on : Apr 28, 2012, 12:26:31 PM
    Author     : Administrator
--%>

<%@page import="Model.User"%>
<%@page import="Model.TestOfUser"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        
        <title>
        H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n
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
            User user = (User) session.getAttribute("user");
        %>
        <div id="container" class="ltr">

            <h1 id="logo">
                <a href="" title="H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n">H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n</a>
            </h1>
            
            <form id="form3" name="form3" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="get" novalidate
action="PersonController">

                <header id="header" class="info">
                    <div><h2>Danh s&#225;ch c&#225;c b&#224;i thi tr&#7855;c nghi&#7879;m c&#7911;a: </h2><h1><%= user.getUsername() %></h1></div>
                    <div>(<a href="PersonController?comment=logout">&#273;&#259;ng xu&#7845;t</a> | &#273;&#7893;i m&#7853;t kh&#7849;u)</div>
                    <div>B&#7841;n h&#227;y ch&#7885;n b&#224;i thi trong danh s&#225;ch d&#432;&#7899;i</div>
                    
                    
                </header>

        <ul>
            <li id="foli111" class="likert notranslate col3 ">
                <table cellspacing="0">
                    <caption id="title111">Danh s&#225;ch b&#224;i thi tr&#7855;c nghi&#7879;m</caption>
                    <thead>
                        <tr>
                            <th><div align="center">&#272;&#7873; thi</div></th>
                                <td >M&#244;n</td>
                                <td >S&#7889; c&#226;u</td>
                                <td >Th&#7901;i gian (ph&#250;t)</td>
                                <td >Ghi ch&#250;</td>
                        </tr>
                    </thead>
                    
                    <tbody>
                    <%
                        for(int i = 0; i < user.getListTest().size(); i++){                            
                    %>
                        <tr class="statement111">
                            <%  if(user.getListTest().get(i).getDone() == 0){
                            %>
                                    <th>
                                        <label for="Field111">
                                <a href="TestController?state=test&username=<%= user.getUsername() %>&permission=<%= user.getPermission() %>&testID=<%= user.getListTest().get(i).getID() %>&IDUser=<%= user.getID() %>"> <%= user.getListTest().get(i).getTestName() %></a>
                                           
                                        </label>
                                    </th>
                            <%
                            } 
                            else {
                            %>
                                    <th><label for="Field111"><%= user.getListTest().get(i).getTestName().toString() %></label></th>
                            <%
                            }
                            %>
                            <td title="M&#244;n"><label for="Field111_1"><%= user.getListTest().get(i).getSubjectsName().toString() %></label></td>
                            <td title="S&#7889; c&#226;u"><label for="Field111_2"><%= user.getListTest().get(i).getNumberOfQuestion() %></label></td>
                            <td title="Th&#7901;i gian"><label for="Field111_3"><%= user.getListTest().get(i).getTimeDoing() %></label></td>
                            <td title="Ghi ch&#250;"><label for="Field111_4"><% if(user.getListTest().get(i).getDone() == 0){  %>
                                    <%= "Ch&#432;a l&#224;m" %>
                                    <%
                                        }
                                            else {
                                    %>
                                            <%= user.getListTest().get(i).getScores() + " &#273;i&#7875;m"%>
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
                    <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Tho&#225;t"/>
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
