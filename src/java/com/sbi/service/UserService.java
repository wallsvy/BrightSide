package com.sbi.service;

import com.sbi.dao.UserDAO;
import com.sbi.model.User;

public class UserService {

    UserDAO dao = new UserDAO();
    User user = new User();

    public String checkLogin(User user) {
        user = dao.checkLogin(user);
        if (user != null && !user.getDesignation().equals(null)
                && !"".equals(user.getDesignation())
                && (user.getDesignation().equalsIgnoreCase("AM") || user.getDesignation().equalsIgnoreCase("DM")
                || user.getDesignation().equalsIgnoreCase("M") || user.getDesignation().equalsIgnoreCase("CM")
                || user.getDesignation().equalsIgnoreCase("AGM") || user.getDesignation().equalsIgnoreCase("DGM")
                || user.getDesignation().equalsIgnoreCase("Assitant"))) {
            return "dashboard.jsp";
        }
        else if (user != null && !user.getDesignation().equals(null)
                && !"".equals(user.getDesignation())
                && user.getDesignation().equalsIgnoreCase("Admin")) {
            return "dashboardadmin.jsp";
        }
        else if (user != null && !user.getDesignation().equals(null)
                && !"".equals(user.getDesignation())
                && user.getDesignation().equalsIgnoreCase("RM")) {
            return "dashboardcontroller.jsp";
        }
        
        return "";
    }

    public boolean registerUser(User user) {
        boolean response = dao.registerUser(user);
        if (response) {
            return response;
        }
        return false;
    }
    
    public User getUser(String id){
        User user = new User();
        user.setPfid(id);
        UserDAO dao = new UserDAO();
        return dao.getUser(user);
    }
}
