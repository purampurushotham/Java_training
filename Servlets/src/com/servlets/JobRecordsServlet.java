package com.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.transform.Result;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "JobRecordsServlet")
public class JobRecordsServlet extends HttpServlet {
    private ServletConfig config;
    String page = "/jobRecords.jsp";
    public void init(ServletConfig config){
        this.config = config;
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");//setting the content type
        PrintWriter pw=response.getWriter();//get the stream to write the data

//writing html in the stream
        pw.println("<html><body>");
        pw.println("Welcome to servlet");
        pw.println("</body></html>");

        pw.close();//closing the stream
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String connectionURL = "jdbc:mysql://localhost/employees";
        Connection connection = null;
        ResultSet rs;
        List jobsList = new ArrayList();
        response.setContentType("text/html");//setting the content type
        PrintWriter pw=response.getWriter();//get the stream to write the data
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL,"root","root");
            String sql = "Select * from jobRecords";
            Statement st = connection.createStatement();
            st.executeQuery(sql);
            rs = st.getResultSet();
            ResultSetMetaData rmd= rs.getMetaData();
            int columns = rmd.getColumnCount();
            while(rs.next()) {
                /*HashMap row = new HashMap();
                for(int i=1 ; i <= columns ;i++){
                    row.put(rmd.getColumnName(i),rs.getObject(i));

                }
*/              jobsList.add(rs.getInt("id"));
                jobsList.add(rs.getString("name"));
                jobsList.add(rs.getString("date"));
                jobsList.add(rs.getString("jobno"));
                jobsList.add(rs.getString("department"));
                jobsList.add(rs.getString("division"));
                jobsList.add(rs.getString("region"));
                jobsList.add(rs.getString("status"));
            }
            rs.close();
            st.close();
        }catch (Exception e){
            System.out.println("exceptionms"+e);
        }
        request.setAttribute("jobData",jobsList);
        RequestDispatcher reqDs = request.getRequestDispatcher(page);
        if (reqDs != null){

            reqDs.forward(request, response);

        }
        pw.close();//closing the stream
    }
}
