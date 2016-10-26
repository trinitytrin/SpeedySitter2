

<!DOCTYPE html>
<html>
  <head>
    <title>Geocoding service</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #floating-panel {
        position: absolute;
        top: 10px;
        left: 25%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
    </style>

  </head>
  <body>
      
    <div id="floating-panel">
<form id="mapData" name="myForm" action=""
 method="post">
      <input id="address" type="textbox" value="Sydney, NSW">
      <input id="submit" type="button" value="Geocode">
    <input id="latshow" name="lati" type="text" value="-34.397">
    <input id="lonshow" name="loni" type="text" value="150.644">

    </form>
    </div>
    <div id="map"></div>
    <script>
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: {lat: -34.397, lng: 150.644}
        });
        var geocoder = new google.maps.Geocoder();

        document.getElementById('submit').addEventListener('click', function() {
          geocodeAddress(geocoder, map);
        });
      }

      function geocodeAddress(geocoder, resultsMap) {
          var address = document.getElementById('address').value;
          var lat = -34.397;
          var lon = 150.644;
        geocoder.geocode({'address': address}, function(results, status) {
          if (status === 'OK') {
              resultsMap.setCenter(results[0].geometry.location);
              lat = results[0].geometry.location.lat();
              lon = results[0].geometry.location.lng();
              document.getElementById("latshow").value = lat;
              document.getElementById("lonshow").value = lon;
              
            var marker = new google.maps.Marker({
              map: resultsMap,
              position: results[0].geometry.location
            });

           // var hdnfldVariable = document.getElementById('hdnfldVariable');
           // hdnfldVariable.value = 'value from javascript';
            //document.write("lat and long is: "+lat+","+lon);
          } else {
            alert('Geocode was not successful for the following reason: ' + status);
          }
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAj6urLaye1cY3kWXvlzJeyO3irtZduAX4&callback=initMap">
    </script>
          




  </body>
</html>
