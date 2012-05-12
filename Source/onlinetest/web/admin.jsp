<%-- 
    Document   : admin
    Created on : May 1, 2012, 10:16:00 AM
    Author     : Administrator
--%>
<%@page import="Model.Admin"%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
				<a href="" title="Hệ thống trắc nghiệm trực tuyến">Wufoo</a>
			</h1>

			<form id="form4" name="form4" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="post" novalidate action="">
				<header id="header" class="info">
					<h2>Trang quản trị</h2>
                                        <div><%= "Xin Chào " + admin.getUsername() %> (<a href="PersonController?comment=logout">đăng xuất</a> | Đổi mật khẩu)</div>
				</header>
                                <div id="addFields" class="clearfix">
                                    <div id="shake" >
                                        <div>
                                            <h2 class="stand"><%= "Chức năng" %></h2>
                                            <ul id="col1">
                                                <li id="drag1_text" class="dragfld 0 wide" style="position: relative; ">
                                                    <a id="sb" class="button" href="AdminController?state=home&info=none"><b></b>
                                                        Home
                                                    </a>
                                                </li>
                                                
                                                <li id="drag1_text" class="dragfld 0 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_user&info=none"><b></b>
                                                        Người sử dụng
                                                    </a>
                                                </li>

                                                <li id="drag1_textarea" class="dragfld 1 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_class&info=none"><b></b>
                                                        Lớp học
                                                    </a>
                                                </li>

                                                <li id="drag1_radio" class="dragfld 2 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_test&info=none"><b></b>
                                                        Bài thi
                                                    </a>
                                                </li>

                                                <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_question"><b></b>	
                                                        Câu hỏi
                                                    </a>
                                                </li>

                                                    <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_subjects&info=none"><b></b>	
                                                        Môn học
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div style="float: right; width: 80%">
                                            <h2>Thông tin tổng quan hệ thống:</h2>
                                            <div id="addFields">
                                                <div>Tổng số người dùng: <%= admin.getUsers().size() %></div>
                                                <div>Tổng số lớp học: <%= admin.getMyClasses().size() %></div>
                                                <div>Tổng số môn học: <%= admin.getSubjectses().size() %></div>
                                                <div>Tổng số bài kiểm tra: <%= admin.getTests().size() %></div>
                                                <div>Tổng số câu hỏi trắc nghiệm: <%= admin.getQuestions().size() %></div>
                                            </div>
                                            <h2>Tìm kiếm nhanh:</h2>  
                                            <div id="addFields2">
                                               
                                                <form id="form1" name="form1" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="get" novalidate action="">
                                                    
                                                    <div style="width: 60%; float: left; margin-left: 20px">
                                                        <label class="desc" id="title8" for="Field8">
                                                            Nội dung:
                                                        </label>
                                                        <div>
                                                            <input id="Field8" name="Field8" type="text" class="field text medium" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                        </div>
                                                    </div>
                                                    <div style="width: 60%; float: left; margin-left: 20px">
                                                        <label class="desc" id="title113" for="Field113">
                                                                Chọn mục
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