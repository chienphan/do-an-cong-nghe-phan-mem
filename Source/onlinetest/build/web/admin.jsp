<%-- 
    Document   : admin
    Created on : May 1, 2012, 10:16:00 AM
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
				<a href="" title="H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n">H&#7879; th&#7889;ng tr&#7855;c nghi&#7879;m tr&#7921;c tuy&#7871;n</a>
			</h1>

			<form id="form4" name="form4" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="post" novalidate action="">
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
                                                    <a id="sb" class="button" href="AdminController?state=home&info=none"><b></b>
                                                        Home
                                                    </a>
                                                </li>
                                                
                                                <li id="drag1_text" class="dragfld 0 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_user&info=none"><b></b>
                                                        Ng&#432;&#7901;i s&#7917; d&#7909;ng
                                                    </a>
                                                </li>

                                                <li id="drag1_textarea" class="dragfld 1 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_class&info=none"><b></b>
                                                        L&#7899;p h&#7885;c
                                                    </a>
                                                </li>

                                                <li id="drag1_radio" class="dragfld 2 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_test&info=none"><b></b>
                                                        B&#224;i thi
                                                    </a>
                                                </li>

                                                <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_question&info=none"><b></b>	
                                                        C&#226;u h&#7887;i
                                                    </a>
                                                </li>

                                                    <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_subjects&info=none"><b></b>	
                                                        M&#244;n h&#7885;c
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div style="float: right; width: 80%">
                                            <h2>Th&#244;ng tin t&#7893;ng quan h&#7879; th&#7889;ng:</h2>
                                            <div id="addFields">
                                                <div>T&#7893;ng s&#7889; ng&#432;&#7901;i d&#249;ng: <%= admin.getUsers().size() %></div>
                                                <div>T&#7893;ng s&#7889; l&#7899;p h&#7885;c: <%= admin.getMyClasses().size() %></div>
                                                <div>T&#7893;ng s&#7889; mm&#244;n h&#7885;c: <%= admin.getSubjectses().size() %></div>
                                                <div>T&#7893;ng s&#7889; b&#224;i ki&#7875;m tra: <%= admin.getTests().size() %></div>
                                                <div>T&#7893;ng s&#7889; c&#226;u h&#7887;i tr&#7855;c nghi&#7879;m: <%= admin.getQuestions().size() %></div>
                                            </div>
                                            <h2>T&#236;m ki&#7871;m nhanh:</h2>  
                                            <div id="addFields2">
                                               
                                                <form id="form1" name="form1" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="get" novalidate action="">
                                                    
                                                    <div style="width: 60%; float: left; margin-left: 20px">
                                                        <label class="desc" id="title8" for="Field8">
                                                            N&#7897;i dung:
                                                        </label>
                                                        <div>
                                                            <input id="Field8" name="Field8" type="text" class="field text medium" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                        </div>
                                                    </div>
                                                    <div style="width: 60%; float: left; margin-left: 20px">
                                                        <label class="desc" id="title113" for="Field113">
                                                                Ch&#7885;n m&#7909;c
                                                        </label>
                                                        <div>
                                                            <select id="Field113" name="Field113" class="field select medium" tabindex="25" > 
                                                                <option value="" selected="selected">
                                                                </option>
                                                                <option value="First Choice" >
                                                                    First Choice
                                                                </option>
                                                                <option value="Second Choice" >
                                                                    Second Choice
                                                                </option>
                                                                <option value="Third Choice" >
                                                                    Third Choice
                                                                </option>
                                                            </select>
                                                        </div>
                                                       
                                                        
                                                    </div>
                                                    <div style="width: 60%; float: left; margin-left: 20px; margin-top: 10px;">
                                                        <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Submit"/>
                                                    </div>
                                                </form> 
                                            </div>
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