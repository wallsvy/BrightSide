package com.sbi.controller;

import com.sbi.model.User;
import com.sbi.service.SuggestionService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.TreeSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AllSuggestionsConController extends HttpServlet {
    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        TreeSet set = new TreeSet();
        SuggestionService service = new SuggestionService();
        User user = new User();
        HttpSession session = request.getSession();
        user.setPfid((String) session.getAttribute("pfid"));
        set = service.getAllSuggestion();
        
        if (set.isEmpty()) { 
            response.sendRedirect("dashboardcontroller.jsp");
        
        } else {
            request.setAttribute("suggestions", set);
            response.sendRedirect("dashboardcontroller.jsp");
        
        }
        
        
    }

}
