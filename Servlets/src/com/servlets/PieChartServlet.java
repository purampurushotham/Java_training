package com.servlets;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import com.google.gson.Gson;
import org.json.JSONObject;

    @WebServlet("/PieChartServlet")
public class PieChartServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List jobDetails = new LinkedList();
        Connection connection = null;
        JSONObject jobObj = null;
        String connectionURL = "jdbc:mysql://192.168.1.107/employees";
        response.setContentType("application/json");
        PrintWriter pt = response.getWriter();
        Gson gson = new Gson();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(connectionURL,"purushotham","pass");
            String sql = "select * from jobrecords GROUP BY status";
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            ResultSetMetaData rmd = rs.getMetaData();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String jobno = rs.getString("jobno");
                String department = rs.getString("department");
                String division = rs.getString("division");
                String region = rs.getString("region");
                String status = rs.getString("status");
                jobObj = new JSONObject();
                jobObj.put("id", id);
                jobObj.put("name", name);
                jobObj.put("jobno", jobno);
                jobObj.put("department", department);
                jobObj.put("division", division);
                jobObj.put("region", region);
                jobObj.put("status", status);
                jobDetails.add(jobObj);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (connection != null) {
                try {
                    connection.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
        pt.println(jobDetails);
        /*request.setAttribute("jobData",jobDetails);
        RequestDispatcher reqDs = request.getRequestDispatcher("/searchJobs.jsp");
        if (reqDs != null){
            reqDs.forward(request, response);

        }*/
    }
}
