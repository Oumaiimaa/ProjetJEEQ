
package com.projetjees3.servlets;

import com.projetjees3.beans.UserInsert;
import com.projetjees3.dao.ChercheurDaoImpMark;
import com.projetjees3.dao.DaoException;
import com.projetjees3.dao.DaoFactory;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Test", urlPatterns = {"/Test"})
public class AfterInscription extends HttpServlet {
   private ChercheurDaoImpMark chercheurDao;
    private static final long serialVersionUID = 1L;
    static int nb;
    public void init() throws ServletException
    {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.chercheurDao = daoFactory.getChercheurDao1();
    }
        public AfterInscription()
     {
         super();
     }

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Test</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Test at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        String msg = request.getParameter("urlPop");
        String msg2 = request.getParameter("urlPop2");
        System.out.println("msggggggg = "+msg);
        System.out.println("nombre = "+msg2);
        String[] msg3 = msg.split("#,");
        System.out.println(Arrays.toString(msg3));
        System.out.println(msg3[0]);
        UserInsert chercheur = new UserInsert();
        for(int i=0;i<msg.length();i++){
           if((msg3[i].length())<35){
        chercheur.setMark(msg3[i]);
        
       try {
           chercheurDao.ajouter(chercheur);
       } catch (DaoException ex) {
           Logger.getLogger(AfterInscription.class.getName()).log(Level.SEVERE, null, ex);
       } catch (SQLException ex) {
           Logger.getLogger(AfterInscription.class.getName()).log(Level.SEVERE, null, ex);
       }}
        }
        nb = msg.length();
        System.out.println("nb de mark = "+nb);
        //response.sendRedirect("/WEB-INF/FormRecherche.jsp");
    }

    /*@Override
    public String getServletInfo() {
        return "Short description";
    }*/

}
