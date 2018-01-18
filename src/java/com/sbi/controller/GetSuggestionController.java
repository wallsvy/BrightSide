package com.sbi.controller;

import com.google.gson.Gson;
import com.sbi.model.Suggestion;
import com.sbi.service.SuggestionService;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class GetSuggestionController extends HttpServlet {
    
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        SuggestionService service = new SuggestionService();
        HttpSession session = request.getSession();
        String id = request.getParameter("id");
        Suggestion sug = new Suggestion();
        sug = service.getSuggestion(id);
        
        String json = new Gson().toJson(sug);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.write(json);
        
//        if (sug.equals(null)) { 
//            out.print("failure");
//        
//        } else {
//            request.setAttribute("suggestions", sug);
//            response.getWriter().write("");
//            out.write("");
//        
//        }
        
    }

}
