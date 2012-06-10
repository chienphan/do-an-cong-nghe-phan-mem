/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Test;
import Model.TestOfUser;
import Model.User;

/**
 *
 * @author Administrator
 */
@WebServlet(name = "TestController", urlPatterns = {"/TestController"})
public class TestController extends HttpServlet {

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
       
        String username = request.getParameter("username");
        String permission = request.getParameter("permission");
        //System.out.println("Input Username: " + name);
        
        String userID = request.getParameter("userID");
        String testID = request.getParameter("testID");

        System.out.println(userID);
        System.out.println(userID);
        
        if(username != null && Integer.parseInt(permission) == 1){
            try {
                User user = new User(username);
                ArrayList<TestOfUser> list = new ArrayList<TestOfUser>();
                list = user.listTest();

                //send session
                HttpSession session = request.getSession(false);

                System.out.println("UserID = " + user.getID());
                System.out.println("TestID = " + user.getListTest().get(0).getID());

                session.setAttribute("message", "login");
                session.setAttribute("username", username);
                session.setAttribute("permission", permission);
                session.setAttribute("listtest", list);
                session.setAttribute("userID", user.getID());
                session.setAttribute("testID", user.getListTest().get(0).getID());
                response.sendRedirect("user.jsp");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(TestController.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        else if(userID != null && testID != null){

            System.out.println("Ban la: " + userID + ", ban yeu cau testID: " + testID);

            User user = new User(Integer.parseInt(userID));
            Test test = new Test(Integer.parseInt(testID));

            HttpSession session = request.getSession(false);
            session.setAttribute("test", test);
            session.setAttribute("user", user);
            response.sendRedirect("test.jsp");    
        }
        else{
            HttpSession session = request.getSession(false);
            session.setAttribute("message", null);
            response.sendRedirect("index.jsp");  
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
}
