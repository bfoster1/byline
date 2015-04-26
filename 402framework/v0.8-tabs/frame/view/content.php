<?php
/**
 * content.php - content viewer class for 402 framework
 */

require_once VIEW_DIR."html_builder.php";

/**
 * load and initialise Content Viewer class for 402 framework - outputs all content for specified single content id
 */
class ContentViewer extends BuildHTML {

	//formatted content
	private static $viewer_content;
	//framework images directory
	private static $img_dir = MEDIA_IMAGES_DIR;
	private static $video_dir = MEDIA_VIDEOS_DIR;

	//html elements
	private static $div = "div";
	private static $ul = "ul";
	private static $li = "li";
	private static $img = "img";
	private static $video = "video";
	private static $link = "a";

	/**
	 * return the formatted content view
	 */
	function get_controller_content($content, $viewer_attributes, $meta_attributes) {
	$this->format_content_view($content, $viewer_attributes, $meta_attributes);
	return self::$viewer_content;
	}
	
	//format the content - output parallel view for image and text
	function format_content_view($content, $viewer_attributes, $meta_attributes) {
	$content_img = $content['contentimage'];
	$content_txt = $content['contenttext'];
	$content_map = $content['contentmap'];
	$content_video = $content['contentvideo'];
	$content_end = BuildHTML::end_element(self::$div);
	//set parent wrapper tabs div & tabs links
	$tabs_attributes = array("id"=>"tabs");
	$tabs_start = BuildHTML::start_element(self::$div, $tabs_attributes);
	$tabs_ul_start = BuildHTML::start_element(self::$ul);
	$tabs_ul_end = BuildHTML::end_element(self::$ul);
	$tabs_li_start = BuildHTML::start_element(self::$li);
	$tabs_li_end = BuildHTML::end_element(self::$li);
	//tabs links
	$img_link_attributes = array("href"=>"#tabs-1");
	$img_link_start = BuildHTML::start_element(self::$link, $img_link_attributes);
	$txt_link_attributes = array("href"=>"#tabs-2");
	$txt_link_start = BuildHTML::start_element(self::$link, $txt_link_attributes);
	$map_link_attributes = array("href"=>"#tabs-3");
	$map_link_start = BuildHTML::start_element(self::$link, $map_link_attributes);
	$video_link_attributes = array("href"=>"#tabs-4");
	$video_link_start = BuildHTML::start_element(self::$link, $video_link_attributes);
	$tabs_link_end = BuildHTML::end_element(self::$link);
	//set image tab div
	$img_tab_attributes = array("id"=>"tabs-1");
	$img_tab_start = BuildHTML::start_element(self::$div, $img_tab_attributes);
	//set text tab div
	$txt_tab_attributes = array("id"=>"tabs-2");
	$txt_tab_start = BuildHTML::start_element(self::$div, $txt_tab_attributes);
	//set map tab div
	$map_tab_attributes = array("id"=>"tabs-3");
	$map_tab_start = BuildHTML::start_element(self::$div, $map_tab_attributes);
	//set video tab div
	$video_tab_attributes = array("id"=>"tabs-4");
	$video_tab_start = BuildHTML::start_element(self::$div, $video_tab_attributes);
	
	if (!empty($content_txt)) {
	$txt = $content_txt;
	}
	else {
	$txt = "No associated text available";
	}
	if (!empty($content_img)) {
	$img_content = self::$img_dir.$content_img;
	$img_attributes["src"] = $img_content;
	$img = BuildHTML::start_element(self::$img, $img_attributes);
	}
	else {
	$img = "No associated image available";
	}
	if (!empty($content_video)) {
	$video_content = self::$video_dir.$content_video;
	$video_attributes["src"] = $video_content;
	$video = BuildHTML::start_element(self::$video, $video_attributes);
	}
	else {
	$video = "No associated image available";
	}
    if(!empty($content_map)) {
	
	  $map_attributes=array("id"=>"map_canvas","class"=>"grid_6","coordinates"=>$content);
	  $map= BuildHTML::start_element(self::$div, $map_attributes);
	}
	else {
	$map = "No associated image available";
	}
	
	//a tad verbose - could be abstracted further
	$tabs = $tabs_start.$tabs_ul_start.$tabs_li_start.$img_link_start.'Image'.$tabs_link_end.$tabs_li_end.$tabs_li_start.$txt_link_start.'Text'.$tabs_link_end.$tabs_li_end.  $tabs_li_start.$map_link_start.'Map'.$tabs_link_end.$tabs_li_end.  $tabs_li_start.$video_link_start.'Video'.$tabs_link_end.$tabs_li_end. $tabs_ul_end.$img_tab_start.$img.$content_end.$txt_tab_start.$txt.$content_end.  $map_tab_start.$map.$content_end.  $video_tab_start.$video.$content_end;
	
	//build full output for tabs and content
	self::$viewer_content = $tabs;
	}
	
}
?>