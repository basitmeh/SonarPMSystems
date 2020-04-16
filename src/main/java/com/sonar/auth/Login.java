package com.sonar.auth;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;

import com.sonar.util.PropertiesMapUtil;

@WebServlet("/Login")
public class Login extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        Map<String, String> mapString = PropertiesMapUtil.getPropertyMap();
        String username = request.getHeader(mapString.get("username"));
        String firstName = request.getHeader(mapString.get("firstname"));
        String lastName = request.getHeader(mapString.get("lastname"));

        String un = request.getParameter("uname");
        String pw = request.getParameter("psw");

        PrintWriter out = response.getWriter();
        Cookie ck = new Cookie("auth", un);
        ck.setMaxAge(6000);

        if (un.equals("sonar") & pw.equals("sonar")) {
            if (StringUtils.isNotBlank(username) && StringUtils.isNotBlank(firstName)
                    && StringUtils.isNotBlank(lastName)) {
                request.getSession().setAttribute("auth", "true");
                request.getSession().setAttribute("firstName", firstName);
                request.getSession().setAttribute("lastName", lastName);
                request.getSession().setAttribute("userName", username);
                response.addCookie(ck);
                response.sendRedirect("sonar-pm/dashboard.jsp");
            } else {
                request.getSession().setAttribute("auth", "true");
                request.getSession().setAttribute("firstName", "Sonar");
                request.getSession().setAttribute("lastName", "Systems");
                request.getSession().setAttribute("userName", "s-systems");
                response.addCookie(ck);
                response.sendRedirect("sonar-pm/dashboard.jsp");
            }
        } else {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            request.getSession().setAttribute("auth", "false");
            rd.include(request, response);
        }
    }
}