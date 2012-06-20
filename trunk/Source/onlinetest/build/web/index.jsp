<%-- 
    Document   : index
    Created on : Apr 26, 2012, 9:43:00 AM
    Author     : Administrator
--%>

<%@ page language="java" pageEncoding="UTF-8" contentType="text/html charset=UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        <a href="" title="H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n">H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n</a>
        </h1>
        <div id="login">
            <form id="form1" name="form1" action="PersonController" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="get" novalidate>

                <header id="header" class="info">
                    <h2>&#272;&#259;ng nh&#7853;p</h2>
                    <div>&#272;&#259;ng nh&#7853;p v&#224;o h&#7879; th&#7889;ng b&#7857;ng form b&#234;n d&#432;&#7899;i</div>
                </header>

                <table width="100%" border="0">
        <tr>
            <td width="35%">&nbsp;</td>
            <td>
                <ul id="login" >

                    <li id="login" class="notranslate">
                        <label class="desc" id="title1" for="Field1">
                        T&#234;n &#273;&#259;ng nh&#7853;p
                        </label>
                        <div>
                            <input id="Field1" name="name" type="text" class="field text large" value="Nh&#7853;p t&#234;n" maxlength="50" tabindex="1" onKeyUp="validateRange(1, 'character');" />
                        </div>
                    </li>
                    <li id="login" class="notranslate">
                        <label class="desc" id="title2" for="Field2">
                        M&#7853;t kh&#7849;u
                        </label>
                        <div>
                        <input id="Field2" name="pass" type="password" class="field text large" value="" maxlength="255" tabindex="2" onKeyUp="validateRange(2, 'word');" />
                        </div>
                    </li>

                    <li id="login" class="buttons ">
                        <div>
                        <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="&#272;&#259;ng nh&#7853;p"/>
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
