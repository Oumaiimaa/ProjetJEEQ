package com.projetjees3.servlets;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileDoc extends HttpServlet 
{

    private static final long serialVersionUID = 1L;
    
    public ProfileDoc()
     {
         super();
     }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {        
        this.getServletContext().getRequestDispatcher("/WEB-INF/profiledoc.jsp").forward(request, response);
        //response.sendRedirect("/ProjetJEES3/profiledoc");
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {      

    }
    
}
