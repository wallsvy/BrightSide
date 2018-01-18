/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbi.controller;

import com.google.gson.Gson;
import com.sbi.service.CommentService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.TreeSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author sagar
 */
@WebServlet(name = "ShowCommentController", urlPatterns = {"/ShowCommentController"})
public class ShowCommentController extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        TreeSet set = new TreeSet();
        String suggestionid = request.getParameter("id");
        
        CommentService service = new CommentService();
        
        set = service.getComments(suggestionid);
        
        String json = new Gson().toJson(set);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.write(json);
          
    }
}
