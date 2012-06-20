<%-- 
    Document   : admin_test
    Created on : May 2, 2012, 3:28:51 PM
    Author     : Administrator
--%>
<%@page import="Model.Admin"%>
<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html charset=UTF-8" %>
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
		<link href="css/dynamic.css" rel="stylesheet">
		<link href="css/index.css" rel="stylesheet">
		<!-- JavaScript -->
		<script src="scripts/wufoo.js"></script>
                <script src="scripts/onlinetest.js"></script>

                <script src="scripts/jscal2.js" type="text/javascript"></script>
                <script src="scripts/en.js" type="text/javascript"></script>
                <link type="text/css" media="screen" rel="stylesheet" href="css/jscal2.css"/>
                <link type="text/css" media="screen" rel="stylesheet" href="css/border-radius.css"/>
                <link type="text/css" media="screen" rel="stylesheet" href="css/steel.css"/>
		<!--[if lt IE 10]>
		<script src="https://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>

        <body id="public">
            <% if(session.getAttribute("username") != null && session.getAttribute("message").equals("login")){
                Admin admin = (Admin) session.getAttribute("pageInfo");
            %>
		<div id="container" class="ltr">

			<h1 id="logo">
				<a href="" title="H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n">
                                    H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n
                                </a>
			</h1>

			<form id="form4" name="form4" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="get" novalidate action="AdminController">
				<header id="header" class="info">
					<h2>Trang qu&#7843;n tr&#7883;</h2>
					<div><%= "Xin Chào " + admin.getUsername() %> (<a href="PersonController?comment=logout">&#273;&#259;ng xu&#7845;t</a> | &#273;&#7893;i m&#7853;t kh&#7849;u)</div>
				</header>
                                <div id="addFields" class="clearfix">
                                    <div id="shake" >
                                        <div>
                                            <h2 class="stand"><%= "Ch&#7913;c n&#259;ng" %></h2>
                                            <ul id="col1">
                                                <li id="drag1_text" class="dragfld 0 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=home&info=none" ><b></b>
                                                        Home
                                                    </a>
                                                </li>
                                                
                                                <li id="drag1_text" class="dragfld 0 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_user&info=none" ><b></b>
                                                        Ng&#432;&#7901;i s&#7917; d&#7909;ng
                                                    </a>
                                                </li>

                                                <li id="drag1_textarea" class="dragfld 1 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_class&info=none" ><b></b>
                                                        L&#7899;p h&#7885;c
                                                    </a>
                                                </li>

                                                <li id="drag1_radio" class="dragfld 2 bigger" style="position: relative; ">
                                                    <a id="sb" class="button" href="AdminController?state=admin_test&info=none" ><b></b>
                                                        B&#224;i thi
                                                    </a>
                                                </li>

                                                <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_question&info=none" ><b></b>	
                                                        C&#226;u h&#7887;i
                                                    </a>
                                                </li>

                                                    <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_subjects&info=none" ><b></b>	
                                                        M&#244;n h&#7885;c
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div style="float: right; width: 80%">
                                            <!-- **************************************************************** -->
                                            <!-- Form create new Test -->
                                            <% if(session.getAttribute("info").equals("new")){ %>
                                                    <ul>
                                                        <li id="foli8" class="notranslate ">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <label class="desc" id="title8" for="Field8">
                                                                        T&#234;n b&#224;i ki&#7875;m tra:
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <input id="Field1" name="testname" type="text" class="field text medium" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                        <li id="foli113" class="notranslate">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <label class="desc" id="title113" for="Field113">
                                                                        Ch&#7885;n m&#244;n h&#7885;c:
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <select id="Field113" name="IDSubjects" class="field select medium" tabindex="25" > 
                                                                            <option value="<%= admin.getSubjectses().get(0).getID() %>" selected="selected">
                                                                                <%= admin.getSubjectses().get(0).getSubjectsName() %>
                                                                            </option>
                                                                            <% for(int i = 1; i < admin.getSubjectses().size(); i++){ %>

                                                                            <option value="<%= admin.getSubjectses().get(i).getID() %>" >
                                                                                <%= admin.getSubjectses().get(i).getSubjectsName() %>
                                                                            </option>
                                                                            <% } %>
                                                                        </select>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                        <li id="foli8" class="notranslate ">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <label class="desc" id="title8" for="Field8">
                                                                        S&#7889; l&#432;&#7907;ng c&#226;u h&#7887;i:
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <input id="Field1" name="numberOfQuestion" type="text" class="field text small" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                        <li id="foli8" class="notranslate ">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <label class="desc" id="title8" for="Field8">
                                                                        S&#7889; l&#432;&#7907;ng c&#226;u kh&#243;:
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <input id="Field1" name="numberOfDifficulty" type="text" class="field text small" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                        <li id="foli124" class="date notranslate      ">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <label class="desc" id="title8" for="Field8">
                                                                        Ng&#224;y b&#7855;t &#273;&#7847;u:
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <div >
                                                                        <input id="calinfo" name="timeStart" type="text" class="field text small" value="" maxlength="255" tabindex="1" onKeyUp="" style="float: left"/>
                                                                        <input id="caltrigger" name="saveForm" class="btTxt submit" type="button" style="width:16px;height:16px;background-image:url('images/calendar_1.png');border:0px;float: left" onclick="mouseover('tr6');mouseout('tr5');return false;" onmouseout="mouseout('tr6')" />
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                        <li id="foli125s" class="date notranslate      ">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <label class="desc" id="title8" for="Field8">
                                                                        Ng&#224;y k&#7871;t th&#250;c:
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <div >
                                                                        <input id="calinfo2" name="timeEnd" type="text" class="field text small" value="" maxlength="255" tabindex="1" onKeyUp="" style="float: left"/>
                                                                        <input id="caltrigger2" name="saveForm" class="btTxt submit" type="button" style="width:16px;height:16px;background-image:url('images/calendar_1.png');border:0px;float: left" onclick="mouseover('tr6');mouseout('tr5');return false;" onmouseout="mouseout('tr6')" />
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                        <li id="foli8" class="notranslate ">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <label class="desc" id="title8" for="Field8">
                                                                        Th&#7901;i gian l&#224;m b&#224;i (ph&#250;t):
                                                                    </label>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <input id="Field1" name="timeDoing" type="text" class="field text small" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                        
                                                        <li id="foli13" class="notranslate      ">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <fieldset>
                                                                        <![if !IE | (gte IE 8)]>
                                                                        <legend id="title13" class="desc">
                                                                            Ch&#7885;n l&#7899;p:
                                                                        </legend>
                                                                        <![endif]>
                                                                        <!--[if lt IE 8]><label id="title13" class="desc">Check All That Apply</label>
                                                                        <![endif]-->
                                                                    </fieldset>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <% for(int i = 0; i < admin.getMyClasses().size(); i++){ %>
                                                                            <span>
                                                                                <input id="Field13" name="<%= "class"+admin.getMyClasses().get(i).getID() %>" type="checkbox" class="field checkbox" value="1" tabindex="" />
                                                                                <label class="choice" ><%= admin.getMyClasses().get(i).getClassName() %></label>
                                                                            </span>
                                                                        <% } %>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                        
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="upermission" value="1" />
                                                        </li>
                                                         <li class="hide">
                                                                <input type="hidden" id="idstamp" name="state" value="admin_test" />
                                                        </li>
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="info" value="create" />
                                                        </li>
                                                        <li class="buttons ">
                                                            <div>
                                                                <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="T&#7841;o m&#7899;i"/>
                                                            </div>
                                                        </li>   
                                                    </ul>
                                                <!-- Form edit Test-->
                                            <% }
                                                else if(session.getAttribute("info").equals("edit")){ 
                                            %>
                                            <ul>
                                                <li id="foli8" class="notranslate ">
                                                    <table width="700px" border="0">
                                                    <tr>
                                                        <td width="200px">
                                                            <label class="desc" id="title8" for="Field8">
                                                                T&#234;n b&#224;i ki&#7875;m tra:
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <% for(int i = 0; i < admin.getTests().size(); i++){
                                                                        if(admin.getTests().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                %>
                                                                <input id="Field1" name="testname" type="text" class="field text medium" value="<%= admin.getTests().get(i).getTestName() %>" maxlength="255" tabindex="1" onKeyUp="" />
                                                                <%
                                                                        }
                                                                    }
                                                                %>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                </li>
                                                <li id="foli113" class="notranslate">
                                                    <table width="700px" border="0">
                                                    <tr>
                                                        <td width="200px">
                                                            <label class="desc" id="title113" for="Field113">
                                                                Ch&#7885;n m&#244;n h&#7885;c:
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <select id="Field113" name="IDSubjects" class="field select medium" tabindex="25" > 
                                                                    <option value="<%= admin.getSubjectses().get(0).getID() %>" 
                                                                            <% for(int i = 0; i < admin.getTests().size(); i++){
                                                                                if(admin.getTests().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                            %>
                                                                            <%= "selected=\"selected\">" %>
                                                                            <%
                                                                                    }
                                                                                }
                                                                            %>
                                                                        <%= admin.getSubjectses().get(0).getSubjectsName() %>
                                                                    </option>
                                                                    <% for(int i = 1; i < admin.getSubjectses().size(); i++){ %>

                                                                    <option value="<%= admin.getSubjectses().get(i).getID() %>" >
                                                                        <%= admin.getSubjectses().get(i).getSubjectsName() %>
                                                                    </option>
                                                                    <% } %>
                                                                </select>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                </li>
                                                 <li id="foli8" class="notranslate ">
                                                    <table width="700px" border="0">
                                                    <tr>
                                                        <td width="200px">
                                                            <label class="desc" id="title8" for="Field8">
                                                                S&#7889; l&#432;&#7907;ng c&#226;u h&#7887;i:
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <% for(int i = 0; i < admin.getTests().size(); i++){
                                                                        if(admin.getTests().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                    %>
                                                                    <input id="Field1" name="numberOfQuestion" type="text" class="field text small" value="<%= admin.getTests().get(i).getNumberOfQuestion() %>" maxlength="255" tabindex="1" onKeyUp="" />
                                                                 <%
                                                                        }
                                                                    }
                                                                %>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                </li>
                                                <li id="foli8" class="notranslate ">
                                                    <table width="700px" border="0">
                                                    <tr>
                                                        <td width="200px">
                                                            <label class="desc" id="title8" for="Field8">
                                                                S&#7889; l&#432;&#7907;ng c&#226;u kh&#243;:
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <% for(int i = 0; i < admin.getTests().size(); i++){
                                                                        if(admin.getTests().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                    %>
                                                                    <input id="Field1" name="numberOfDifficulty" type="text" class="field text small" value="<%= admin.getTests().get(i).getNumberOfDifficulty() %>" maxlength="255" tabindex="1" onKeyUp="" />
                                                                 <%
                                                                        }
                                                                    }
                                                                %>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                </li>
                                                <li id="foli124" class="date notranslate      ">
                                                    <table width="700px" border="0">
                                                    <tr>
                                                        <td width="200px">
                                                            <label class="desc" id="title8" for="Field8">
                                                                Ng&#224;y b&#7855;t &#273;&#7847;u:
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <div >
                                                                <% for(int i = 0; i < admin.getTests().size(); i++){
                                                                        if(admin.getTests().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                    %>
                                                                    <input id="calinfo" name="timeStart" type="text" class="field text small" value="<%= admin.getTests().get(i).getTimeStart() %>" maxlength="255" tabindex="1" onKeyUp="" style="float: left"/>
                                                                <input id="caltrigger" name="saveForm" class="btTxt submit" type="button" style="width:16px;height:16px;background-image:url('images/calendar_1.png');border:0px;float: left" onclick="mouseover('tr6');mouseout('tr5');return false;" onmouseout="mouseout('tr6')" />
                                                                <%
                                                                        }
                                                                    }
                                                                %>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                </li>
                                                <li id="foli125s" class="date notranslate      ">
                                                    <table width="700px" border="0">
                                                    <tr>
                                                        <td width="200px">
                                                            <label class="desc" id="title8" for="Field8">
                                                                Ng&#224;y k&#7871;t th&#250;c:
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <div >
                                                                <% for(int i = 0; i < admin.getTests().size(); i++){
                                                                        if(admin.getTests().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                    %>
                                                                <input id="calinfo2" name="timeEnd" type="text" class="field text small" value="<%= admin.getTests().get(i).getTimeEnd() %>" maxlength="255" tabindex="1" onKeyUp="" style="float: left"/>
                                                                <input id="caltrigger2" name="saveForm" class="btTxt submit" type="button" style="width:16px;height:16px;background-image:url('images/calendar_1.png');border:0px;float: left" onclick="mouseover('tr6');mouseout('tr5');return false;" onmouseout="mouseout('tr6')" />
                                                                <%
                                                                        }
                                                                    }
                                                                %>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                </li>
                                                <li id="foli8" class="notranslate ">
                                                    <table width="700px" border="0">
                                                    <tr>
                                                        <td width="200px">
                                                            <label class="desc" id="title8" for="Field8">
                                                                Th&#7901;i gian l&#224;m b&#224;i (ph&#250;t):
                                                            </label>
                                                        </td>
                                                        <td>
                                                            <div>
                                                                <% for(int i = 0; i < admin.getTests().size(); i++){
                                                                        if(admin.getTests().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                    %>
                                                                    <input id="Field1" name="timeDoing" type="text" class="field text small" value="<%= admin.getTests().get(i).getTimeDoing() %>" maxlength="255" tabindex="1" onKeyUp="" />
                                                                <%
                                                                        }
                                                                    }
                                                                %>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    </table>
                                                </li>
                                                <li id="foli13" class="notranslate      ">
                                                            <table width="700px" border="0">
                                                            <tr>
                                                                <td width="200px">
                                                                    <fieldset>
                                                                        <![if !IE | (gte IE 8)]>
                                                                        <legend id="title13" class="desc">
                                                                            Ch&#7885;n l&#7899;p:
                                                                        </legend>
                                                                        <![endif]>
                                                                        <!--[if lt IE 8]><label id="title13" class="desc">Check All That Apply</label>
                                                                        <![endif]-->
                                                                    </fieldset>
                                                                </td>
                                                                <td>
                                                                    <div>
                                                                        <% for(int i = 0; i < admin.getMyClasses().size(); i++){ %>
                                                                            <span>
                                                                                <input id="Field13" name="<%= "class"+admin.getMyClasses().get(i).getID() %>" type="checkbox" class="field checkbox" value="1" tabindex="" />
                                                                                     
                                                                                <label class="choice" ><%= admin.getMyClasses().get(i).getClassName() %></label>
                                                                            </span>
                                                                        <% } %>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            </table>
                                                        </li>
                                                         <li class="hide">
                                                            <% for(int i = 0; i < admin.getTests().size(); i++){
                                                                             if(admin.getTests().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                                 <input type="hidden" id="idstamp" name="id" value="<%= admin.getTests().get(i).getID() %>" />
                                                                                 <%
                                                                             }
                                                                  }%>
                                                                
                                                        </li>
                                                        
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="upermission" value="1" />
                                                        </li>
                                                         <li class="hide">
                                                                <input type="hidden" id="idstamp" name="state" value="admin_test" />
                                                        </li>
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="info" value="update" />
                                                        </li>
                                                        <li class="buttons ">
                                                            <div>
                                                                <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="C&#7853;p nh&#7853;t"/>
                                                            </div>
                                                        </li>   
                                            </ul>
                                            <% } else { %>
                                            <!-- List Tests-->
                                        <ul style=" width: 100%">
                                            <li id="foli111" class="likert notranslate col3 ">
                                                <table cellspacing="0">
                                                     <a href="AdminController?state=admin_test&info=new" style="width: 100px">Th&#234;m m&#7899;i</a>
                                                    <caption id="title111">Danh s&#225;ch c&#225;c b&#224;i ki&#7875;m tra</caption>
                                                    <thead>
                                                        <tr>
                                                            <th><div align="center" style="width: 170px">B&#224;i ki&#7875;m tra</div></th>
                                                                <td>M&#244;n h&#7885;c</td>
                                                                <td>S&#7889; c&#226;u h&#7887;i</td>
                                                                <td>C&#226;u kh&#243;</td>
                                                                <td>Th&#7901;i gian</td>
                                                                <td>B&#7855;t &#273;&#7847;u</td>
                                                                <td>K&#7871;t th&#250;c</td>
                                                                <td>S&#7917;a</td>
                                                                <td>X&#243;a</td>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                    <%
                                                        for(int i = 0; i < admin.getTests().size() ; i++){                            
                                                    %>
                                                        <tr class="statement111">
                                                            <th><label for="Field111"><%= admin.getTests().get(i).getTestName() %></label></th>
                                                            <td title="M&#244;n h&#7885;c"><label for="Field111_2"><%= admin.getTests().get(i).getSubjectsName() %></label></td>
                                                            <td title="S&#7889; c&#226;u h&#7887;i"><label for="Field111_2"><%= admin.getTests().get(i).getNumberOfQuestion() %></label></td>
                                                            <td title="S&#7889; c&#226;u h&#7887;i kh&#243;"><label for="Field111_2"><%= admin.getTests().get(i).getNumberOfDifficulty() %></label></td>
                                                            <td title="Th&#7901;i gian l&#224;m b&#224;i"><label for="Field111_2"><%= admin.getTests().get(i).getTimeDoing() + " phút" %></label></td>
                                                            <td title="Th&#7901;i gian b&#7855;t &#273;&#7847;u"><label for="Field111_2"><%= admin.getTests().get(i).getTimeStart().toString() %></label></td>
                                                            <td title="Th&#7901;i gian k&#7871;t th&#250;c"><label for="Field111_2"><%= admin.getTests().get(i).getTimeEnd().toString() %></label></td>
                                                            <td title="S&#7917;a"><a href="AdminController?state=admin_test&info=edit&id=<%= admin.getTests().get(i).getID() %>" >s&#7917;a</a></td>
                                                            <td title="X&#243;a"><a href="AdminController?state=admin_test&info=del&id=<%= admin.getTests().get(i).getID() %>" onclick="return show_confirm();">x&#243;a</a></td>
                                                        </tr>
                                                    <%
                                                        }
                                                    %>
                                                    </tbody>
                                                </table>
                                            </li>
                                        </ul>
                                            <% } %>
                                            <!-- **************************************************************** -->
                                                    
                                        </div>                                        
                                    </div>
                                </div>
			</form> 
		</div>
		<%}else {%>
                        <meta http-equiv="Refresh" content="0 ; URL=index.jsp" />
                <%}%>
                <script type="text/javascript" language="javascript">
                        Calendar.setup({
                        trigger    : "caltrigger",
                        inputField : "calinfo",
                        dateFormat: "%Y-%m-%d"
                        });
                        Calendar.setup({
                        trigger    : "caltrigger2",
                        inputField : "calinfo2",
                        dateFormat: "%Y-%m-%d"
                        });
                </script>
	</body>
</html>