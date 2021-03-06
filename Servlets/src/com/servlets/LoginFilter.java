package com.servlets;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
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
    private ServletContext context;
    public void destroy() {
    }
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
            HttpServletRequest request = (HttpServletRequest) req;
            HttpServletResponse response = (HttpServletResponse) resp;
            HttpSession session = request.getSession(false);
            System.out.print(session);
            if(session != null && session.getAttribute("user")!= null){
                chain.doFilter(req, resp);
            }else{
                RequestDispatcher rd = req.getRequestDispatcher("/login.jsp");
                PrintWriter out= resp.getWriter();
                out.println("<font color=red>Either user name or password is wrong.</font>");
                rd.include(req, resp);
            }
    }

    public void init(FilterConfig config) throws ServletException {
        this.context = config.getServletContext();
    }

}
