package com.projetjees3.servlets;


import com.projetjees3.beans.BeanException;
import com.projetjees3.beans.UserInsert;
import com.projetjees3.dao.ChercheurDaoImpl;
import com.projetjees3.dao.DaoException;
import com.projetjees3.dao.DaoFactory;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.projetjees3.dao.ChercheurDao;
import javax.servlet.annotation.WebServlet;

@WebServlet("/InscriptionServlet")
public class InscriptionServlet extends HttpServlet 
{

    private static final long serialVersionUID = 1L;
    private ChercheurDaoImpl chercheurDao;
    
    public void init() throws ServletException
    {
        DaoFactory daoFactory = DaoFactory.getInstance();
        this.chercheurDao = daoFactory.getChercheurDao();
    }
        
    public InscriptionServlet()
     {
         super();
     }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {        
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
    {        
        try 
        {
            UserInsert chercheur = new UserInsert();
            chercheur.setNomCherch(request.getParameter("nom"));
            chercheur.setPrenomCherch(request.getParameter("prenom"));
            chercheur.setEmailCherch(request.getParameter("email"));
            chercheur.setNumTelCherch(request.getParameter("num"));
            chercheur.setDescCherch(request.getParameter("descprofile"));
            chercheur.setDateNaissCherch(request.getParameter("datenaissance"));
            chercheur.setNivCherch(request.getParameter("nivetudes"));
            chercheur.setPaysOrgCherch(request.getParameter("paysorg"));
            chercheur.setPostActCherch(request.getParameter("posact"));
            chercheur.setPswCherch(request.getParameter("password"));
            String res = request.getParameter("wtornot");
            if(res != null){
            chercheur.setType_cherch("1");
            }
            else
                chercheur.setType_cherch("0");
            chercheurDao.ajouter(chercheur);
            request.setAttribute("chercheurSAt", chercheurDao.lister());
        } 
        catch (BeanException e) 
        {
            e.printStackTrace();
        } 
        
        catch (DaoException e2) 
        {
            e2.printStackTrace();     
        }

        
        catch (SQLException e3) 
        {
            e3.printStackTrace();
        }
        //response.sendRedirect("/ProjetJEES3/AddMarkUser");
        this.getServletContext().getRequestDispatcher("/WEB-INF/AddMarkUser.jsp").forward(request, response);  
    }
    
}
