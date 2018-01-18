/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sbi.dao;

import com.sbi.factory.ConnectionFactory;
import com.sbi.model.Comments;
import com.sbi.model.Suggestion;
import com.sbi.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author sagar
 */
public class CommentDAO {

    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public boolean addComment(Comments comments) {
        String sql = "insert into comments values(?,?,?,?,?)";
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, comments.getCommentid());
            stmt.setString(2, comments.getSuggestionid());
            stmt.setString(3, comments.getUsername());
            stmt.setString(4, comments.getComment());
            stmt.setString(5, comments.getCreationdate());
            int i = stmt.executeUpdate();
            if (i == 1) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        } catch (Exception e) {
            System.out.println(e);
            return false;
        } finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return false;
    }
    
    public TreeSet getComments(String id) {
        String sql = "select * from comments where suggestionid = ?";
        TreeSet set = new TreeSet();
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, id);
            rs = stmt.executeQuery();
            while (rs.next()) {
                String commentid = rs.getString(1);
                String suggestionid = rs.getString(2);
                String userid = rs.getString(3);
                String comment = rs.getString(4);
                String creationdate = rs.getString(5);
                set.add(new Comments(commentid, suggestionid, userid, comment, creationdate));
            }
            return set;
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
            return null;
        } catch (Exception e) {
            System.out.println(e);
            return null;
        } finally {
            try {
                stmt.close();
                con.close();
            } catch (Exception e) {
                System.out.println(e);
            }
        }
    }


}
