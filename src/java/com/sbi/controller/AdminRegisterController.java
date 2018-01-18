/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbi.controller;

import com.sbi.model.User;
import com.sbi.service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminRegisterController extends HttpServlet {

     protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String pfid = request.getParameter("pfid").trim();
        String password = request.getParameter("password").trim();
        String confirmpwd = request.getParameter("confirmpassword").trim();
        String firstname = request.getParameter("firstname").trim();
        String lastname = request.getParameter("lastname").trim();
        String emailid = request.getParameter("emailid").trim();
        String designation = request.getParameter("designation").trim();
        String username = firstname + " " + lastname;
        UserService service = new UserService();
        
        if(password.equals(confirmpwd)){
            User user = new User(pfid, username, password, lastname, emailid,designation);
            boolean res = service.registerUser(user);
            if (res) {
            RequestDispatcher rd = request.getRequestDispatcher("dashboardadmin.jsp");
            rd.include(request, response);
            out.println("<script>$('#resigtrationSuccess').click();</script>");
            }
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("dashboardadmin.jsp");
            rd.include(request, response);
            out.println("<script>alert('Error! Password does not match.')</script>");
        }  
     }
}
