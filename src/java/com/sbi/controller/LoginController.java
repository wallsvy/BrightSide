package com.sbi.controller;

import com.sbi.dao.UserDAO;
import com.sbi.model.User;
import com.sbi.service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginController extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String pfid = request.getParameter("pfid").trim();
        String password = request.getParameter("password").trim();

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        UserService service = new UserService();
        User user = new User(pfid, password);
        String address = service.checkLogin(user);
        
        
        HttpSession session = request.getSession(true);
        session.setAttribute("pfid", pfid);

        if (!"".equals(address)) {
            
            response.sendRedirect(address);
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
            rd.include(request, response);
            out.println("<script>$('#wrongCredential').click();</script>");
        }
    }
}
