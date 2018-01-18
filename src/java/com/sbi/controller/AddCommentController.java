package com.sbi.controller;

import com.sbi.model.Comments;
import com.sbi.model.Suggestion;
import com.sbi.model.User;
import com.sbi.service.CommentService;
import com.sbi.service.SuggestionService;
import com.sbi.service.UserService;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.TreeSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AddCommentController extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        HttpSession session = request.getSession();

        String suggestionid = request.getParameter("id");
        UserService service = new UserService();
        String id  = (String) session.getAttribute("pfid");
        String name = service.getUser(id).getUsername();
        String comment = request.getParameter("comment");
        String createdbyid = (String) session.getAttribute("pfid");

        Comments com = new Comments();
        com.setUsername(name);
        com.setComment(comment);
        com.setSuggestionid(suggestionid);

        CommentService servicecom = new CommentService();
        TreeSet set = new TreeSet();
        
        set = servicecom.addComment(com); 
        if (set.isEmpty()) {
            out.write("failure");
        } else {
            response.getWriter().write("failure");
        }
    }
}
