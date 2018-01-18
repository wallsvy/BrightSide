package com.sbi.factory;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionFactory {

    private static Connection cn = null;

    public static Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bankproject", "root", "root");
        } catch (Exception ex) {
            System.out.println(ex);
        }
        return cn;
    }
}
