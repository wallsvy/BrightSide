package com.sbi.dao;

import com.sbi.factory.ConnectionFactory;
import com.sbi.model.Suggestion;
import com.sbi.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.TreeSet;
import java.util.logging.Level;
import java.util.logging.Logger;

public class SuggestionDAO {

    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public boolean createSuggestion(Suggestion suggestion) {
        String sql = "insert into suggestion values(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, suggestion.getSuggestionid());
            stmt.setString(2, suggestion.getTitle());
            stmt.setString(3, suggestion.getDescription());
            stmt.setString(4, suggestion.getCreationdate());
            stmt.setString(5, suggestion.getCreatedbyid());
            stmt.setString(6, suggestion.getReceivedbyid());
            stmt.setString(7, suggestion.getStatus());
            stmt.setString(8, suggestion.getLastupdateddate());
            stmt.setString(9, suggestion.getCategory());
            stmt.setString(10, suggestion.getCreatedbyname());
            stmt.setString(11, suggestion.getReceivedbyname());
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

    public TreeSet getUserSuggestions(User user) {
        String sql = "select * from suggestion where createdbyid = ?";
        TreeSet set = new TreeSet();
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getPfid());
            rs = stmt.executeQuery();
            while (rs.next()) {
                String suggestionid = rs.getString(1);
                String title = rs.getString(2);
                String description = rs.getString(3);
                String creationdate = rs.getString(4);
                String createdbyid = rs.getString(5);
                String receivedbyid = rs.getString(6);
                String status = rs.getString(7);
                String lastupdateddate = rs.getString(8);
                String category = rs.getString(9);
                String createdbyname = rs.getString(10);
                String receivedbyname = rs.getString(11);
                set.add(new Suggestion(suggestionid, title, description, creationdate, createdbyid, receivedbyid, status, lastupdateddate, category, createdbyname, receivedbyname));
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

    public TreeSet getAllClosedSuggestions() {
        String sql = "select * from suggestion where status = 'closed'";
        TreeSet set = new TreeSet();
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                String suggestionid = rs.getString(1);
                String title = rs.getString(2);
                String description = rs.getString(3);
                String creationdate = rs.getString(4);
                String createdbyid = rs.getString(5);
                String receivedbyid = rs.getString(6);
                String status = rs.getString(7);
                String lastupdateddate = rs.getString(8);
                String category = rs.getString(9);
                String createdbyname = rs.getString(10);
                String receivedbyname = rs.getString(11);
                set.add(new Suggestion(suggestionid, title, description, creationdate, createdbyid, receivedbyid, status, lastupdateddate, category, createdbyname, receivedbyname));
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
    
    public TreeSet getAllSuggestions() {
        String sql = "select * from suggestion where status <>'closed'";
        TreeSet set = new TreeSet();
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                String suggestionid = rs.getString(1);
                String title = rs.getString(2);
                String description = rs.getString(3);
                String creationdate = rs.getString(4);
                String createdbyid = rs.getString(5);
                String receivedbyid = rs.getString(6);
                String status = rs.getString(7);
                String lastupdateddate = rs.getString(8);
                String category = rs.getString(9);
                String createdbyname = rs.getString(10);
                String receivedbyname = rs.getString(11);
                set.add(new Suggestion(suggestionid, title, description, creationdate, createdbyid, receivedbyid, status, lastupdateddate, category, createdbyname, receivedbyname));
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
    
    public boolean removeSuggestion(String id){
        String sql = "delete from suggestion where suggestionid=?";
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1,id);
            stmt.executeUpdate();
            return true;
        }
        catch (SQLException ex) {
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
    }
    
    
    public Suggestion getSuggestion(String id) {
        String sql = "select * from suggestion where suggestionid=?";
        Suggestion sug = null;
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, id);
            rs = stmt.executeQuery();
            while (rs.next()) {
                String suggestionid = rs.getString(1);
                String title = rs.getString(2);
                String description = rs.getString(3);
                String creationdate = rs.getString(4);
                String createdbyid = rs.getString(5);
                String receivedbyid = rs.getString(6);
                String status = rs.getString(7);
                String lastupdateddate = rs.getString(8);
                String category = rs.getString(9);
                String createdbyname = rs.getString(10);
                String receivedbyname = rs.getString(11);
                sug = new Suggestion(suggestionid, title, description, creationdate, createdbyid, receivedbyid, status, lastupdateddate, category, createdbyname, receivedbyname);
            }
            return sug;
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
    
    public boolean closeSuggestion(String id){
        String sql = "update suggestion set status='closed' where suggestionid=?";
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1,id);
            stmt.executeUpdate();
            return true;
        }
        catch (SQLException ex) {
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
    }
    
    
}
