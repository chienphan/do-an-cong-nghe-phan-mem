/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Model.Admin;
import Model.MyClass;
import Model.Person;
import Model.User;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Administrator
 */
public class AdminController extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String state = request.getParameter("state").toString();
        String info = request.getParameter("info").toString();
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        Admin admin = new Admin();
        
        try {
            //kiểm tra người đang đăng nhập tại đây. 0-> admin
            if(admin.login(username, password) == 0){
                admin.setUsername(username);
                session.setAttribute("pageInfo", admin);
                session.setAttribute("message", "login");
                session.setAttribute("permission", "0");
                if (state.equals("home")){
                response.sendRedirect("admin.jsp");
                }
                //Case Class Manager.
                else if(state.equals("admin_class")){
                    if(info.equals("new")){
                        session.setAttribute("info", "new");
                        response.sendRedirect("admin_class.jsp"); 
                    }
                    else if(info.equals("create")){
                        String classname = request.getParameter("classname").toString();
                        MyClass myClass = new MyClass();
                        //tao moi class 
                        myClass.createClass(classname);
                        response.sendRedirect("AdminController?state=admin_class&info=null");
                    }
                    else if(info.equals("del")){
                        int id = Integer.parseInt(request.getParameter("id").toString());
                        MyClass myClass = new MyClass();
                        // xoa class
                        myClass.delClass(id);
                        response.sendRedirect("AdminController?state=admin_class&info=null");
                    }
                    else if(info.equals("edit")){
                        int id = Integer.parseInt(request.getParameter("id").toString());
                        session.setAttribute("info", "edit");
                        session.setAttribute("id", id);
                        response.sendRedirect("admin_class.jsp");
                    }
                    else if(info.equals("update")){
                        int id = Integer.parseInt(request.getParameter("id").toString());
                        String classname = request.getParameter("classname").toString();
                        MyClass myClass = new MyClass();
                        //update Class
                        myClass.updateClass(id, classname);
                        response.sendRedirect("AdminController?state=admin_class&info=null");
                    }
                    else{
                        session.setAttribute("info", "null");
                        response.sendRedirect("admin_class.jsp"); 
                    }
                }
                else if(state.equals("admin_question")){
                    response.sendRedirect("admin_question.jsp");                
                }
                else if(state.equals("admin_subjects")){
                    response.sendRedirect("admin_subjects.jsp");                
                }
                else if(state.equals("admin_test")){
                    response.sendRedirect("admin_test.jsp"); 
                }
                //Case User manager.
                else if(state.equals("admin_user")){
                    
                    if(info.equals("new")){
                        session.setAttribute("info", "new");
                        response.sendRedirect("admin_user.jsp"); 
                    } 
                    else if(info.equals("create")){
                        String uname = request.getParameter("uname").toString();
                        String upass = request.getParameter("upass").toString();
                        int upermission = Integer.parseInt(request.getParameter("upermission").toString() );
                        int IDClass = Integer.parseInt(request.getParameter("IDClass").toString()); 
                        User user = new User();
                        user.createUser(uname, upass, upermission, IDClass);
                        //session.setAttribute("info", "null");
                        response.sendRedirect("AdminController?state=admin_user&info=null");
                    }
                    else if(info.equals("del")){
                        int ID = Integer.parseInt(request.getParameter("id").toString());
                        User user = new User();
                        user.delUser(ID);
                        response.sendRedirect("AdminController?state=admin_user&info=null");
                    }
                    else if(info.equals("edit")){
                        int ID = Integer.parseInt(request.getParameter("id").toString());
                        User user = new User(ID);
                        session.setAttribute("info", "edit");
                        session.setAttribute("id", ID);
                        session.setAttribute("IDClass", user.getIDClass());
                        response.sendRedirect("admin_user.jsp");
                    }
                    else if(info.equals("update")){
                        int ID = Integer.parseInt(request.getParameter("id").toString());
                        String uname = request.getParameter("uname").toString();
                        String upass = request.getParameter("upass").toString();
                        int upermission = Integer.parseInt(request.getParameter("upermission").toString() );
                        int IDClass = Integer.parseInt(request.getParameter("IDClass").toString()); 
                        User user = new User();
                        user.updateUser(ID, uname, upass, upermission, IDClass);
                        response.sendRedirect("AdminController?state=admin_user&info=null");
                    }
                    else{
                        session.setAttribute("info", "null");
                        response.sendRedirect("admin_user.jsp"); 
                    }
                    
                }
                else{
                    session.setAttribute("username", null);
                    session.setAttribute("message", null);
                    response.sendRedirect("index.jsp");  
                }
            }
            else{
                session.setAttribute("username", null);
                session.setAttribute("message", null);
                response.sendRedirect("index.jsp");  
            }
        } catch (SQLException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (NullPointerException ex) {
            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
                            Logger.getLogger(AdminController.class.getName()).log(Level.SEVERE, null, ex);
                        }
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
