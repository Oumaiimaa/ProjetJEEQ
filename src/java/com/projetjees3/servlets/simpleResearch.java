package com.projetjees3.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/AddMarkUser")

public class simpleResearch extends HttpServlet 
{

    private static final long serialVersionUID = 1L;
    
    public simpleResearch()
     {
         super();
     }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {   
        this.getServletContext().getRequestDispatcher("/WEB-INF/simpleresearch.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {
        
    }

}
