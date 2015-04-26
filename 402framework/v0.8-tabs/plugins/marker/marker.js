$(document).ready(function() {
$("span#map").hide();
});
 
function detectBrowser() {
  var useragent = navigator.userAgent;
  var mapdiv = document.getElementById("map_canvas");
    
  if (useragent.indexOf('iPhone') != -1 || useragent.indexOf('Android') != -1 ) {
    mapdiv.style.width = '100%';
    mapdiv.style.height = '100%';
  } else {
    mapdiv.style.width = '600px';
    mapdiv.style.height = '800px';
  }
}




//varaiables
var map_coords = $('div#map_canvas').attr('coordinates');
//split coordinates into latitude and longitude
var coords = map_coords.split(",");


//standard google map output
//var map_canvas = document.getElementById('map_canvas');
var coords = {"lat" : coords[0], "long" : coords[1]};
var myCenter = new google.maps.LatLng(coords.lat, coords.long);


function initialize() {


var map_options = {
center: myCenter,
zoom: 15,
mapTypeId: google.maps.MapTypeId.ROADMAP
};
var map = new google.maps.Map(document.getElementById('map_canvas'), map_options);
var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);
}
  //load and render the map on window load
google.maps.event.addDomListener(window, 'load', initialize);


