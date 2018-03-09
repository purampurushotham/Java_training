package com.servlets;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebFilter(filterName = "LoginFilter")
public class LoginFilter implements Filter {
    private static final long serialVersionUID = 1L;
    String page = "/jobRecords";
    private final String userID = "puram";
    private final String password = "puram";
    public void destroy() {
    }
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
            String user = req.getParameter("user");
            String pass= req.getParameter("password");
            HttpServletRequest request = (HttpServletRequest) req;
            HttpServletResponse response = (HttpServletResponse) resp;
            HttpSession session = request.getSession(false);
            System.out.print(request.getSession(false));
            session.setAttribute("user",user);
            System.out.print(session.getAttribute("user"));
            if((userID.equals(user) && password.equals(pass)) || ((session.getAttribute("user") != null) && (session.getAttribute("user").equals(userID)))){
                chain.doFilter(req, resp);
            }else{
                RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
                PrintWriter out= resp.getWriter();
                out.println("<font color=red>Either user name or password is wrong.</font>");
                rd.include(req, resp);
            }
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
