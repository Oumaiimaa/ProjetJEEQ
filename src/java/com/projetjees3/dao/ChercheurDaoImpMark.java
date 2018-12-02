package com.projetjees3.dao;

import com.projetjees3.beans.BeanException;
import java.util.ArrayList;
import java.util.List;
import com.projetjees3.beans.UserInsert;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ChercheurDaoImpMark 
{
    private DaoFactory daoFactory;
    private DaoFactory daoFactory2;
    private Connection connexion;
    private Connection connexion2;
    //Constructor
    ChercheurDaoImpMark(DaoFactory daoFactory)
    {
        this.daoFactory = daoFactory;
    }


    public void ajouter(UserInsert chercheur) throws DaoException, SQLException
    {
        PreparedStatement preparedStatement = null;
        int a;
        a =(int) Math.round(Math.random()*100);
        System.out.println("a= "+a);
        try
        {
            connexion = daoFactory.getConnection();
            String sqlLine = "INSERT INTO rechercheat(id_rech_at,id_rech,loc_rech_at) VALUES('"+a+"','"+a+"',?)";
            preparedStatement = connexion.prepareStatement(sqlLine);
            preparedStatement.setString(1, chercheur.getMark());
            preparedStatement.executeUpdate();
            
            connexion.commit();
            connexion2 = daoFactory2.getConnection();
            String sqlLine2 = "INSERT INTO cherch_rech_at VALUES('"+(ChercheurDaoImpl.b)+"','"+(ChercheurDaoImpl.b)+"','"+a+"','"+a+"')";
            preparedStatement = connexion2.prepareStatement(sqlLine2);
            preparedStatement.executeUpdate();
            connexion2.commit();
          
        }
        catch(SQLException e)
        {
            try
            {
                if (connexion != null)
                {
                    connexion.rollback();
                }
                if (connexion2 != null)
                {
                    connexion2.rollback();
                }
            }
            
            catch(SQLException e2)
            {
                e2.printStackTrace();
            }
            
            throw new DaoException("Erreur de communication avec la BDD");
        }
        
    }
    
    public List<UserInsert> lister() throws BeanException, DaoException
    {
        List<UserInsert> chercheurSAt = new ArrayList<UserInsert>();
        Statement statement = null;
        ResultSet resultat = null;
        
        try
        {
            String sqlLineTwo = "SELECT nom_user, prenom_user FROM utilisateur";
            connexion = daoFactory.getConnection();
            statement = connexion.createStatement();
            resultat = statement.executeQuery(sqlLineTwo);
            
            while(resultat.next())
            {
                String nom_cherch = resultat.getString("nom_user");
                String prenom_cherch = resultat.getString("prenom_user");

                UserInsert chercheur = new UserInsert();
                chercheur.setNomCherch(nom_cherch);
                chercheur.setPrenomCherch(prenom_cherch);
                
                chercheurSAt.add(chercheur);
                
            }
        }
        
        catch(SQLException e)
        { 
            e.printStackTrace();
        }
        
        
        finally
        {
            try
            {
                if(connexion != null)
                {
                    connexion.close();
                }
            }
            catch(SQLException e)
            {
                throw new DaoException("Erreur dans la connexion avec la BDD");
            }
        }
        
        return chercheurSAt;
    }

}
