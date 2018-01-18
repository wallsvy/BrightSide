package com.sbi.model;

public class Suggestion implements Comparable<Suggestion>{
    private String suggestionid;
    private String title;
    private String description;
    private String creationdate;
    private String createdbyid;
    private String receivedbyid;
    private String status;
    private String lastupdateddate;
    private String category;
    private String createdbyname;
    private String receivedbyname;

    public Suggestion(String suggestionid, String title, String description, String creationdate, String createdbyid, String receivedbyid, String status, String lastupdateddate, String category, String createdbyname, String receivedbyname) {
        this.suggestionid = suggestionid;
        this.title = title;
        this.description = description;
        this.creationdate = creationdate;
        this.createdbyid = createdbyid;
        this.receivedbyid = receivedbyid;
        this.status = status;
        this.lastupdateddate = lastupdateddate;
        this.category = category;
        this.createdbyname = createdbyname;
        this.receivedbyname = receivedbyname;
    }

    public String getCategory() {
        return category;
    }

    public String getCreatedbyid() {
        return createdbyid;
    }

    public void setCreatedbyid(String createdbyid) {
        this.createdbyid = createdbyid;
    }

    public String getReceivedbyid() {
        return receivedbyid;
    }

    public void setReceivedbyid(String receivedbyid) {
        this.receivedbyid = receivedbyid;
    }

    public String getCreatedbyname() {
        return createdbyname;
    }

    public void setCreatedbyname(String createdbyname) {
        this.createdbyname = createdbyname;
    }

    public String getReceivedbyname() {
        return receivedbyname;
    }

    public void setReceivedbyname(String receivedbyname) {
        this.receivedbyname = receivedbyname;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public Suggestion() {
    }

    
    public Suggestion(String title, String description, String createdbyid, String category) {
        this.title = title;
        this.description = description;
        this.createdbyid = createdbyid;
        this.category = category;
    }

    public String getCreationdate() {
        return creationdate;
    }

    public void setCreationdate(String creationdate) {
        this.creationdate = creationdate;
    }

    public String getSuggestionid() {
        return suggestionid;
    }

    public void setSuggestionid(String suggestionid) {
        this.suggestionid = suggestionid;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getLastupdateddate() {
        return lastupdateddate;
    }

    public void setLastupdateddate(String lastupdateddate) {
        this.lastupdateddate = lastupdateddate;
    }

    @Override
    public int compareTo(Suggestion sug) {
        return sug.lastupdateddate.compareTo(this.lastupdateddate);
    }
    
    
    
}
