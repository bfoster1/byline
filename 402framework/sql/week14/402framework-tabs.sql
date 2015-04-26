    -- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 14, 2015 at 08:33 PM
-- Server version: 5.5.41-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `402framework_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `contentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentname` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `contentdesc` text COLLATE utf8_unicode_ci NOT NULL,
  `contenttext` text COLLATE utf8_unicode_ci NOT NULL,
  `contentimage` text COLLATE utf8_unicode_ci NOT NULL,
  `contentmap` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `contentvideo` text COLLATE utf8_unicode_ci NOT NULL,
  `contentaudio` text COLLATE utf8_unicode_ci NOT NULL,
  `contentcreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`contentid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=35 ;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`contentid`, `contentname`, `contentdesc`, `contenttext`, `contentimage`, `contentmap`, `contentvideo`, `contentaudio`, `contentcreated`) VALUES
(1, 'Home', 'home page for Byline', '<head><style>@import url(https://fonts.googleapis.com/css?family=Open+Sans:300,400&subset=latin,latin-ext);body{background:beige;font-family:"Open Sans", sans-serif;}section.aw-accordion{width:800px; margin:40px auto;margin-bottom:30px;}section.aw-accordion .one,section.aw-accordion .two, section.aw-accordion .three, section.aw-accordion .four{font-size:14px;
  width:23%;
  float:left;
  height:600px;
  display:inline-block;
  z-index:1;
  position:relative;
  overflow:hidden;
  padding:1%;
  transition:all 200ms cubic-bezier(0.645, 0.575, 0.090, 1.000);
  cursor: default;
}

section.aw-accordion .one span, 
section.aw-accordion .two span, 
section.aw-accordion .three span, 
section.aw-accordion .four span{
   background: -webkit-linear-gradient(left, rgba(255, 255, 255, .5), rgba(255, 255, 255, 0));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  height:100%;
  display:table;
}

section.aw-accordion .one{
  background-color:#3498db;
  border-radius:10px 0 0 10px;
}

section.aw-accordion .two{
  background-color:#e74c3c;
}

section.aw-accordion .three{
  background-color:#1abc9c;
}

section.aw-accordion .four{
  background-color:#f1c40f;
  border-radius:0 10px 10px 0;
}

section.aw-accordion .one:hover, 
section.aw-accordion .two:hover, 
section.aw-accordion .three:hover, 
section.aw-accordion .four:hover{
  overflow-y: auto;
}

section.aw-accordion .one:hover span,
section.aw-accordion .two:hover span,
section.aw-accordion .three:hover span,
section.aw-accordion .four:hover span{
   background: -webkit-linear-gradient(left, rgba(255, 255, 255, .7), rgba(255, 255, 255, .7));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}

section.aw-accordion div::-webkit-scrollbar {  
    width: 12px;  
}  
section.aw-accordion div::-webkit-scrollbar-track {  
    background-color: rgba(1, 1, 1, .1);
}  
section.aw-accordion div::-webkit-scrollbar-thumb {  
    background-color: rgba(1, 1, 1, .2);
}  
section.aw-accordion div::-webkit-scrollbar-thumb:hover {  
    background-color: rgba(1, 1, 1, .3);
}  

section.aw-accordion div img{
  float:left; 
  margin:0 10px 0 0;
  border:3px solid rgba(255, 255, 255, .2);
  box-shadow:0 0 15px rgba(1, 1, 1, .1);
  -webkit-box-shadow:0 0 15px rgba(1, 1, 1, .1);
  -moz-box-shadow:0 0 15px rgba(1, 1, 1, .1);
  width:150px;
}

section.aw-accordion div img,
section.aw-accordion div h1{
  opacity:.3; 
  transition:all .3s
}

section.aw-accordion div:hover img,
section.aw-accordion div:hover h1{
  opacity:1;
}

section.aw-accordion div h1{
  margin:0 0 5px;
  font-weight:300; 
  color:white;
}

@media (max-width:1024px){
  section.aw-accordion .one,
  section.aw-accordion .two,
  section.aw-accordion .three,
  section.aw-accordion .four{
    font-size:12px;
  }

  section.aw-accordion div img{
    width:80px;
  }

  section.aw-accordion div h1{
    font-size:120%
  }
}

@media (max-width:768px){
  section.aw-accordion div img{
    width:60px;
  }

  section.aw-accordion div h1{
    font-size:100%
  }
}

/* Styling Demo */
section.aw-accordion > h1{
  color:#233445;
  display:block;
  width:100%;
}

section.aw-accordion > h1 > .read-article{
  color:#233445;
  border-radius:5px;
  border:1px solid #233445;
  padding:4px 8px;
  text-decoration:none;
  float:right;
  text-align:center;
  font-size:80%;
}

section.aw-accordion > h1 > .read-article:hover{
  color:white;
  border:1px solid white;
}

@media (max-width:768px){
  section.aw-accordion{
    width:100%; 
  }
  section.aw-accordion h1{
    font-size:80%;
    letter-spacing:-1px;
  }
}</style><script>$( "section.aw-accordion div" ).mouseover(function() {
  $(this).css("width","50%"");
  $(this).siblings("div").css("width","14%"");
});</script></head><section class="aw-accordion">
    <h1>Chicago Literary Meetups
    <a href="http://www.meetup.com" class="read-article">Join Now!</a></h1>
    <div class="one">
        <h1>Poetry</h1>
        <span><img src="http://upload.wikimedia.org/wikipedia/commons/7/73/Meetup_Logo_2015.png">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum blandit augue at libero porta, eu euismod libero cursus. Aliquam id dui nec tortor sodales luctus. Aenean lobortis tortor euismod, malesuada sapien in, euismod ipsum. Maecenas blandit tortor purus, eu mattis libero ullamcorper eget. Phasellus in metus et velit euismod efficitur a non est. Quisque placerat egestas scelerisque. Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh. Nulla vel nunc a ipsum interdum hendrerit. Curabitur arcu lectus, scelerisque sit amet lectus a, cursus pretium nibh. Nunc a arcu efficitur, pharetra dui sed, sodales felis. Duis eget pulvinar libero, at aliquam dui. Donec quis nulla vitae leo volutpat sodales.</span>
    </div>

    <div class="two">
        <h1>Plays</h1>
        <span><img src="http://upload.wikimedia.org/wikipedia/commons/7/73/Meetup_Logo_2015.png">Lorem ipsum dolor sit amet, consectetur adipiscing elit.Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh.Morbi nec venenatis lectus.Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh.Morbi nec venenatis lectus. Vestibulum blandit augue at libero porta, eu euismod libero cursus. Aliquam id dui nec tortor sodales luctus. Aenean lobortis tortor euismod, malesuada sapien in, euismod ipsum. Maecenas blandit tortor purus, eu mattis libero ullamcorper eget. Phasellus in metus et velit euismod efficitur a non est. Quisque placerat egestas scelerisque. Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh. Nulla vel nunc a ipsum interdum hendrerit. Curabitur arcu lectus, scelerisque sit amet lectus a, cursus pretium nibh. Nunc a arcu efficitur, pharetra dui sed, sodales felis. Duis eget pulvinar libero, at aliquam dui. Donec quis nulla vitae leo volutpat sodales.</span>
    </div>

    <div class="three">
        <h1>Novels</h1>
        <span><img src="http://upload.wikimedia.org/wikipedia/commons/7/73/Meetup_Logo_2015.png">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum blandit augue at libero porta, eu euismod libero cursus. Aliquam id dui nec tortor sodales luctus. Aenean lobortis tortor euismod, malesuada sapien in, euismod ipsum. Maecenas blandit tortor purus, eu mattis libero ullamcorper eget. Phasellus in metus et velit euismod efficitur a non est. Quisque placerat egestas scelerisque. Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh. Nulla vel nunc a ipsum interdum hendrerit. Curabitur arcu lectus, scelerisque sit amet lectus a, cursus pretium nibh. Nunc a arcu efficitur, pharetra dui sed, sodales felis. Duis eget pulvinar libero, at aliquam dui. Donec quis nulla vitae leo volutpat sodales.</span>
    </div>
     
    <div class="four"> 
        <h1>Documentary</h1>
        <span><img src="http://upload.wikimedia.org/wikipedia/commons/7/73/Meetup_Logo_2015.png">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum blandit augue at libero porta, eu euismod libero cursus. Aliquam id dui nec tortor sodales luctus. Aenean lobortis tortor euismod, malesuada sapien in, euismod ipsum. Maecenas blandit tortor purus, eu mattis libero ullamcorper eget. Phasellus in metus et velit euismod efficitur a non est. Quisque placerat egestas scelerisque. Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh.Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh.Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh.Morbi nec venenatis lectus.Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh.Morbi nec venenatis lectus.Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh.Morbi nec venenatis lectus. Vivamus vehicula velit eu venenatis vulputate. In hac habitasse platea dictumst. Duis nibh tellus, commodo vitae dapibus nec, blandit eu nibh.</span>
    </div>
</section>', '', '', '', '', '2014-01-28 01:16:40'),
(2, 'History', 'timeline of literary publications', '<h5>History</h5><head>
<script>$(window).scroll(function(){         
  $(".container p").each(function(){
      var scrollTop     = $(window).scrollTop(),
          elementOffset = $(this).offset().top,
          distance      = (elementOffset - scrollTop),
          windowHeight  = $(window).height(),
          breakPoint    = windowHeight*0.9;

      if(distance > breakPoint) {
        $(this).addClass("more-padding"); 
      }  if(distance < breakPoint) {
        $(this).removeClass("more-padding");  
      }
  });
});</script>
  <style>
  body{
       background-color:beige;
   } 
    
  h1 {
    font-size:2em;
    text-align:center;
    margin:20px 0 40px;
    padding:0;
  }
  .container {
    background:beige;
    width:80%;
    margin:0 auto;
    overflow:auto;
    padding:2%;
  }
  .right-content, .left-content {
    float:left;
    display:block;
    width:40%;
    padding:1% 2%;
  }
  .left-content {
    border-right:5px dotted orange; 
    text-align:right;
  }
  .left-content p {
    margin:150px 0 0;
  }
  .right-content p {
    margin:80px 0 150px;
  }
  .container p {
  -webkit-transition: all 0.7s ease-in-out;
  -moz-transition: all 0.7 ease-in-out;
  -ms-transition: all 0.7s ease-in-out;
  -o-transition: all 0.7s ease-in-out;
  transition: all 0.7s ease-in-out; 
  }
  .left-content .more-padding {
    padding-right:100px;
  }
  .right-content .more-padding {
    padding-left:100px;
  }
  p{
     border-radius: 25px;
    background: brown;
    padding: 20px; 
    width: 200px;
    height: 150px;
    color:white;
    box-shadow: 10px 10px 5px #888888;
     
  }
  </style>
</head>
<body>
<div class="container">
  <h1>Literary Timeline</h1>
   <div class="left-content">
      <p>Winesburg, Ohio-1919</p>
      <p>A Street in Bronzeville-1945</p>
      <p>The Adventures of Augie March-1953</p>
      <p>A Raisin in the Sun-1959</p>
      <p>Division Street, America-1967</p>
      <p>Humboldt''s Gift-1975</p>
      <p>The Coast of Chicago-1990</p>
      <p>I Sailed With Magellan-2004</p>
   </div>
   <div class="right-content">
      <p>Sister Carrie-1900</p>
      <p>Native Son-1940</p>
      <p>The Man With The Golden Arm-1949</p>
      <p>A Walk on the Wild Side - 1956</p>
      <p>The Bean Eaters-1960</p>
      <p>Working-1974</p>
      <p>The House on Mango Street-1984</p>
      <p>The Time Traveler''s Wife-2003</p>
      <p>The Lazarus Project-2008</p>
      
   </div>
</div>
</body>', '', '', '','', '2014-01-28 01:16:40'),
(3, 'Facts', 'statistical information', '<style>
body {
  font-family: Arial;
  padding: 25px;
  background-color: beige;
  color: #808080;
    text-align: center; 
}
h1,h3{
  
  color: brown;
}

/*-=-=-=-=-=-=-=-=-=-=-=- */
/* Column Grids */
/*-=-=-=-=-=-=-=-=-=-=-=- */

.col_half { width: 49%; }
.col_third { width: 32%; }
.col_fourth { width: 23.5%; }
.col_fifth { width: 18.4%; }
.col_sixth { width: 15%; }
.col_three_fourth { width: 74.5%;}
.col_twothird{ width: 66%;}
.col_half,
.col_third,
.col_twothird,
.col_fourth,
.col_three_fourth,
.col_fifth{
  position: relative;
  display:inline;
  display: inline-block;
  float: left;
  margin-right: 2%;
  margin-bottom: 20px;
}
.end { margin-right: 0 !important; }
/* Column Grids End */

.wrapper { width: 800px; margin: 30px auto; position: relative; color:white;}
.counter { background-color:orange; padding: 20px 0; border-radius: 5px;}
.count-title { font-size: 40px; font-weight: normal;  margin-top: 10px; margin-bottom: 0; text-align: center; }
.count-text { font-size: 13px; font-weight: normal;  margin-top: 10px; margin-bottom: 0; text-align: center; }
.fa-2x { margin: 0 auto; float: none; display: table; color: #4ad1e5; }


</style>
<script>
  (function ($) {
  $.fn.countTo = function (options) {
    options = options || {};
    
    return $(this).each(function () {
      // set options for current element
      var settings = $.extend({}, $.fn.countTo.defaults, {
        from:            $(this).data("from"),
        to:              $(this).data("to"),
        speed:           $(this).data("speed"),
        refreshInterval: $(this).data("refresh-interval"),
        decimals:        $(this).data("decimals")
      }, options);
      
      // how many times to update the value, and how much to increment the value on each update
      var loops = Math.ceil(settings.speed / settings.refreshInterval),
        increment = (settings.to - settings.from) / loops;
      
      // references & variables that will change with each update
      var self = this,
        $self = $(this),
        loopCount = 0,
        value = settings.from,
        data = $self.data("countTo") || {};
      
      $self.data("countTo", data);
      
      // if an existing interval can be found, clear it first
      if (data.interval) {
        clearInterval(data.interval);
      }
      data.interval = setInterval(updateTimer, settings.refreshInterval);
      
      // initialize the element with the starting value
      render(value);
      
      function updateTimer() {
        value += increment;
        loopCount++;
        
        render(value);
        
        if (typeof(settings.onUpdate) == "function") {
          settings.onUpdate.call(self, value);
        }
        
        if (loopCount >= loops) {
          // remove the interval
          $self.removeData("countTo");
          clearInterval(data.interval);
          value = settings.to;
          
          if (typeof(settings.onComplete) == "function") {
            settings.onComplete.call(self, value);
          }
        }
      }
      
      function render(value) {
        var formattedValue = settings.formatter.call(self, value, settings);
        $self.html(formattedValue);
      }
    });
  };
  
  $.fn.countTo.defaults = {
    from: 0,               // the number the element should start at
    to: 0,                 // the number the element should end at
    speed: 1000,           // how long it should take to count between the target numbers
    refreshInterval: 100,  // how often the element should be updated
    decimals: 0,           // the number of decimal places to show
    formatter: formatter,  // handler for formatting the value before rendering
    onUpdate: null,        // callback method for every time the element is updated
    onComplete: null       // callback method for when the element finishes updating
  };
  
  function formatter(value, settings) {
    return value.toFixed(settings.decimals);
  }
}(jQuery));

jQuery(function ($) {
  // custom formatting example
  $("#count-number").data("countToOptions", {
  formatter: function (value, options) {
    return value.toFixed(options.decimals).replace(/\B(?=(?:\d{3})+(?!\d))/g, ",");
  }
  });
  
  // start all the timers
  $(".timer").each(count);  
  
  function count(options) {
  var $this = $(this);
  options = $.extend({}, options || {}, $this.data("countToOptions") || {});
  $this.countTo(options);
  }
});

</script>
<h1>Chicago Literary Statistics</h1>
<h3>Fun Facts</h3>

<div class="wrapper">
    <div class="counter col_fourth">
      <i class="fa fa-code fa-2x"></i>
      <h2 class="timer count-title" id="count-number" data-to="50" data-speed="1500"></h2>
       <p class="count-text ">Novels</p>
    </div>

    <div class="counter col_fourth">
      <i class="fa fa-coffee fa-2x"></i>
      <h2 class="timer count-title" id="count-number" data-to="3" data-speed="1500"></h2>
      <p class="count-text ">Short Stories</p>
    </div>

    <div class="counter col_fourth">
      <i class="fa fa-lightbulb-o fa-2x"></i>
      <h2 class="timer count-title" id="count-number" data-to="15" data-speed="1500"></h2>
      <p class="count-text ">Musical & Plays</p>
    </div>

    <div class="counter col_fourth end">
      <i class="fa fa-bug fa-2x"></i>
      <h2 class="timer count-title" id="count-number" data-to="293" data-speed="1500"></h2>
      <p class="count-text ">Films</p>
    </div>
</div>', '', '', '','', '2014-01-28 22:49:28'),
(4, 'Copyright', 'copyright notice for the site', '<h5>Copyright Notice</h5>', '', '', '', '', '2014-01-28 23:20:14'),
(5, 'About', 'information about the site', '<h5>Helpful Information</h5><head>
  
  <title>Chicago Book Stores</title>
  
  <style>
      * { margin: 0; padding: 0; }
body { font: 14px Georgia, serif; color: #222; }

article, aside, figure, footer, header, hgroup,
menu, nav, section { display: block; }

#page-wrap { width: 960px; margin: 60px auto; }
#map_canvas { width: 100%; height: 400px; width: 300px; float: left; position: relative; z-index: 30 !important; }

h1 { margin: 0 0 15px 0; font: bold 48px Helvetica, Arial, Sans-Serif; letter-spacing: -2px; }
h2 { margin: 0 0 15px 0; font: bold 32px Helvetica, Arial, Sans-Serif; letter-spacing: -1px; text-shadow: 0 1px 0px rgba(255,255,255,0.3); }
h3 { margin: 0 0  1px 0; font: bold 18px Helvetica, Arial, Sans-Serif; letter-spacing: -1px; }


#locations { list-style: none; width: 250px; float: left;  }
#locations li { padding: 10px; width: 800px; float: left; position: relative; z-index: 20; }
#locations li:hover, #locations li.hover { background: #ffe8b2 url(../images/shadow.png) 128px 0 repeat-y; }
#locations li:hover h3, #locations li.hover h3 { color: red; text-shadow: 0 1px 0px rgba(255,255,255,0.3); }


#content { width: 300px; }

#more-info { width: 340px; float: right; background: #ffe8b2; padding: 20px; height: 360px; }
#more-info * { position: relative; z-index: 40; }
#more-info > div { background: #e9e2bf; -moz-box-shadow: 0 0 14px rgba(70,49,1,0.5); -webkit-box-shadow: 0 0 14px rgba(70,49,1,0.5); padding: 20px; height: 320px; }
.longdesc { display: none; }
  </style>
  
  <script>
  
    $(function() {
    
      var chicago = new google.maps.LatLng(41.924832, -87.697456),
          pointToMoveTo, 
          first = true,
          curMarker = new google.maps.Marker({}),
          $el;
      
      var myOptions = {
          zoom: 10,
          center: chicago,
          mapTypeId: google.maps.MapTypeId.ROADMAP
        };
      
      var map = new google.maps.Map($("#map_canvas")[0], myOptions);
    
      $("#locations li").mouseenter(function() {
      
        $el = $(this);
                
        if (!$el.hasClass("hover")) {
        
          $("#locations li").removeClass("hover");
          $el.addClass("hover");
        
          if (!first) { 
            
            // Clear current marker
            curMarker.setMap(); 
            
            // Set zoom back to Chicago level
            // map.setZoom(10);
          }
          
          // Move (pan) map to new location
          pointToMoveTo = new google.maps.LatLng($el.attr("data-geo-lat"), $el.attr("data-geo-long"));
          map.panTo(pointToMoveTo);
          
          // Add new marker
          curMarker = new google.maps.Marker({
              position: pointToMoveTo,
              map: map,
              icon: "http://www.sevierriver.org/assets/14/google_maps_marker.png"
          });
          
          // On click, zoom map
          google.maps.event.addListener(curMarker, "click", function() {
             map.setZoom(14);
          });
          
          // Fill more info area
          $("#more-info")
            .find("h2")
              .html($el.find("h3").html())
              .end()
            .find("p")
              .html($el.find(".longdesc").html());
          
          // No longer the first time through (re: marker clearing)        
          first = false; 
        }
        
      });
      
      $("#locations li:first").trigger("mouseenter");
      
    });

  </script>

</head>

<body>

  <div id="page-wrap">
  
     <h1>Chicagos Best Bookstores</h1>
     
     <ul id="locations">
     
        <li data-geo-lat="41.9786" data-geo-long="-87.9047">
          <h3>Newberry Library</h3>
          <p>Books n Stuff</p>
          <p class="longdesc"><strong>About:</strong> Newberry Library has been voted the "Best Library in North America" for 10 years by two separate sources: Readers of the U.S. Edition of Literary Magazine (1998-2003) and Global Reader Magazine (2004-2007). Travel and Leisure magazines 2009 "Americas Favorite Libraries" ranked Newberry the best for hidden fees.</p>
        </li>
        
        <li data-geo-lat="41.927118" data-geo-long="-87.697621">
          <h3>City Lit Books</h3>
          <p>Chicago Authors</p>
          <p class="longdesc"><strong>Random review:</strong> Get your Read ON!</p>
        </li>
        
        <li data-geo-lat="41.921735" data-geo-long="-87.664688">
          <h3>Quimby''s</h3>
          <p>The Best in Town</p>
          <p class="longdesc"><strong>Random review:</strong> I love going here... I can always find a good read!!! </p>
        
        <li data-geo-lat="41.927568" data-geo-long="-87.705201">
          <h3>Afterwords Books</h3>
          <p>Nice store</p>
          <p class="longdesc"><strong>Random review:</strong> They have every genre that you can think of!!</p>
        
     </ul>

     <div id="map_canvas"></div>
     
     <div id="more-info"><div>
     
        <h2>More Info</h2>
        <p>Hover over location on the left. (JavaScript must be enabled)</p>
     
     </div></div>
      
  </div>
  
</body>', '', '', '','', '2014-03-22 23:33:54'),
(6, 'Site Content', 'an overview of current site content', '<h5>Site Content</h5>
  <meta charset="utf-8">
  <title>jQuery UI Accordion - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  body{
      backfround-color:beige;
      }
  </style>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
</head>
<body>
 
<div id="accordion">
  <h3>Galleries</h3>
  <div>
    
    <h1><a href="content/text&id=7">Publication Gallery</a></h1>
    <p>
    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
    </p>
  </div>
  <h3>Works</h3>
  <div>
       <h1><a href="content/text&id=8">Works</a></h1>
    <p>
    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
    suscipit faucibus urna.
    </p>
  </div>
  <h3>Landmarks</h3>
  <div>
      <h1><a href="content/text&id=10">Works</a></h1>
    <p>
    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3>Collections</h3>
  <div>
      <h1><a href="content/text&id=9">Works</a></h1>
    <p>
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>
 
 
</body></h5>', '', '', '','', '2014-03-31 00:27:45'),
(7, 'Image Galleries', 'an overview of current site image galleries', '<h5>Publication Galleries</h5><h5>Works</h5><meta charset="utf-8">
  <title>jQuery UI Accordion - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  body{
      backfround-color:beige;
      }
  </style>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
</head>
<body>
 
<div id="accordion">
  <h3>Fiction</h3>
  <div>
    
    <h1><a href="?node=content/image/gallery&id=3">Fiction Gallery</a></h1>
    <p>
    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
    </p>
  </div>
  <h3>Non-fiction/h3>
  <div>
       <h1><a href="content/image/gallery&id=4">Non-Fiction Gallery</a></h1>
    <p>
    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
    suscipit faucibus urna.
    </p>
  </div>
  <h3>Poetry</h3>
  <div>
      <h1><a href="?node=content/image/gallery&id=2">Poetry Gallery</a></h1>
    <p>
    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3>Drama</h3>
  <div>
      <h1><a href="?node=content/image/gallery&id=5">Drama Gallery</a></h1>
    <p>
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>
 
 
</body></h5>', '', '', '','', '2014-04-05 22:03:01'),
(8, 'Works', 'an overview of current site publications', '<h5>Works</h5><meta charset="utf-8">
  <title>jQuery UI Accordion - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  body{
      backfround-color:beige;
      }
  </style>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
</head>
<body>
 
<div id="accordion">
  <h3>Fiction</h3>
  <div>
    
    <h1><a href="?node=content/text/book&id=3">Fiction Books</a></h1>
    <p>
    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
    </p>
  </div>
  <h3>Non-fiction/h3>
  <div>
       <h1><a href="?node=content/text/book&id=4">Non-Fiction Books</a></h1>
    <p>
    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
    suscipit faucibus urna.
    </p>
  </div>
  <h3>Poetry</h3>
  <div>
      <h1><a href="?node=content/text/book&id=2">Poems</a></h1>
    <p>
    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3>Drama</h3>
  <div>
      <h1><a href="?node=content/text/book&id=5">Drama Books</a></h1>
    <p>
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>
 
 
</body></h5>', '', '', '', '', '2014-04-05 22:03:01'),
(9, 'Collections', 'an overview of the organised site collections', '<h5>collections</h5><h5>Publication Galleries</h5><h5>Works</h5><meta charset="utf-8">
  <title>jQuery UI Accordion - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  body{
      backfround-color:beige;
      }
  </style>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
</head>
<body>
 
<div id="accordion">
  <h3>Fiction</h3>
  <div>
    
    <h1><a href="?node=taxonomy&id=3">Fiction Collection</a></h1>
    <p>
    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
    </p>
  </div>
  <h3>Non-fiction/h3>
  <div>
       <h1><a href="?node=taxonomy&id=4">Non-Fiction Collection</a></h1>
    <p>
    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
    suscipit faucibus urna.
    </p>
  </div>
  <h3>Poetry</h3>
  <div>
      <h1><a href="?node=taxonomy&id=2">Poetry Collection</a></h1>
    <p>
    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3>Drama</h3>
  <div>
      <h1><a href="?node=taxonomy&id=5">Drama Collection</a></h1>
    <p>
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>
 
 
</body></h5>', '', '', '', '', '2014-04-07 01:27:38'),
(33, 'The Lazarus Project', 'written by Aleksander Hemon in 2008', '', 'lazarusproject.jpg', '', '', '', '2014-04-07 01:27:38'),
(11, 'I Sailed with Magellan', 'written by Stuart Dybek in 2004', '', 'sailed.jpg', '', '', '', '2014-04-07 01:30:12'),
(12, 'The Time Travelor''s Wife ', 'written by Audrey Niffenegger in 2003', '', 'timetraveler.jpg', '', '', '', '2014-04-07 20:17:00'),
(13, 'The Coast of Chicago', 'written by Stuart Dybek in 1990', '', 'coast.jpg', '', '', '', '2014-04-07 20:17:00'),
(14, 'The House on Mango Street', 'written by Sandra Cisneros in 1984', '', 'mango.jpg','', '', '', '2014-04-07 20:17:00'),
(15, 'Humboldt''s Gift', 'written by Saul Bellow in 1975', '', 'humboldt.png', '', '','', '2014-04-07 20:17:00'),
(16, 'A Walk on The Wild Side', 'written in 1956', '', 'wildside.jpg','', '', '', '2014-04-07 20:17:00'),
(17, 'The Adventures of Augie March', 'written by Saul Bellow in 1953', '', 'augiemarch.jpg','', '', '', '2014-04-07 20:17:00'),
(18, 'The Man With the Golden Arm', 'written by Nelson Algren in 1949', '', 'goldenarm.jpg','', '', '', '2014-04-07 20:17:00'),
(19, 'Native Son', 'written by Richard Wright in 1940', '<p>Adapted by Wright & Paul Green; directed by Orson Welles and with Canada Lee as Bigger opened at the St. James Theatre on March 24, 1941</p>', 'native-son.jpg','', '', '', '2014-04-07 20:17:00'),
(20, 'Winesburg, Ohio', 'written by Sherwood Anderson in 1919', '', 'winesburgohio.jpg', '', '','', '2014-04-07 20:17:00'),
(21, 'Sister Carrie', 'written by Theodore in 1900', '', 'sistercarrie.jpg', '', '','', '2014-04-07 20:17:00'),
(22, 'An overview of Native Son', 'a synopsis of Native Son', '<p>Native Son (1940) is a novel by American author Richard Wright. The novel tells the story of 20-year-old Bigger Thomas, a black American youth living in utter poverty in a poor area on Chicago"s" South Side in the 1930s.<br>While not apologizing for Bigger''s crimes, Wright portrays a systemic inevitability behind them. Bigger''s lawyer makes the case that there is no escape from this destiny for his client or any other black American, since they are the necessary product of the society that formed them and told them since birth who exactly they were supposed to be. "No American Negro exists," James Baldwin once wrote, "who does not have his private Bigger Thomas living in his skull." Frantz Fanon discusses this feeling in his 1952 essay L''Expérience Vécue du Noir, or "The Fact of Blackness". "In the end," writes Fanon, "Bigger Thomas acts. To put an end to his tension, he acts, he responds to the world''s anticipation."</p>', '', '','', '', '2014-04-08 21:24:15'),
(23, 'A brief overview of The Coast of Chicago', 'a brief synopsis of The Coast of Chicago', '<p>The stolid landscape of Chicago suddenly turns dreamlike and otherworldly in Stuart Dybek''s classic story collection. A child''s collection of bottle caps becomes the tombstones of a graveyard. A lowly rightfielder''s inexplicable death turns him into a martyr to baseball. Strains of Chopin floating down the tenement airshaft are transformed into a mysterious anthem of loss. Combining homely detail and heartbreakingly familiar voices with grand leaps of imagination, The Coast of Chicago is a masterpiece from one of America''s most highly regarded writers.</p>', '', '', '','', '2014-04-08 23:18:30'),
(25, 'The Bean Eaters', 'written by Gwendolyn Brooks in 1960', '<p><They eat beans mostly, this old yellow pair. Dinner is a casual affair.Plain chipware on a plain and creaking wood, Tin flatware.Two who are Mostly Good.Two who have lived their day,But keep on putting on their clothes   And putting things away.And remembering ...Remembering, with twinklings and twinges,As they lean over the beans in their rented back room that is full of beads and receipts and dolls and cloths, tobacco crumbs, vases and fringes.</p>', 'bean_eater.jpg','', 'BeanEaters.mp4', '', '2014-04-15 21:18:25'),
(26, 'A Street in Bronzeville', 'written by Gwendolyn Brooks in 1945', '', 'native-son.jpg','', '', '', '2014-04-15 21:21:06'),
(27, 'A Raisin in the Sun', 'written by Lorraine Hansbery 1959', '', 'img5.jpg','', '', '', '2014-04-15 21:24:57'),
(28, 'August, Osage County', 'written by Lorraine Hansbery 2007', '', 'img6.jpg','', '', '', '2014-04-15 21:27:19'),
(29, 'Working', 'written by Studs Terkel in 1974', '<p>This is a book showing the meaning of work for different people under different circumstances which can be different for all people. The meaning of work changes from person to person. This book also reflects his general ideology which is work can be difficult but still it does has motivation. It is an exploration of what makes work meaningful for people in all walks of life: from Lovin Al the parking valet, to Dolores the waitress, from the fireman to the business executive, the narratives move constantly between mundane details, emotional truths and existential questioning.<p>', 'working.jpg','', '', '', '2014-04-19 21:02:20'),
(30, 'Division Street, America', 'written by Studs Terkel in 1967', '<p>Division Street, Studs Terkel''s first book of oral history, established his reputation as America''s foremost oral historian and as “one of those rare thinkers who is actually willing to go out and talk to the incredible people of this country” (in the words of Tom Wolfe). Viewing the inhabitants of a single city, Chicago, as a microcosm of the nation at large, Division Street chronicles the thoughts and feelings of some seventy people from widely varying backgrounds in terms of class, race, and personal history. From a mother and son who migrated from Appalachia to a Native American boilerman, from a streetwise ex–gang leader to a liberal police officer, from the poorest African Americans to the richest socialites, these unique and often intimate first-person accounts form a multifaceted collage that defies any simple stereotype of America. As Terkel himself put it: “I was on the prowl for a cross–section of urban thought, using no one method or technique. . . I guess I was seeking some balance in the wildlife of the city as Rachel Carson sought it in nature. Revealing aspects of people''s lives that are normally invisible to most of us, Division Street is a fascinating survey of a city, and a society, at a pivotal moment of the twentieth century.<p>', 'division.jpg','', '', '', '2014-04-19 21:02:20'),
(31, 'A brief overview of The Lazarus Project', 'an overview of The Lazarus Project', '<p>The Lazarus Project (formerly known as The Heaven Project) is a 2008 American drama/thriller film directed and written by John Patrick Glenn. It stars Paul Walker as Ben, a former criminal who gets a second chance at life and mysteriously ends up working at a psychiatric hospital.[2] Piper Perabo, Linda Cardellini, Malcolm Goodwin, Tony Curran and Bob Gunton also star in the film, which was released on DVD on October 21, 2008.[1]</p>', '', '50.39747,-3.51490','', '', '2014-04-22 21:18:36'),
(10,'Landmarks', 'an overview of current site landmarks', '<h5>Landmarks</h5><h5>Publication Galleries</h5><h5>Works</h5><meta charset="utf-8">
  <title>jQuery UI Accordion - Default functionality</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <style>
  body{
      backfround-color:beige;
      }
  </style>
  <script>
  $(function() {
    $( "#accordion" ).accordion();
  });
  </script>
</head>
<body>
 
<div id="accordion">
  <h3>Fiction</h3>
  <div>
    
    <h1><a href="?node=content/image/gallery&id=3">Fiction Gallery</a></h1>
    <p>
    Mauris mauris ante, blandit et, ultrices a, suscipit eget, quam. Integer
    ut neque. Vivamus nisi metus, molestie vel, gravida in, condimentum sit
    amet, nunc. Nam a nibh. Donec suscipit eros. Nam mi. Proin viverra leo ut
    odio. Curabitur malesuada. Vestibulum a velit eu ante scelerisque vulputate.
    </p>
  </div>
  <h3>Non-fiction/h3>
  <div>
       <h1><a href="?node=content/image/gallery&id=4">Non-Fiction Gallery</a></h1>
    <p>
    Sed non urna. Donec et ante. Phasellus eu ligula. Vestibulum sit amet
    purus. Vivamus hendrerit, dolor at aliquet laoreet, mauris turpis porttitor
    velit, faucibus interdum tellus libero ac justo. Vivamus non quam. In
    suscipit faucibus urna.
    </p>
  </div>
  <h3>Poetry</h3>
  <div>
      <h1><a href="?node=content/image/gallery&id=2">Poetry Gallery</a></h1>
    <p>
    Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis.
    Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero
    ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis
    lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.
    </p>
    <ul>
      <li>List item one</li>
      <li>List item two</li>
      <li>List item three</li>
    </ul>
  </div>
  <h3>Drama</h3>
  <div>
      <h1><a href="?node=content/image/gallery&id=5">Drama Gallery</a></h1>
    <p>
    Cras dictum. Pellentesque habitant morbi tristique senectus et netus
    et malesuada fames ac turpis egestas. Vestibulum ante ipsum primis in
    faucibus orci luctus et ultrices posuere cubilia Curae; Aenean lacinia
    mauris vel est.
    </p>
    <p>
    Suspendisse eu nisl. Nullam ut libero. Integer dignissim consequat lectus.
    Class aptent taciti sociosqu ad litora torquent per conubia nostra, per
    inceptos himenaeos.
    </p>
  </div>
</div>
 
 
</body></h5>', '', '', '','', '2014-04-05 22:03:01'),
(32, 'the cartoon Video', 'a video of a cartoon', '<h5>The Great Cartoon</h5>', '', '', 'videoviewdemo.mp4','', '2014-04-05 22:03:01');

-- --------------------------------------------------------

--
-- Table structure for table `content_group`
--

CREATE TABLE IF NOT EXISTS `content_group` (
  `content_group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_group_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content_group_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`content_group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `content_group`
--

INSERT INTO `content_group` (`content_group_id`, `content_group_name`, `content_group_description`) VALUES
(1, 'gallery', 'organised collections of images'),
(2, 'work', 'collection of textual material'),
(3, 'transcriptions', 'transcribed material'),
(4, 'catalogue', 'list of items, typically in alphabetical or other systematic order'),
(5, 'book', 'a collection of textual documents, not necessarily by the same author etc, but considered inter-related and connected.'),
(6, 'atlas', 'a collection/book of maps');

-- --------------------------------------------------------



-- --------------------------------------------------------

--
-- Table structure for table `content_group`
--

CREATE TABLE IF NOT EXISTS `content_group_collection` (
  `content_group_collection_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_group_collection_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content_group_collection_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`content_group_collection_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `content_group`
--

INSERT INTO `content_group_collection` (`content_group_collection_id`, `content_group_collection_name`, `content_group_collection_description`) VALUES
(1, 'galleries', 'organised table collections of images');

-- --------------------------------------------------------

--
-- Table structure for table `content_lookup`
--

CREATE TABLE IF NOT EXISTS `content_lookup` (
  `content_id` int(10) unsigned NOT NULL,
  `content_group_id` int(11) NOT NULL,
  `content_type_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `meta_id` int(10) unsigned NOT NULL,
  `taxa_id` int(11) NOT NULL,
  `content_group_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`content_id`,`content_group_id`,`content_type_id`,`user_id`,`meta_id`,`taxa_id`,  `content_group_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `content_lookup`
--

INSERT INTO `content_lookup` (`content_id`, `content_group_id`, `content_type_id`, `user_id`, `meta_id`, `taxa_id`, `content_group_collection_id`) VALUES
(1, 0, 1, 1, 0, 0, 0),
(2, 0, 1, 1, 0, 0, 0),
(3, 0, 1, 1, 0, 0, 0),
(4, 0, 1, 1, 0, 0, 0),
(5, 0, 1, 1, 0, 0, 0),
(6, 0, 1, 1, 0, 0, 0),
(7, 0, 1, 1, 0, 0, 0),
(8, 0, 1, 1, 0, 0, 0),
(9, 0, 1, 1, 0, 0, 0),
(11, 1, 2, 1, 3, 3, 1),
(12, 1, 2, 1, 3, 3, 1),
(13, 1, 2, 1, 3, 3, 1),
(14, 1, 2, 1, 3, 3, 1),
(15, 1, 2, 1, 3, 3, 1),
(15, 5, 1, 1, 5, 3, 0),
(16, 1, 2, 1, 3, 3, 1),
(17, 1, 2, 1, 3, 3, 1),
(18, 1, 2, 1, 3, 3, 1),
(19, 1, 2, 1, 3, 3, 1),
(20, 1, 2, 1, 3, 3, 1),
(21, 1, 2, 1, 3, 3, 1),
(22, 5, 1, 1, 5, 3, 0),
(23, 5, 1, 1, 5, 3, 0),
(25, 1, 2, 1, 5, 2, 1),
(26, 1, 2, 1, 5, 2, 1),
(27, 1, 2, 1, 3, 5, 1),
(28, 1, 2, 1, 3, 5, 1),
(29, 1, 2, 1, 3, 4, 1),
(30, 1, 2, 1, 3, 4, 1),
(31, 5, 1, 1, 3, 3, 0),
(31, 6, 7, 1, 6, 3, 0),
(33, 1, 2, 1, 3, 3, 1),
(32, 0, 4, 1, 3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `content_meta`
--

CREATE TABLE IF NOT EXISTS `content_meta` (
  `meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `meta_subject` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_source` text COLLATE utf8_unicode_ci NOT NULL,
  `meta_creator` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `content_meta`
--

INSERT INTO `content_meta` (`meta_id`, `meta_subject`, `meta_source`, `meta_creator`) VALUES
(1, 'chicago literature', 'photo album', 'ancientlives'),
(2, 'novels', 'photo album', 'ancientlives'),
(3, 'fiction', 'novels, publications, Harper & Brothers, phpto album', 'ancientlives'),
(4, 'non-fiction, studs terkel, chicago, the new press', 'digital', 'ancientlives'),
(5, 'poetry', 'textual, digital, pulitzer prize, African-American, female', 'ancientlives'),
(6, 'drama, novel, harbour, map', 'google maps api', 'ancientlives');

-- --------------------------------------------------------

--
-- Table structure for table `content_type`
--

CREATE TABLE IF NOT EXISTS `content_type` (
  `content_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content_type_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content_type_desc` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `content_type`
--

INSERT INTO `content_type` (`content_type_id`, `content_type_name`, `content_type_desc`) VALUES
(1, 'text', 'content defined as textual or text based'),
(2, 'image', 'content defined as image or visually based'),
(3, 'audio', 'content defined as audio based for output and playback'),
(4, 'video', 'content defined as video based for output and playback'),
(5, 'bibliography', 'content defined as a bibliographical record or data'),
(6, 'tei', 'textual material marked up using the XML schema TEI P5'),
(7, 'map', 'map coordinates etc for a Google Maps API rendering');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `menu_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `menu_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_name`, `menu_description`) VALUES
(1, 'main menu', 'main menu for persistent static site links - normally rendered in the header section of the framework template'),
(2, 'site content', 'a menu for site wide content links');

-- --------------------------------------------------------

--
-- Table structure for table `menu_lookup`
--

CREATE TABLE IF NOT EXISTS `menu_lookup` (
  `menu_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  PRIMARY KEY (`menu_id`,`node_id`,`parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu_lookup`
--

INSERT INTO `menu_lookup` (`menu_id`, `node_id`, `parent_id`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 2),
(1, 5, 0),
(1, 6, 0),
(1, 7, 6),
(1, 8, 6),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 7),
(2, 10, 8),
(2, 11, 0),
(2, 12, 16),
(2, 13, 16),
(2, 14, 7),
(2, 15, 16),
(2, 16, 0),
(2, 18, 11),
(2, 19, 7),
(2, 20, 8),
(2, 21, 8),
(2, 22, 16),
(2, 23, 16),
(2, 24, 8),
(2, 25, 7);

-- --------------------------------------------------------

--
-- Table structure for table `node`
--

CREATE TABLE IF NOT EXISTS `node` (
  `node_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `node_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `node_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `node_link` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`node_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=19 ;

--
-- Dumping data for table `node`
--

INSERT INTO `node` (`node_id`, `node_name`, `node_desc`, `node_link`) VALUES
(1, 'Home', 'return to the home page', 'content/text&id=1'),
(2, 'History', 'timeline of publications', 'content/text&id=2'),
(3, 'Facts', 'literature statistics', 'content/text&id=3'),
(4, 'Copyright', 'copyright information for site material', 'content/text&id=4'),
(5, 'About', 'information about the site', 'content/text&id=5'),
(6, 'Site Content', 'an overview of current site content', 'content/text&id=6'),
(7, 'Publication Galleries', 'an overview of site image galleries', 'content/text&id=7'),
(9, 'Fiction gallery', 'an image gallery of fiction novels', 'content/image/gallery&id=3'),
(8, 'Works', 'an overview of site publications', 'content/text&id=8'), 
(10, ' Fiction Books', 'a collection of books', 'content/text/book&id=3'), 
(16,'Collections', 'an overview of site collections', 'content/text&id=9'),
(13, 'Fiction', 'all material for the fiction collection ', 'taxonomy&id=3'),
(12,  'Novels', 'all material for the non-fiction collection ', 'taxonomy&id=1'),
(14, 'Non-Fiction gallery', 'an image gallery of non-fiction books', 'content/image/gallery&id=4'),  
(15,  'Non-Fiction', 'collection for non-fiction ''', 'taxonomy&id=4'), 
(11, 'Landmarks', 'an overview of site landmarks', 'content/text&id=10'),
(18, 'Fiction maps', 'a collection of maps for fiction', 'content/map/atlas&id=3'),
(19, 'Poetry gallery', 'an image gallery of poems ', 'content/image/gallery&id=2'),
(20, 'Non-fiction Books', 'an image gallery of non-fiction books', 'content/text/book&id=4'),
(21, 'Poems', 'an image gallery of poems', 'content/text/book&id=2'),
(22,  'Poetry', 'all material for the poetry collection ', 'taxonomy&id=2'),
(23,  'Drama', 'all material for the drama collection', 'taxonomy&id=5'),
(24, 'Drama Books', 'an image gallery of poems ', 'content/text/book&id=5'),
(25, 'Drama gallery', 'an image gallery of poems ', 'content/image/gallery&id=5');

-- --------------------------------------------------------

--
-- Table structure for table `plugins`
--

CREATE TABLE IF NOT EXISTS `plugins` (
  `plugin_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plugin_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `plugin_desc` text COLLATE utf8_unicode_ci NOT NULL,
  `plugin_directory` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`plugin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `plugins`
--

INSERT INTO `plugins` (`plugin_id`, `plugin_name`, `plugin_desc`, `plugin_directory`) VALUES
(1, 'image_zoom', 'zoom tool for rendered images', 'image_zoom'),
(2, 'image_magnify', 'magnify tool for images', 'image_magnify'),
(3, 'image_popup', 'popup viewer for images', 'image_popup'),
(4, 'pager', 'page through a returned set of results', 'pager'),
(5, 'xml_style', 'style XML elements rendered in a HTML document', 'xml_style'),
(6, 'highlighter', 'highlight text within a textual document', 'highlighter'),
(7, 'map', 'load and view maps using Google Maps API and map controller and viewer', 'map'),
(8, 'tabs', 'jquery ui tabs for split content rendering', 'tabs'),
(9, 'resize', 'jquery ui tabs for split content rendering', 'resize'),
(10, 'expand', 'jquery ui tabs for split content rendering', 'expand'),
(11, 'play', 'play video', 'play'),
(12, 'marker', 'place marker on map', 'marker');


-- --------------------------------------------------------

--
-- Table structure for table `plugins_lookup`
--

CREATE TABLE IF NOT EXISTS `plugins_lookup` (
  `plugin_id` int(10) unsigned NOT NULL,
  `plugin_type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content_type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content_group` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `content_collection_group` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`plugin_id`,`plugin_type`,`content_type`,`content_group`,`content_collection_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `plugins_lookup`
--

INSERT INTO `plugins_lookup` (`plugin_id`, `plugin_type`, `content_type`, `content_group`, `content_collection_group`) VALUES
(1, 'content', 'image', '', ''),
(2, 'content', 'image', '', ''),
(3, 'content', 'image', 'gallery', ''),
(3, 'search', '', '', ''),
(3, 'taxonomy', '', '', ''),
(4, 'content', '', 'book',''),
(4, 'content', 'image', 'gallery', 'galleries'),
(4, 'search', '', '', ''),
(4, 'taxonomy', '', '', ''),
(5, 'content', 'text', '', ''),
(6, 'content', 'text', '', ''),
(7, 'content', 'map', '', ''),
(8, 'content', '', '', ''),
(9, 'content', 'image', '', ''),
(10, 'content', 'text', '', ''),
(11, 'content', 'video', '', ''),
(12, 'content', 'map', '', '');


-- --------------------------------------------------------

--
-- Table structure for table `taxonomy`
--

CREATE TABLE IF NOT EXISTS `taxonomy` (
  `taxa_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `taxa_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `taxa_description` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`taxa_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `taxonomy`
--

INSERT INTO `taxonomy` (`taxa_id`, `taxa_name`, `taxa_description`) VALUES
(1, 'novel', 'a long story'),
(2, 'poetry', 'a work of art with stanza''s'),
(3, 'fiction', 'a fictious novel'),
(4, 'non-fiction', 'a true tale'),
(5, 'drama', 'a theatrical piece');

-- --------------------------------------------------------

--
-- Table structure for table `taxonomy_lookup`
--

CREATE TABLE IF NOT EXISTS `taxonomy_lookup` (
  `taxa_id` int(10) unsigned NOT NULL,
  `taxa_parent_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`taxa_id`,`taxa_parent_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `taxonomy_lookup`
--

INSERT INTO `taxonomy_lookup` (`taxa_id`, `taxa_parent_id`) VALUES
(1, 0),
(3, 1),
(4, 1),
(2, 1),
(5,1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `userid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `firstname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usercreated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `firstname`, `lastname`, `usercreated`) VALUES
(1, 'ancientlives', 'ancient', 'lives', '2014-01-22 05:37:30'),
(2, 'yvaine08', 'yvaine', 'wall', '2014-01-22 05:42:36'),
(3, 'yvaine14', 'yvaine', 'stormhold', '2014-01-22 05:42:49'),
(4, 'tristan27', 'tristan', 'issit', '2014-01-22 05:44:03'),
(5, 'emma97', 'emma', 'bernau', '2014-01-22 22:58:09'),
(6, 'cat05', 'catherine', 'smith', '2014-01-22 22:58:09'),
(7, 'amelie01', 'amelie', 'poulain', '2014-01-27 22:22:50'),
(8, 'adele10', 'adele', 'blanc-sec', '2014-01-27 22:22:50');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;