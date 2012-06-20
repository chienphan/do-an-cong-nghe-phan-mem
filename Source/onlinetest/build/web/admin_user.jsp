<%-- 
    Document   : admin_user
    Created on : May 2, 2012, 3:28:06 PM
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
                                                    <a id="sb" class="button" href="AdminController?state=admin_user&info=none" ><b></b>
                                                        Ng&#432;&#7901;i s&#7917; d&#7909;ng
                                                    </a>
                                                </li>

                                                <li id="drag1_textarea" class="dragfld 1 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_class&info=none" ><b></b>
                                                        L&#7899;p h&#7885;c
                                                    </a>
                                                </li>

                                                <li id="drag1_radio" class="dragfld 2 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_test&info=none" ><b></b>
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
                                            <!-- Form create new user -->
                                            <% if(session.getAttribute("info").equals("new")){ %>
                                                    <ul>
                                                        <li id="foli8" class="notranslate ">
                                                            <label class="desc" id="title8" for="Field8">
                                                                T&#234;n &#273;&#259;ng nh&#7853;p
                                                            </label>
                                                            <div>
                                                                <input id="Field1" name="uname" type="text" class="field text large" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                            </div>
                                                        </li>
                                                        <li id="foli8" class="notranslate      ">
                                                            <label class="desc" id="title8" for="Field8">
                                                                M&#7853;t kh&#7849;u
                                                            </label>
                                                            <div>
                                                                <input id="Field2" name="upass" type="password" class="field text large" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                            </div>
                                                        </li>
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="upermission" value="1" />
                                                        </li>
                                                        <li id="foli113" class="notranslate">
                                                            <label class="desc" id="title113" for="Field113">
                                                            Ch&#7885;n l&#7899;p
                                                            </label>
                                                            <div>
                                                                <select id="Field113" name="IDClass" class="field select large" tabindex="25" > 
                                                                    <option value="<%= admin.getMyClasses().get(0).getID() %>" selected="selected">
                                                                        <%= admin.getMyClasses().get(0).getClassName() %>
                                                                    </option>
                                                                    <% for(int i = 1; i < admin.getMyClasses().size(); i++){ %>
                                                                    
                                                                    <option value="<%= admin.getMyClasses().get(i).getID() %>" >
                                                                        <%= admin.getMyClasses().get(i).getClassName() %>
                                                                    </option>
                                                                    <% } %>
                                                                </select>
                                                            </div>
                                                        </li>
                                                         <li class="hide">
                                                                <input type="hidden" id="idstamp" name="state" value="admin_user" />
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
                                                <!-- Form edit user-->
                                            <% }
                                                else if(session.getAttribute("info").equals("edit")){ 
                                            %>
                                            <ul>
                                                        <li id="foli8" class="notranslate ">
                                                            <label class="desc" id="title8" for="Field8">
                                                                T&#234;n d&#259;ng nh&#7853;p
                                                            </label>
                                                            <div>
                                                               
                                                                       <% for(int i = 0; i < admin.getUsers().size(); i++){
                                                                             if(admin.getUsers().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                                  <input id="Field1" name="uname" type="text" class="field text large" value="<%= admin.getUsers().get(i).getUsername() %>" maxlength="255" tabindex="1" onKeyUp="" />
                                                                                 <%
                                                                             }
                                                                       }%>
                                                                       
                                                            </div>
                                                        </li>
                                                        <li id="foli8" class="notranslate      ">
                                                            <label class="desc" id="title8" for="Field8">
                                                                M&#7853;t kh&#7849;u
                                                            </label>
                                                            <div>
                                                                
                                                                        <% for(int i = 0; i < admin.getUsers().size(); i++){
                                                                             if(admin.getUsers().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                                 <input id="Field2" name="upass" type="password" class="field text large" value="<%= admin.getUsers().get(i).getPassword() %> " maxlength="255" tabindex="1" onKeyUp="" />
                                                                                 <%
                                                                             }
                                                                  }%>
                                                                      
                                                            </div>
                                                        </li>
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="upermission" value="1" />
                                                        </li>
                                                        <li id="foli113" class="notranslate">
                                                            <label class="desc" id="title113" for="Field113">
                                                            Ch&#7885;n l&#7899;p
                                                            </label>
                                                            <div>
                                                                <select id="Field113" name="IDClass" class="field select large" tabindex="25" > 
                                                                                      
                                                                    <% for(int i = 0; i < admin.getMyClasses().size(); i++){ %>
                                                                    
                                                                    <option value="<%= admin.getMyClasses().get(i).getID() %>" <%if(admin.getMyClasses().get(i).getID() == Integer.parseInt(session.getAttribute("IDClass").toString())){%>selected="selected"<%}%>>
                                                                        <%= admin.getMyClasses().get(i).getClassName() %>
                                                                    </option>
                                                                    <% } %>
                                                                </select>
                                                            </div>
                                                        </li>
                                                         <li class="hide">
                                                                <input type="hidden" id="idstamp" name="state" value="admin_user" />
                                                        </li>
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="info" value="update" />
                                                        </li>
                                                        <li class="hide">
                                                            <% for(int i = 0; i < admin.getUsers().size(); i++){
                                                                             if(admin.getUsers().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                                 <input type="hidden" id="idstamp" name="id" value="<%= admin.getUsers().get(i).getID() %>" />
                                                                                 <%
                                                                             }
                                                                  }%>
                                                                
                                                        </li>
                                                        <li class="buttons ">
                                                            <div>
                                                                <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="C&#7853;p nh&#7853;t"/>
                                                            </div>
                                                        </li>   
                                                    </ul>
                                            <% } else { %>
                                            <!-- List user-->
                                            <ul style=" width: 100%">
                                            <li id="foli111" class="likert notranslate col3 ">
                                                <table cellspacing="0">
                                                    <caption id="title111">Danh s&#225;ch ng&#432;&#7901;i s&#7917; d&#7909;ng </caption>
                                                    <a href="AdminController?state=admin_user&info=new" style="width: 100px">Th&#234;m m&#7899;i</a>
                                                    <thead>
                                                        <tr>
                                                            <th><div align="center">T&#234;n ng&#432;&#7901;i s&#7917; d&#7909;ng</div></th>
                                                                <td >L&#7899;p</td>
                                                                <td >S&#7917;a</td>
                                                                <td >X&#243;a</td>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                    <%
                                                        for(int i = 0; i < admin.getUsers().size(); i++){                            
                                                    %>
                                                        <tr class="statement111">
                                                            <th><label for="Field111"><%= admin.getUsers().get(i).getUsername().toString() %></label></th>
                                                            <td title="L&#7899;p"><label for="Field111_1"><%= admin.getUsers().get(i).getClassName().toString() %></label></td>
                                                            <td title="S&#7917;a"><a href="AdminController?state=admin_user&info=edit&id=<%= admin.getUsers().get(i).getID() %>" >s&#7917;a</a></td>
                                                            <td title="X&#243;a"><a href="AdminController?state=admin_user&info=del&id=<%= admin.getUsers().get(i).getID() %>" onclick="return show_confirm();">x&#243;a</a></td>
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
	</body>
</html>