package grest.discovery.types;

typedef DirectoryList = {
	final kind:String; // "discovery#directoryList"
	final discoveryVersion:String; // v1"
	final items:Array<DirectoryItem>;
}