/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Admin;
import Model.Person;
import Model.TestOfUser;
import Model.User;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "PersonController", urlPatterns = {"/PersonController"})
public class PersonController extends HttpServlet {

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
        //processRequest(request, response);
        String logout = request.getParameter("comment").toString();
        
        if(logout.equals("logout")){
            HttpSession session = request.getSession(false);
            session.setAttribute("username", null);
            session.setAttribute("message", "logout");
            response.sendRedirect("index.jsp");
        }
        if(logout.equals("login")){
            String username = request.getParameter("name").toString();
            String password = request.getParameter("pass").toString();
            Person person = new Person();
            
            try {
                int permission = person.login(username, password);
                if (permission == 0){
                    //send session
                    HttpSession session = request.getSession(false);
                    session.setAttribute("username", username);
                    session.setAttribute("password", password);
                    response.sendRedirect("AdminController?state=home&info=none");
                }
                else if (permission == 1){
                    //send session
                    HttpSession session = request.getSession(false);
                    //đoạn này cần sửa lại sao cho có tính bảo mật cao.
                    response.sendRedirect("TestController?username=" + username+ "&permission="+ permission);
                }
                else{
                    HttpSession ses = request.getSession(false);
                    ses.setAttribute("message", "Invalid username or password!");
                    response.sendRedirect("index.jsp");
                }
            } catch (SQLException ex) {
                Logger.getLogger(PersonController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (InstantiationException ex) {
                Logger.getLogger(PersonController.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IllegalAccessException ex) {
                Logger.getLogger(PersonController.class.getName()).log(Level.SEVERE, null, ex);
            } 
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
        //processRequest(request, response);
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
