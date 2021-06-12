package grest.discovery.types;

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