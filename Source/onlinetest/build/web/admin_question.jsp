<%-- 
    Document   : admin_question
    Created on : May 2, 2012, 3:30:36 PM
    Author     : Administrator
--%>

<%@page import="Model.Admin"%>
<!DOCTYPE html>
<%@ page language="java" pageEncoding="UTF-8" contentType="text/html charset=UTF-8" %>
<html>
	<head>

		<title>HH&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n</title>

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
                                                    <a id="mc" class="button" href="AdminController?state=admin_test&info=none" ><b></b>
                                                        B&#224;i thi
                                                    </a>
                                                </li>

                                                <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="sb" class="button" href="AdminController?state=admin_question&info=none" ><b></b>	
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
                                            <!-- Form create new Question -->
                                            <% if(session.getAttribute("info").equals("new")){ %>
                                                    <ul>
                                                        <li id="foli113" class="notranslate">
                                                            <label class="desc" id="title113" for="Field113">
                                                            Ch&#7885;n m&#244;n h&#7885;c:
                                                            </label>
                                                            <div>
                                                                <select id="Field113" name="IDSubjects" class="field select large" tabindex="25" > 
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
                                                        </li>

                                                        <li id="foli10" class="notranslate" >
                                                            <label class="desc" id="title10" for="Field10" >
                                                                N&#7897;i dung:
                                                            </label>

                                                            <div style="width: 700px">
                                                                <textarea id="Field10" name="content" class=" textarea medium" spellcheck="true" rows="10" cols="50" tabindex="2"  onkeyup="" ></textarea>
                                                            </div>
                                                        </li>
                                                        <li id="foli10" class="notranslate      ">
                                                            <label class="desc" id="title10" for="Field10">
                                                                &#272;&#225;p &#225;n A:
                                                            </label>

                                                            <div style="width: 700px">
                                                                <textarea id="Field10" name="planA" class=" textarea small" spellcheck="true" rows="2" cols="50" tabindex="2"  onkeyup="" ></textarea>
                                                            </div>
                                                        </li>
                                                        <li id="foli10" class="notranslate      ">
                                                            <label class="desc" id="title10" for="Field10">
                                                                &#272;&#225;p &#225;n B:
                                                            </label>

                                                            <div style="width: 700px">
                                                                <textarea id="Field10" name="planB" class=" textarea small" spellcheck="true" rows="2" cols="50" tabindex="2"  onkeyup="" ></textarea>
                                                            </div>
                                                        </li>
                                                        <li id="foli10" class="notranslate      ">
                                                            <label class="desc" id="title10" for="Field10">
                                                                &#272;&#225;p &#225;n C:
                                                            </label>

                                                            <div style="width: 700px">
                                                                <textarea id="Field10" name="planC" class=" textarea small" spellcheck="true" rows="2" cols="50" tabindex="2"  onkeyup="" ></textarea>
                                                            </div>
                                                        </li>
                                                        <li id="foli10" class="notranslate      ">
                                                            <label class="desc" id="title10" for="Field10">
                                                                &#272;&#225;p &#225;n D:
                                                            </label>

                                                            <div style="width: 700px">
                                                                <textarea id="Field10" name="planD" class="field textarea small" spellcheck="true" rows="2" cols="50" tabindex="2"  onkeyup="" ></textarea>
                                                            </div>
                                                        </li>
                                                        <li id="foli8" class="notranslate ">
                                                            <label class="desc" id="title8" for="Field8">
                                                                &#272;&#225;p &#225;n &#273;&#250;ng:
                                                            </label>
                                                             <div>
                                                                <select id="Field113" name="answer" class="field select large" tabindex="25" > 
                                                                    <option value="0" selected="selected">
                                                                         
                                                                    </option>
                                                                    
                                                                    <option value="1" >
                                                                        A
                                                                    </option>
                                                                    <option value="2" >
                                                                        B
                                                                    </option>
                                                                    <option value="3" >
                                                                        C
                                                                    </option>
                                                                    <option value="4" >
                                                                        D
                                                                    </option>
                                                                    
                                                                </select>
                                                            </div>
                                                        </li>
                                                       
                                                        <li id="foli113" class="notranslate">
                                                            <label class="desc" id="title113" for="Field113">
                                                            Ch&#7885;n &#273;&#7897; kh&#243;:
                                                            </label>
                                                            <div>
                                                                <select id="Field113" name="difficulty" class="field select large" tabindex="25" > 
                                                                    <option value="0" selected="selected">
                                                                        Kh&#243;
                                                                    </option>
                                                                    
                                                                    <option value="1" >
                                                                        D&#7875;
                                                                    </option>
                                                                </select>
                                                            </div>
                                                        </li>
                                                        
                                                        
                                                         <li class="hide">
                                                                <input type="hidden" id="idstamp" name="state" value="admin_question" />
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
                                                    <!-- Form edit Question-->
                                            <% }
                                                else if(session.getAttribute("info").equals("edit")){ 
                                            %>
                                            <ul>
                                                        <li id="foli113" class="notranslate">
                                                            <label class="desc" id="title113" for="Field113">
                                                            Ch&#7885;n m&#244;n h&#7885;c:
                                                            </label>
                                                            <div>
                                                                <select id="Field113" name="IDSubjects" class="field select large" tabindex="25" > 
                                                                   <% for(int i = 0; i < admin.getQuestions().size(); i++){
                                                                        if(admin.getQuestions().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString())){
                                                                        %>
                                                                        <% for(int j = 0; j < admin.getSubjectses().size(); j++){ %>
                                                                        <option value="<%= admin.getSubjectses().get(j).getID() %>" <% if(admin.getSubjectses().get(j).getID() == Integer.parseInt(session.getAttribute("IDSubjects").toString())) { %>selected="selected"<% } %>>
                                                                            <%= admin.getSubjectses().get(j).getSubjectsName() %>
                                                                        </option>
                                                                        
                                                                        <%
                                                                            }
                                                                        }
                                                                    }%>
                                                                </select>
                                                            </div>
                                                        </li>

                                                        <li id="foli10" class="notranslate" >
                                                            <label class="desc" id="title10" for="Field10" >
                                                                N&#7897;i dung:
                                                            </label>

                                                            <div style="width: 700px">
                                                                <% for(int i = 0; i < admin.getQuestions().size(); i++){
                                                                             if(admin.getQuestions().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                <textarea id="Field10" name="content" class=" textarea medium" spellcheck="true" rows="10" cols="50" tabindex="2"  onkeyup=""  ><%= admin.getQuestions().get(i).getContent() %></textarea>
                                                                <%
                                                                             }
                                                                }%>
                                                            </div>
                                                        </li>
                                                        <li id="foli10" class="notranslate      ">
                                                            <label class="desc" id="title10" for="Field10">
                                                                &#272;&#225;p &#225;n A:
                                                            </label>

                                                            <div style="width: 700px">
                                                                 <% for(int i = 0; i < admin.getQuestions().size(); i++){
                                                                             if(admin.getQuestions().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                <textarea id="Field10" name="planA" class=" textarea small" spellcheck="true" rows="2" cols="50" tabindex="2"  onkeyup="" ><%= admin.getQuestions().get(i).getPlanA() %></textarea>
                                                            <%
                                                                             }
                                                                }%>
                                                            </div>
                                                        </li>
                                                        <li id="foli10" class="notranslate      ">
                                                            <label class="desc" id="title10" for="Field10">
                                                                &#272;&#225;p &#225;n B:
                                                            </label>

                                                            <div style="width: 700px">
                                                                 <% for(int i = 0; i < admin.getQuestions().size(); i++){
                                                                             if(admin.getQuestions().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                <textarea id="Field10" name="planB" class=" textarea small" spellcheck="true" rows="2" cols="50" tabindex="2"  onkeyup="" ><%= admin.getQuestions().get(i).getPlanB() %></textarea>
                                                                <%
                                                                             }
                                                                }%>
                                                            </div>
                                                        </li>
                                                        <li id="foli10" class="notranslate      ">
                                                            <label class="desc" id="title10" for="Field10">
                                                                &#272;&#225;p &#225;n C:
                                                            </label>

                                                            <div style="width: 700px">
                                                                 <% for(int i = 0; i < admin.getQuestions().size(); i++){
                                                                             if(admin.getQuestions().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                <textarea id="Field10" name="planC" class=" textarea small" spellcheck="true" rows="2" cols="50" tabindex="2"  onkeyup="" ><%= admin.getQuestions().get(i).getPlanC() %></textarea>
                                                                <%
                                                                             }
                                                                }%>
                                                            </div>
                                                        </li>
                                                        <li id="foli10" class="notranslate      ">
                                                            <label class="desc" id="title10" for="Field10">
                                                                &#272;&#225;p &#225;n D:
                                                            </label>

                                                            <div style="width: 700px">
                                                                 <% for(int i = 0; i < admin.getQuestions().size(); i++){
                                                                             if(admin.getQuestions().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                <textarea id="Field10" name="planD" class="textarea small" spellcheck="true" rows="2" cols="50" tabindex="2"  onkeyup="" ><%= admin.getQuestions().get(i).getPlanD() %></textarea>
                                                                <%
                                                                             }
                                                                }%>
                                                            </div>
                                                        </li>
                                                        <li id="foli8" class="notranslate ">
                                                            <label class="desc" id="title8" for="Field8">
                                                                &#272;&#225;p &#225;n &#273;&#250;ng:
                                                            </label>
                                                             <div>
                                                                <select id="Field113" name="answer" class="field select large" tabindex="25" > 
                                                                    <% for(int i = 0; i < admin.getQuestions().size(); i++){
                                                                        if(admin.getQuestions().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString())){
                                                                        %>
                                                                        <option value="1" <% if(admin.getQuestions().get(i).getAnswer() == 1) { %>selected="selected"<% } %>>
                                                                            A
                                                                        </option>
                                                                        <option value="2" <% if(admin.getQuestions().get(i).getAnswer() == 2) { %>selected="selected"<% } %>>
                                                                            B
                                                                        </option>
                                                                        <option value="3" <% if(admin.getQuestions().get(i).getAnswer() == 3) { %>selected="selected"<% } %>>
                                                                            C
                                                                        </option>
                                                                        <option value="4" <% if(admin.getQuestions().get(i).getAnswer() == 4) { %>selected="selected"<% } %>>
                                                                            D
                                                                        </option>
                                                                        <%
                                                                        }
                                                                    }%>
                                                                </select>
                                                            </div>
                                                        </li>
                                                       
                                                        <li id="foli113" class="notranslate">
                                                            <label class="desc" id="title113" for="Field113">
                                                            Ch&#7885;n &#273;&#7897; kh&#243;:
                                                            </label>
                                                            <div>
                                                                <select id="Field113" name="difficulty" class="field select large" tabindex="25" > 
                                                                     <% for(int i = 0; i < admin.getQuestions().size(); i++){
                                                                        if(admin.getQuestions().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString())){
                                                                        %>
                                                                        <option value="0" <% if(admin.getQuestions().get(i).getDifficulty() == 0) { %>selected="selected"<% } %>>
                                                                            Kh&#243;
                                                                        </option>
                                                                        <option value="1" <% if(admin.getQuestions().get(i).getDifficulty() == 1) { %>selected="selected"<% } %>>
                                                                            D&#7875;
                                                                        </option>
                                                                        <%
                                                                        }
                                                                    }%>
                                                                </select>
                                                            </div>
                                                        </li>
                                                        <li class="hide">
                                                            <input type="hidden" id="idstamp" name="id" value="<%= Integer.parseInt(session.getAttribute("id").toString()) %>" />
                                                        </li>
                                                        
                                                         <li class="hide">
                                                                <input type="hidden" id="idstamp" name="state" value="admin_question" />
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
                                            <!-- List Questions-->
                                        <ul style=" width: 100%">
                                            <li id="foli111" class="likert notranslate col3 ">
                                                <table cellspacing="0">
                                                    <caption id="title111">Danh s&#225;ch c&#225;c c&#226;u h&#7887;i</caption>
                                                    <a href="AdminController?state=admin_question&info=new" style="width: 100px">Th&#234;m m&#7899;i</a>
                                                    <thead>
                                                        <tr>
                                                            <th><div align="center" style="width: 30px">STT</div></th>
                                                                <td>N&#7897;i dung</td>
                                                                <td>m&#244;n h&#7885;c</td>
                                                                <td>&#272;&#7897; kh&#243;</td>
                                                                <td>S&#7917;a</td>
                                                                <td>X&#243;a</td>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                    <%
                                                        for(int i = 0; i < admin.getQuestions().size(); i++){                            
                                                    %>
                                                        <tr class="statement111">
                                                            <th><label for="Field111"><%= i + 1 %></label></th>
                                                            <td title="n&#7897;i dung"><label for="Field111_2"><%= admin.getQuestions().get(i).getContent() %></label></td>
                                                            <td title="M&#244;n h&#7885;c"><label for="Field111_2"><%= admin.getQuestions().get(i).getSubjects() %></label></td>
                                                            <td title="&#272;&#7897; kh&#243;"><label for="Field111_2"><% if(admin.getQuestions().get(i).getDifficulty() == 0){ %>
                                                                    <%= "Kh&#243;"%>
                                                                    <% } else { %>
                                                                    <%= "D&#7875;"%>
                                                                    <% } %>
                                                            </label></td>
                                                            <td title="S&#7917;a"><a style=" text-align: center" href="AdminController?state=admin_question&info=edit&id=<%= admin.getQuestions().get(i).getID() %>">s&#7917;a</a></td>
                                                            <td title="X&#243;a"><a style=" text-align: center" href="AdminController?state=admin_question&info=del&id=<%= admin.getQuestions().get(i).getID() %> " onclick="return show_confirm();">x&#243;a</a></td>
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
                        <meta http-equiv="Refresh" content="0 ; URL=index.jsp"/>
                <%}%>
	</body>
</html>