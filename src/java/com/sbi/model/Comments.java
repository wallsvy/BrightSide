package com.sbi.model;

import java.util.Date;

public class Comments implements Comparable<Comments>{
    private String commentid;
    private String suggestionid;
    private String username;
    private String comment;
    private String creationdate;

    public Comments() {
    }

    public Comments(String commentid, String suggestionid, String userid, String comment, String creationdate) {
        this.commentid = commentid;
        this.suggestionid = suggestionid;
        this.username = userid;
        this.comment = comment;
        this.creationdate = creationdate;
    }

   

    public String getCommentid() {
        return commentid;
    }

    public void setCommentid(String commentid) {
        this.commentid = commentid;
    }

    public String getSuggestionid() {
        return suggestionid;
    }

    public void setSuggestionid(String suggestionid) {
        this.suggestionid = suggestionid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(String creationdate) {
        this.creationdate = creationdate;
    }
    
    
    @Override
    public int compareTo(Comments com) {
        return this.commentid.compareTo(com.commentid);
    }
}
