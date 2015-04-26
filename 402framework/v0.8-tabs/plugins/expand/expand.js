$(function() {
    var state = true;
    $( "#expand" ).click(function() {
      if ( state ) {
        $( "div.text" ).animate({
          backgroundColor: "#aa0000",
          color: "#fff",
          width: 500
        }, 1000 );
      } else {
        $( "div.text" ).animate({
          backgroundColor: "#fff",
          color: "#000",
          width: 240
        }, 1000 );
      }
      state = !state;
    });
  });