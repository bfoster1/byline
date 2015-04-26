<?php
/**
 * image.php - image viewer class for 402 framework
 */

require_once VIEW_DIR."html_builder.php";

/**
 * load and initialise Image Viewer class for 402 framework
 */
class VideoViewer extends BuildHTML {

	//formatted content
	private static $viewer_content;
	//framework images directory
	private static $video_dir = MEDIA_VIDEOS_DIR;

	//html elements
	private static $video = "video";
	private static $source = "source";

	/**
	 * return the formatted image view content
	 */
	function get_viewer_content($content, $video_viewer_attributes, $source_attributes) {
	$this->format_video_view($content, $video_viewer_attributes, $source_attributes);
	return self::$viewer_content;
	}
	
	//format the select image content
	function format_video_view($content, $video_viewer_attributes, $source_attributes) {
	$video_content = self::$video_dir.$content;
	$video_viewer_attributes["id"]="video1";
	$source_attributes["src"] = $video_content;
	$video_start = BuildHTML::start_element(self::$video, $video_viewer_attributes);
	$source = BuildHTML::start_element(self::$source, $source_attributes);
	$video_end = BuildHTML::end_element(self::$video);
	self::$viewer_content = $video_start.$source.$video_end;
	}
	
	
}
?>