<%@ page import= "java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<!--<link rel="stylesheet" href="css/smallbody.css" />-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
        <title>DocLoc | Ajouter vos recherches</title>
    </head>

    <body>
    <%@ include file='navbar.jsp'%>
        
    <div class="container" >
        <h1>Bienvenue sur DocLoc</h1>

        <br/>
        <div id="container">
                                                          DocLoc est un portail communautaire destiné aux doctorant.es. Il a pour 
vocation de faciliter le partage entre les doctorant.es, si vous cherchez des doctorant.es travaillant sur une thématique semblable à la vôtre ou si 
vous avez besoin d'informations en vue d'un voyage sur le terrain, ce portail pourra vous mettre en contact avec des doctorant.es du monde entier.
        </div>
    </div>
    <br/>
    <div class="container" align ="center">
        <div id="map" style="width:1000px;height:1000px"></div> 

    <div id="map"></div>    
    <script>

      var map;
      function initMap() {
        var haightAshbury = {lat: 51.5, lng: -0.12 };
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 3,
          center: haightAshbury,
          mapTypeId: 'terrain'
        });
        // This event listener will call addMarker() when the map is clicked.
 <%  try {
    Class.forName("com.mysql.jdbc.Driver");
  } catch(ClassNotFoundException e) {
    System.err.print("ClassNotFoundException: ");
    System.err.println(e.getMessage());
  }    
  try {
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/projet", "root", "");
    Statement st = con.createStatement();
    String query = "SELECT loc_rech_at FROM rechercheat ";
    System.out.println("query : " +query);      
    ResultSet rs = st.executeQuery(query);
  while(rs.next())
  {
      String position1  =rs.getString("loc_rech_at");
      char ss1 = position1.charAt(0);
      String foo1 = position1.replace(ss1 ,' ');
      char ss2 = foo1.charAt(foo1.length()-1);
      String foo2 = foo1.replace(ss2 ,' ');
      String[] loc = foo2.split(",");
        %>          
       var myLatlng = new google.maps.LatLng(<%=loc[0]%>,<%=loc[1]%>);
      addMarker(myLatlng); 
 <%   }     
  rs.close();
  con.close(); }
  catch(SQLException ex) {
      System.err.println("SQLException: " + ex.getMessage());
    }   %>   
 }
        function addMarker(location) {
        var marker = new google.maps.Marker({
          position: location,
          map: map
        }); 
        //markers.push(marker);
}
        
    </script>
    <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnC9oPvCGKXXbGYG5JSO0efpoPRYP2S7A&callback=initMap">
     </script>
   </div>
  </body>
</html>



