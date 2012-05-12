<%-- 
    Document   : admin_test
    Created on : May 2, 2012, 3:28:51 PM
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

			<form id="form4" name="form4" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="post" novalidate action="https://gobom.wufoo.com/forms/r7x2s9/#public">
				<header id="header" class="info">
					<h2>Trang quản trị</h2>
					<div>Xin chào Admin! (logout)</div>
				</header>
                                <div id="addFields" class="clearfix">
                                    <div id="shake" >
                                        <div>
                                            <h2 class="stand"><%= "Chức năng" %></h2>
                                            <ul id="col1">
                                                <li id="drag1_text" class="dragfld 0 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=home" ><b></b>
                                                        Home
                                                    </a>
                                                </li>
                                                
                                                <li id="drag1_text" class="dragfld 0 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_user" ><b></b>
                                                        Người sử dụng
                                                    </a>
                                                </li>

                                                <li id="drag1_textarea" class="dragfld 1 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_class" ><b></b>
                                                        Lớp học
                                                    </a>
                                                </li>

                                                <li id="drag1_radio" class="dragfld 2 bigger" style="position: relative; ">
                                                    <a id="sb" class="button" href="AdminController?state=admin_test" ><b></b>
                                                        Bài thi
                                                    </a>
                                                </li>

                                                <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_question" ><b></b>	
                                                        Câu hỏi
                                                    </a>
                                                </li>

                                                    <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_subjects" ><b></b>	
                                                        Môn học
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div style="float: right; width: 80%">
                                        <ul style=" width: 100%">
                                            <li id="foli111" class="likert notranslate col3 ">
                                                <table cellspacing="0">
                                                    <caption id="title111">Danh sách các bài kiểm tra</caption>
                                                    <thead>
                                                        <tr>
                                                            <th><div align="center" style="width: 170px">Bài kiểm tra</div></th>
                                                                <td>Môn học</td>
                                                                <td>Số câu hỏi</td>
                                                                <td>Câu khó</td>
                                                                <td>Thời gian</td>
                                                                <td>Bắt đầu</td>
                                                                <td>Kết thúc</td>
                                                                <td>Sửa</td>
                                                                <td>Xóa</td>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                    <%
                                                        for(int i = 0; i < admin.getTests().size() ; i++){                            
                                                    %>
                                                        <tr class="statement111">
                                                            <th><label for="Field111"><%= admin.getTests().get(i).getTestName() %></label></th>
                                                            <td title="Môn học"><label for="Field111_2"><%= admin.getTests().get(i).getSubjectsName() %></label></td>
                                                            <td title="Số câu hỏi"><label for="Field111_2"><%= admin.getTests().get(i).getNumberOfQuestion() %></label></td>
                                                            <td title="Số câu hỏi khó"><label for="Field111_2"><%= admin.getTests().get(i).getNumberOfDifficulty() %></label></td>
                                                            <td title="Thời gian làm bài"><label for="Field111_2"><%= admin.getTests().get(i).getTimeDoing()/36000 + " phút" %></label></td>
                                                            <td title="Thời gian bắt đầu"><label for="Field111_2"><%= admin.getTests().get(i).getTimeStart().toString() %></label></td>
                                                            <td title="thời gian kết thúc"><label for="Field111_2"><%= admin.getTests().get(i).getTimeEnd().toString() %></label></td>
                                                            <td title="Sửa"><label for="Field111_2">sửa</label></td>
                                                            <td title="Xóa"><label for="Field111_3">xóa</label></td>
                                                        </tr>
                                                    <%
                                                        }
                                                    %>
                                                    </tbody>
                                                </table>
                                            </li>
                                        </ul>
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