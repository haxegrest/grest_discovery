package grest.discovery.api;

import haxe.DynamicAccess;

interface Directory {
	@:get
	function apis():DirectoryList;
}

typedef DirectoryList = {
	final kind:String; // "discovery#directoryList"
	final discoveryVersion:String; // v1"
	final items:Array<DirectoryItem>;
}

typedef DirectoryItem = {
	final kind:String; // "discovery#directoryItem"
	final id:String;
	final name:String;
	final version:String;
	final title:String;
	final description:String;
	final discoveryRestUrl:String;
	final icons:DynamicAccess<String>;
	final ?documentationLink:String;
	final preferred:Bool;
}