<%-- 
    Document   : index
    Created on : Apr 26, 2012, 9:43:00 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    <%  if ( session.getAttribute("message") == "Invalid username or password!") {%>
            <h1><%= session.getAttribute("message")%></h1>
                <% session.setAttribute("message", null);%>
            <meta http-equiv="Refresh" content="2 ; URL=user.jsp" />
            <%  }else if (session.getAttribute("message") == "login" && !session.getAttribute("permission").equals("0") ){%>
            <meta http-equiv="Refresh" content="0 ; URL=user.jsp" />
    
    <%  }else if (session.getAttribute("message") == "login" && session.getAttribute("permission").equals("0") ){%>
            <meta http-equiv="Refresh" content="0 ; URL=admin.jsp" />
    <%  }   else{    %>
        <div id="container" class="ltr"><!--container-->

        <h1 id="logo">
        <a href="" title="Hệ thống trắc nghiệm trực tuyến">Hệ thống trắc nghiệm trực tuyến</a>
        </h1>
        <div id="login">
            <form id="form1" name="form1" action="PersonController" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="get" novalidate>

                <header id="header" class="info">
                    <h2>Đăng nhập</h2>
                    <div>Đăng nhập vào hệ thống bằng form bên dưới</div>
                </header>

                <table width="100%" border="0">
        <tr>
            <td width="35%">&nbsp;</td>
            <td>
                <ul id="login" >

                    <li id="login" class="notranslate">
                        <label class="desc" id="title1" for="Field1">
                        Tên đăng nhập
                        </label>
                        <div>
                            <input id="Field1" name="name" type="text" class="field text large" value="Nhập t&ecirc;n" maxlength="50" tabindex="1" onKeyUp="validateRange(1, 'character');" />
                        </div>
                    </li>
                    <li id="login" class="notranslate">
                        <label class="desc" id="title2" for="Field2">
                        Mật khẩu
                        </label>
                        <div>
                        <input id="Field2" name="pass" type="password" class="field text large" value="" maxlength="255" tabindex="2" onKeyUp="validateRange(2, 'word');" />
                        </div>
                    </li>

                    <li id="login" class="buttons ">
                        <div>
                        <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Đăng nhập"/>
                        </div>
                    </li>   
                    <li class="hide">
                            <input type="hidden" id="idstamp" name="comment" value="login" />
                    </li>

                </ul>
            </td>
            <td width="35%">&nbsp;</td>
        </tr>
        </table>

        </form> 
        </div>
    <%}%>
    </body>
</html>
