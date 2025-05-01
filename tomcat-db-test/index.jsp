<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

<h1>DB</h1>

<%
    Connection conn = null;
    try {
        String Url = "jdbc:mysql://" + System.getenv("DB_HOST") + "/" + System.getenv("DB_NAME");
        String Id = System.getenv("DB_USER");
        String Pass = System.getenv("DB_PASSWORD");

        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(Url, Id, Pass);
        out.println("was-db Connection Success!");
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
