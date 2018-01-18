/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbi.service;

import com.sbi.dao.CommentDAO;
import com.sbi.helper.Helper;
import com.sbi.model.Comments;
import java.util.TreeSet;

/**
 *
 * @author sagar
 */
public class CommentService {
    
    public TreeSet addComment(Comments comment){
        CommentDAO dao = new CommentDAO();
        Helper helper = new Helper();
        
        comment.setCreationdate(helper.getDate() + " at " + helper.getTime());
        comment.setCommentid("COM" + helper.getTimestamp());
        if(dao.addComment(comment)){
            return dao.getComments(comment.getSuggestionid());
        }
        return null;
    }
    
    public TreeSet getComments(String id){
        TreeSet set = new TreeSet();
        CommentDAO dao = new CommentDAO();
        set = dao.getComments(id);
        return set;
    }
}
