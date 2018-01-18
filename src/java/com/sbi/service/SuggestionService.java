package com.sbi.service;

import com.sbi.dao.SuggestionDAO;
import com.sbi.dao.UserDAO;
import com.sbi.helper.Helper;
import com.sbi.model.Suggestion;
import com.sbi.model.User;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;

public class SuggestionService {
    SuggestionDAO dao = new SuggestionDAO();
    UserDAO userdao = new UserDAO();
    Helper helper = new Helper();
    
    public boolean createSuggestion(Suggestion suggestion){
        User user = userdao.getUser(new User(suggestion.getCreatedbyid()));
        
        suggestion.setCreationdate(helper.getDate()+" at " + helper.getTime());
        suggestion.setLastupdateddate(helper.getDate()+" at " + helper.getTime());
        suggestion.setReceivedbyid("asd");
        suggestion.setReceivedbyname("asd");
        suggestion.setStatus("new");
        suggestion.setSuggestionid("SUG"+helper.getTimestamp());
        suggestion.setCreatedbyname(user.getUsername());
        
        if(dao.createSuggestion(suggestion)){
            return true;
        }else{
            return false;
        }
    }
    
    public TreeSet getUserSuggestion(User user){
        return dao.getUserSuggestions(user);
    }
    
    public Suggestion getSuggestion(String id){
        return dao.getSuggestion(id);
    }
    
    public TreeSet getLast5Suggestion(User user){
        TreeSet set = new TreeSet();
        Iterator it = dao.getUserSuggestions(user).iterator();
        int count=1;
        while(count<=5 && it.hasNext()){
            set.add(it.next());
            count++;
        }
        return set;
    }
    
     public TreeSet getConLast5Suggestion(){
        TreeSet set = new TreeSet();
        Iterator it = dao.getAllSuggestions().iterator();
        int count=1;
        while(count<=5 && it.hasNext()){
            set.add(it.next());
            count++;
        }
        return set;
    }
    
    public TreeSet getAllSuggestion(){
        return dao.getAllSuggestions();
    }
    
    public TreeSet getAllClosedSuggestion(){
        return dao.getAllClosedSuggestions();
    }
    
    public boolean removeSuggestion(String id){
        return dao.removeSuggestion(id);
    }
    
    public boolean closeSuggestion(String id){
        return dao.closeSuggestion(id);
    }
}
