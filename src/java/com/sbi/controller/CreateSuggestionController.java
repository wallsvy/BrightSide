package com.sbi.controller;

import com.sbi.helper.Helper;
import com.sbi.model.Suggestion;
import com.sbi.service.SuggestionService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CreateSuggestionController extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        SuggestionService service = new SuggestionService();
        
        HttpSession session = request.getSession();
        
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        
        String createdbyid =  (String)session.getAttribute("pfid");
        String category = request.getParameter("category");
        
        Suggestion suggestion = new Suggestion(title, description, createdbyid, category);
        
        if(service.createSuggestion(suggestion)){
            response.sendRedirect("dashboard.jsp");
            
            //RequestDispatcher rd = request.getRequestDispatcher("dashboard.jsp");
            //rd.include(request, response);
            //out.println("<script>alert('submited')</script>");
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("createsuggestion.jsp");
            rd.include(request, response);
            out.println("<script>$('failure').click();</script>");
        }
    }
}
