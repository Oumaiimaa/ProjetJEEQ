<!DOCTYPE html>
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
                                                          DocLoc est un portail communautaire destiné aux doctorant.es de l'ED TESC. Il a pour 
vocation de faciliter le partage entre les doctorant.es, si vous cherchez des doctorant.es travaillant sur une thématique semblable à la vôtre ou si 
vous avez besoin d'informations en vue d'un voyage sur le terrain, ce portail pourra vous mettre en contact avec des doctorant.es du monde entier.
        </div>
    </div>
    <br/>
    <div class="container" align ="center">
        <div id="map" style="width:1000px;height:1000px"></div> 
<div id="floating-panel">
      <input onclick="clearMarkers();" type=button value="Hide Markers">
      <input onclick="showMarkers();" type=button value="Show All Markers">
      <input onclick="deleteMarkers();" type=button value="Delete Markers">
    </div>
    <div id="map"></div>
    <p>Click on the map to add markers. </p>
    <script>

      // In the following example, markers appear when the user clicks on the map.
      // The markers are stored in an array.
      // The user can then click an option to hide, show or delete the markers.
      var map;
      var markers = [];
      var pos = [];

      function initMap() {
        var haightAshbury = {lat: 51.5, lng: -0.12 };

        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 3,
          center: haightAshbury,
          mapTypeId: 'terrain'
        });
        // This event listener will call addMarker() when the map is clicked.
        map.addListener('click', function(event) {
          addMarker(event.latLng);
		  var ps = event.latLng; 
		  //alert(ps);
		  //alert(ps.lat()); alert(ps.getA
        });

        // Adds a marker at the center of the map.
        //addMarker(haightAshbury);

	    
      }

		//alert(mLatLang);
      // Adds a marker to the map and push to the array.
      function addMarker(location) {
        var marker = new google.maps.Marker({
          position: location,
          map: map
        });
        markers.push(marker);
		
      }

      // Sets the map on all markers in the array.
      function setMapOnAll(map) {
        for (var i = 0; i < markers.length; i++) {
          markers[i].setMap(map);
		  //var lat1[i] = markers[i].getPosition().lat();
		  //var lng1[i] = markers[i].getPosition().lng();
		  //alert(lat1[i]);
		  //alert(lng1[i]);
                  if(i!= (markers.length -1)){
		  pos[i] = markers[i].getPosition()+"#";
                  }
                  else{pos[i] = markers[i].getPosition();}
          alert(pos[i]);

        }//###
        document.getElementById('urlPop').value = pos;
        document.getElementById('urlPop2').value = pos.length;
      }

      // Removes the markers from the map, but keeps them in the array.
      function clearMarkers() {
        setMapOnAll(null);
      }

      // Shows any markers currently in the array.
      function showMarkers() {
        setMapOnAll(map);
      }

      // Deletes all markers in the array by removing references to them.
      function deleteMarkers() {
        clearMarkers();
        markers = [];
        
      }

    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDnC9oPvCGKXXbGYG5JSO0efpoPRYP2S7A&callback=initMap">
    </script>
    </div>
    
    <br/>
    	<form method="POST" action="Test">
    <input type="hidden" id="urlPop" name="urlPop"/>
    <input type="hidden" id="urlPop2" name="urlPop2"/>
    <input type="submit" value="valider" />
	</form>
    </body>
</html>
