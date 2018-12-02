
package com.projetjees3.dao;
import com.projetjees3.beans.UserBean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class UserDAO 	
{
   static Connection currentCon = null;
   static ResultSet rs = null;  
   static ResultSet rs2 = null;  
   static ResultSet rs3 = null;  
	
   public static UserBean login(UserBean bean) {
	
      //preparing some objects for connection 
      Statement stmt = null;    
      Statement stmt2 = null;    

      String email = bean.getEmail();    
      String password = bean.getPsw();   
	  // requete pour chercher l'utilisateur dans la base de données ( la table users)
      String searchQuery = "select * from utilisateur where email_user='"+ email+ "' AND psw_user='"+ password+ "'";

   // "System.out.println" prints in the console; Normally used to trace the process
   System.out.println("Your user name is " + email);          
   System.out.println("Your password is " + password);
   System.out.println("Query1: "+searchQuery);

   try 
   {
      //connect to DB 
      currentCon = DaoFactory.getConnection();
      stmt=currentCon.createStatement();
      stmt2=currentCon.createStatement();
      rs = stmt.executeQuery(searchQuery);	        
      boolean more = rs.next();
      // if user does not exist set the isValid variable to false
      if (!more) 
      {
         System.out.println("Sorry, you are not a registered user! Please sign up first");
         bean.setValid(false);
      } 
	        
      //if user exists set the isValid variable to true
      else if (more) 
      {
         String firstName = rs.getString("prenom_user");
         String lastName = rs.getString("nom_user");
         String desc = rs.getString("desc_user");
         String niveau = rs.getString("niv_user");
         String dateN = rs.getString("date_naiss_user");
         String pays = rs.getString("pays_org_user");
         String id = rs.getString("id_user");
       /*  String searchQuery2 = "select nom_rech,desc_rech from recherche where id_rech in(select id_rech from rech_at where id_user ='"+ id+"')";
         rs2 = stmt2.executeQuery(searchQuery2);
         int i=0;
         int count = 0;
         while (rs2.next()) {
                count++;
         }
         rs2 = stmt2.executeQuery(searchQuery2);
         String[][] listRech = new String[count][2];
         while(rs2.next()){
             listRech[i][0] = rs2.getString("nom_rech");
             listRech[i][1] = rs2.getString("desc_rech");
             i++;
         }*/
         System.out.println("Welcome " + firstName + lastName);
         bean.setFirstName(firstName);
         bean.setLastName(lastName);
         bean.setDesc(desc);
         bean.setNiveau(niveau);
         bean.setDateN(dateN);
         bean.setPays(pays);
        // bean.setListe(listRech);
         bean.setValid(true);
      }
      
   } 

   catch (Exception ex) 
   {
      System.out.println("Log In failed: An Exception has occurred! " + ex);
   } 
	    
   //some exception handling
   finally 
   {
      if (rs != null)	{
         try {
            rs.close();
         } catch (Exception e) {}
            rs = null;
         }
      if (rs2 != null)	{
         try {
            rs2.close();
         } catch (Exception e) {}
            rs2 = null;
         }
      if (stmt != null) {
         try {
            stmt.close();
         } catch (Exception e) {}
            stmt = null;
         }
      if (stmt2 != null) {
         try {
            stmt2.close();
         } catch (Exception e) {}
            stmt2 = null;
         }
      if (currentCon != null) {
         try {
            currentCon.close();
         } catch (Exception e) {
         }

         currentCon = null;
      }
   }

return bean;
	
   }
   
   
}


