package com.sbi.helper;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Helper {
    public String getDate(){
        Date today = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd.MM.yyyy");
        String mailDate = formatter.format(today);
        return mailDate;
    }
    public String getTime(){
        Date today = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("hh:mm a");
        String mailDate = formatter.format(today);
        return mailDate;
    }
    
    
     public String getTimestamp(){
        Date today = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
        String mailDate = formatter.format(today);
        return mailDate;
    }
}
