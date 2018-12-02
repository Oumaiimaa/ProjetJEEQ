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

public class ChercheurDaoImpl 
{
    private DaoFactory daoFactory;
    private DaoFactory daoFactory2;
    private Connection connexion;
    private Connection connexion3;  
    //Constructor
    ChercheurDaoImpl(DaoFactory daoFactory)
    {
        this.daoFactory = daoFactory;
    }

    static int b;
    public void ajouter(UserInsert chercheur) throws DaoException, SQLException
    {   b =(int) Math.round(Math.random()*100);
        PreparedStatement preparedStatement = null;
        try
        {
            connexion = daoFactory.getConnection();
            String sqlLine = "INSERT INTO utilisateur(id_user,nom_user, prenom_user, email_user, num_tel_user, desc_user,"
                    + " date_naiss_user, niv_user, pays_org_user, pos_act_user, psw_user,type_cherch) VALUES('"+(b)+"',?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            preparedStatement = connexion.prepareStatement(sqlLine);
            preparedStatement.setString(1, chercheur.getNomCherch());
            preparedStatement.setString(2, chercheur.getPrenomCherch());
            preparedStatement.setString(3, chercheur.getEmailCherch());
            preparedStatement.setString(4, chercheur.getNumTelCherch());
            preparedStatement.setString(5, chercheur.getDescCherch());
            preparedStatement.setString(6, chercheur.getDateNaissCherch());
            preparedStatement.setString(7, chercheur.getNivCherch());
            preparedStatement.setString(8, chercheur.getPaysOrgCherch());
            preparedStatement.setString(9, chercheur.getPostActCherch());
            preparedStatement.setString(10, chercheur.getPswCherch());
            preparedStatement.setString(11, chercheur.getType_cherch());
            
            preparedStatement.executeUpdate();
            
            connexion.commit();
            connexion3 = daoFactory2.getConnection();
            String sqlLine2 = "INSERT INTO chercheur_at VALUES('"+ChercheurDaoImpl.b+"','"+(ChercheurDaoImpl.b)+"')";
            preparedStatement = connexion3.prepareStatement(sqlLine2);
            preparedStatement.executeUpdate();         
            connexion3.commit();
        }
        catch(SQLException e)
        {
            try
            {
                if (connexion != null)
                {
                    connexion.rollback();
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