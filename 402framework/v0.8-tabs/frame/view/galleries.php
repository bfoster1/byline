<?php
/**
 * book.php - book viewer class for 402 framework
 */

require_once VIEW_DIR."html_builder.php";

/**
 * load and initialise Book Viewer class for 402 framework
 */
class BookViewer extends BuildHTML {

	//formatted content
	private static $viewer_content;
	private static $gallery_content;
	private static $gallery_headers;
	//html elements
	private static $div = "div";
	private static $img = "img";
	private static $link = "a";
	private static $table = "table";
	private static $thead = "thead";
	private static $th = "th";
	private static $tr = "tr";
	private static $td = "td";

	/**
	 * return the formatted book view content
	 */
	function get_group_content($content, $group_viewer_attributes, $taxonomy_attributes) {
	$this->format_book_view($content, $group_viewer_attributes, $taxonomy_attributes);
	return self::$viewer_content;
	}
	
	//format the select book content
	function format_book_view($content, $group_viewer_attributes, $taxonomy_attributes) {
	$gallery_full_attributes = array_merge($group_viewer_attributes, $taxonomy_attributes);
	$gallery_start = BuildHTML::start_element(self::$div, $gallery_full_attributes);
	$gallery_end = BuildHTML::end_element(self::$div);
	$table_start = BuildHTML::start_element(self::$table, $taxonomy_attributes);
	$table_end = BuildHTML::end_element(self::$table);
	$headers = array("Gallery title","Gallery description","Gallery text","Gallery link");
	self::table_headers($headers);
	self::format_gallery_layout($content);
  self::$viewer_content = $gallery_start.$table_start.self::$gallery_headers.self::$gallery_content.$table_end.$gallery_end;
	}
	
	//format the layout of our book pages in table rows and cells
	function format_gallery_layout($content) {
	//table row, cell, link ends
	$row_end = BuildHTML::end_element(self::$tr);
	$cell_end = BuildHTML::end_element(self::$td);
	$link_end = BuildHTML::end_element(self::$link);
	foreach ($content as $key=>$val) {
	//page details
	$taxa_id = $val['taxa_id'];
	$taxa_name = $val['taxa_name'];
	$taxa_desc = $val['taxa_desc'];
	$page = $val['taxa_name'];
	$page_sub = substr($page, 0, 100)."....";
	//table row for each page
	$gallery_attributes = array("id"=>$taxa_id,"class"=>"group_item","title"=>$taxa_name.' - '.$taxa_desc);
	$gallery_row_start = BuildHTML::start_element(self::$tr, $gallery_attributes);
	//table cell for page title
	$gallery_title_attributes = array("title"=>"gallery title");
	$gallery_title_start = BuildHTML::start_element(self::$td, $gallery_title_attributes);
	$gallery_title_cell = $gallery_title_start.$taxa_name.$cell_end;
	//table cell for page description
	$gallery_desc_attributes = array("title"=>"gallery description");
	$gallery_desc_start = BuildHTML::start_element(self::$td, $gallery_desc_attributes);
	$gallery_desc_end = BuildHTML::end_element(self::$td);
	$gallery_desc_cell = $gallery_desc_start.$taxa_desc.$cell_end;
	//table cell for substring of page text
	$gallery_text_attributes = array("title"=>"a gallery text");
	$gallery_text_start = BuildHTML::start_element(self::$td, $gallery_text_attributes);
	$gallery_text_end = BuildHTML::end_element(self::$td);
	$gallery_text_cell = $gallery_text_start.$page_sub.$cell_end;
	//table cell for link to full text page view
	$gallery_link_attributes = array("title"=>"gallery");
	$gallery_link_start = BuildHTML::start_element(self::$td, $gallery_link_attributes);
	$link_attributes = array("href"=>'?node=content/image/gallery/galleries&id='.$taxa_id,"class"=>GALLERY_LINK);
	$link_start = BuildHTML::start_element(self::$link, $link_attributes); 
	$gallery_link_cell = $gallery_link_start.$link_start."View gallery".$link_end.$cell_end;
	self::$gallery_content .= $gallery_row_start.$gallery_title_cell.$gallery_desc_cell.$gallery_text_cell.$gallery_link_cell.$row_end;
	}
	return self::$gallery_content;
	}
	
	//format table headings
	function table_headers($headers) {
	$header_start = BuildHTML::start_element(self::$thead);
	$header_end = BuildHTML::end_element(self::$thead);
	$th_attribute = array("title"=>"click to change sort order");
	foreach ($headers as $key=>$val) {
	$th_start = BuildHTML::start_element(self::$th, $th_attribute);
	$th_end = BuildHTML::end_element(self::$th);
	self::$gallery_headers .= $th_start.$val.$th_end;
	}
	self::$gallery_headers = $header_start.self::$gallery_headers.$header_end;
	return self::$gallery_headers;
	}
	
}
?>