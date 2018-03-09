package com.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

@WebServlet(name = "addEmployee")
public class addEmployee extends HttpServlet {
    private ServletConfig config;
    String page = "/jobRecords";
    public void init(ServletConfig config){
        this.config = config;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter pt = response.getWriter();
        String name = request.getParameter("jobname");
        String jobno= request.getParameter("jobno");
        String doj= request.getParameter("doj");
        String status=request.getParameter("status");
        String dept= request.getParameter("dept");
        String division=request.getParameter("division");
        String region=request.getParameter("region");
        System.out.println("Testing in enviromnmtn");
        System.out.println(request);
        System.out.println(name+jobno+doj+status+dept+division+region);
        Connection connection = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            String connectionURL = "jdbc:mysql://192.168.1.107/employees";
            ResultSet rs;
            connection = DriverManager.getConnection(connectionURL,"purushotham","pass");
            String sql = "insert into jobRecords(name,jobno,date,department,division,region,status) values (?,?,?,?,?,?,?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, name);
            pst.setString(2, jobno);
            pst.setString(3, doj);
            pst.setString(4, dept);
            pst.setString(5, division);
            pst.setString(6, region);
            pst.setString(7, status);
            pst.executeUpdate();
            response.sendRedirect(page);
            pst.close();

        }catch (SQLException e){
            System.out.print(e.toString());
        }catch (ClassNotFoundException e){
            System.out.print(e.toString());
        }
        catch (Exception e){
            System.out.print(e.toString());
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
