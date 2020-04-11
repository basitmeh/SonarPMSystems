package com.sonar.auth;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Login")
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String un = request.getParameter("uname");
        String pw = request.getParameter("psw");

        PrintWriter out = response.getWriter();
        Cookie ck = new Cookie("auth", un);
        ck.setMaxAge(600);
        if (un.equals("sonar") & pw.equals("sonar")) {
            response.addCookie(ck);
            response.sendRedirect("sonar-pm/dashboard.jsp");
            return;
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            request.getSession().setAttribute("auth", "false");
            rd.include(request, response);
        }
    }

}