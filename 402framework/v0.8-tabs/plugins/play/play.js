$(document).ready(function() {
$("video").addClass('paused');
		$('#play').click(function() {
		if ($("video").hasClass('paused')) {
		$("video").removeClass('paused');
		$("video")[0].play();
		$("video").addClass('playing');
		} else {
		$("video").removeClass('playing');
		$("video")[0].pause();
		$("video").addClass('paused');
		
		}
});


});