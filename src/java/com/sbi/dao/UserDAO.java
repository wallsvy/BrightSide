package com.sbi.dao;

import com.sbi.factory.ConnectionFactory;
import com.sbi.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class UserDAO {

    Connection con = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public User checkLogin(User user) {
        String sql = "select designation from user where pfid = ? and password= ?;";

        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getPfid());
            stmt.setString(2, user.getPassword());
            rs = stmt.executeQuery();
            if (rs.next()) {
                user.setDesignation(rs.getString("designation"));
                return user;
            }
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
        return null;
    }

    public boolean registerUser(User user) {
        String sql = "insert into user values(?,?,?,?,?);";
        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getPfid());
            stmt.setString(2, user.getUsername());
            stmt.setString(3, user.getPassword());
            stmt.setString(4, user.getEmailid());
            stmt.setString(5, user.getDesignation());
            int i = stmt.executeUpdate();
            if(i==1){
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
    
    public User getUser(User user) {
            String sql = "select * from user where pfid = ?";

        try {
            con = ConnectionFactory.getConnection();
            stmt = con.prepareStatement(sql);
            stmt.setString(1, user.getPfid());
            rs = stmt.executeQuery();
            if (rs.next()) {
                user.setPfid(rs.getString(1));
                user.setUsername(rs.getString(2));
                user.setEmailid(rs.getString(4));
                user.setDesignation(rs.getString(5));
                return user;
            }
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
        return null;
    }

}
