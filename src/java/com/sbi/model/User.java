package com.sbi.model;

public class User {
    private String pfid;
    private String username;
    private String password;
    private String designation;
    private String emailid;

    public User() {
    }

    public User(String pfid, String username, String password, String usertype,String email,String designation) {
        this.pfid = pfid;
        this.username = username;
        this.password = password;
        this.designation = usertype;
        this.emailid = email;
        this.designation = designation;
    }

    public User(String pfid) {
        this.pfid = pfid;
    }

    public User(String pfid, String password) {
        this.pfid = pfid;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPfid() {
        return pfid;
    }

    public void setPfid(String pfid) {
        this.pfid = pfid;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }
    
    
}
