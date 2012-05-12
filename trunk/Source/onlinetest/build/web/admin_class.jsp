<%-- 
    Document   : admin_class
    Created on : May 2, 2012, 3:28:36 PM
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
				<a href="" title="Hệ thống trắc nghiệm trực tuyến">Wufoo</a>
			</h1>

			<form id="form4" name="form4" class="wufoo topLabel page" autocomplete="off" enctype="multipart/form-data" method="get" novalidate action="AdminController">
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
                                                    <a id="mc" class="button" href="AdminController?state=home&info=none" ><b></b>
                                                        Home
                                                    </a>
                                                </li>
                                                
                                                <li id="drag1_text" class="dragfld 0 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_user&info=none" ><b></b>
                                                        Người sử dụng
                                                    </a>
                                                </li>

                                                <li id="drag1_textarea" class="dragfld 1 bigger" style="position: relative; ">
                                                    <a id="sb" class="button" href="AdminController?state=admin_class&info=none" ><b></b>
                                                        Lớp học
                                                    </a>
                                                </li>

                                                <li id="drag1_radio" class="dragfld 2 bigger" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_test&info=none" ><b></b>
                                                        Bài thi
                                                    </a>
                                                </li>

                                                <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_question&info=none" ><b></b>	
                                                        Câu hỏi
                                                    </a>
                                                </li>

                                                    <li id="drag1_section" class="dragfld 3 wide" style="position: relative; ">
                                                    <a id="mc" class="button" href="AdminController?state=admin_subjects&info=none" ><b></b>	
                                                        Môn học
                                                    </a>
                                                </li>
                                            </ul>
                                        </div>
                                        <div style="float: right; width: 80%">
                                             <!-- **************************************************************** -->
                                            <!-- Form create new Class -->
                                            <% if(session.getAttribute("info").equals("new")){ %>
                                                    <ul>
                                                        <li id="foli8" class="notranslate ">
                                                            <label class="desc" id="title8" for="Field8">
                                                                Tên lớp học
                                                            </label>
                                                            <div>
                                                                <input id="Field1" name="classname" type="text" class="field text large" value="" maxlength="255" tabindex="1" onKeyUp="" />
                                                            </div>
                                                        </li>
                                                       
                                                         <li class="hide">
                                                                <input type="hidden" id="idstamp" name="state" value="admin_class" />
                                                        </li>
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="info" value="create" />
                                                        </li>
                                                        <li class="buttons ">
                                                            <div>
                                                                <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Tạo mới"/>
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
                                                                Tên lớp học
                                                            </label>
                                                            <div>
                                                               
                                                                       <% for(int i = 0; i < admin.getMyClasses().size(); i++){
                                                                             if(admin.getMyClasses().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                                  <input id="Field1" name="classname" type="text" class="field text large" value="<%= admin.getMyClasses().get(i).getClassName() %>" maxlength="255" tabindex="1" onKeyUp="" />
                                                                                 <%
                                                                             }
                                                                       }%>
                                                                       
                                                            </div>
                                                        </li>
                                                        
                                                         <li class="hide">
                                                                <input type="hidden" id="idstamp" name="state" value="admin_class" />
                                                        </li>
                                                        <li class="hide">
                                                                <input type="hidden" id="idstamp" name="info" value="update" />
                                                        </li>
                                                        <li class="hide">
                                                            <% for(int i = 0; i < admin.getMyClasses().size(); i++){
                                                                             if(admin.getMyClasses().get(i).getID() == Integer.parseInt(session.getAttribute("id").toString()) ){
                                                                                 %>
                                                                                 <input type="hidden" id="idstamp" name="id" value="<%= admin.getMyClasses().get(i).getID() %>" />
                                                                                 <%
                                                                             }
                                                                  }%>
                                                                
                                                        </li>
                                                        <li class="buttons ">
                                                            <div>
                                                                <input id="saveForm" name="saveForm" class="btTxt submit" type="submit" value="Cập nhật"/>
                                                            </div>
                                                        </li>   
                                                    </ul>
                                            <% } else { %>
                                            <!-- List user-->
                                            <ul style=" width: 100%">
                                            <li id="foli111" class="likert notranslate col3 ">
                                                <table cellspacing="0">
                                                    <caption id="title111">Danh sách Lớp học</caption>
                                                    <a href="AdminController?state=admin_class&info=new" style="width: 100px">Thêm mới</a>
                                                    <thead>
                                                        <tr>
                                                            <th><div align="center">Tên lớp</div></th>
                                                                <td>Sửa</td>
                                                                <td>Xóa</td>
                                                        </tr>
                                                    </thead>

                                                    <tbody>
                                                    <%
                                                        for(int i = 0; i < admin.getMyClasses().size() ; i++){                            
                                                    %>
                                                        <tr class="statement111">
                                                            <th><label for="Field111"><%= admin.getMyClasses().get(i).getClassName() %></label></th>
                                                            <td title="Sửa"><a style=" text-align: center" href="AdminController?state=admin_class&info=edit&id=<%= admin.getMyClasses().get(i).getID() %>">sửa</a></td>
                                                            <td title="Xóa"><a style=" text-align: center" href="AdminController?state=admin_class&info=del&id=<%= admin.getMyClasses().get(i).getID() %> " onclick="return show_confirm();">xóa</a></td>
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