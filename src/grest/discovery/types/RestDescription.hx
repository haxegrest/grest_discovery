package grest.discovery.types;

typedef RestDescription = {
	final kind:String; // "discovery#restDescription"
	final discoveryVersion:String; //"v1"
	final id:String;
	final name:String;
	final version:String;
	final ?revision:String;
	final ?title:String;
	final ?description:String;
	final ?icons:{
		final x16:String;
		final x32:String;
	}
	final ?documentationLink:String;
	final ?labels:Array<String>;
	final protocol:String; //"rest"
	// baseUrl:String, // deprecated
	// basePath:String, // deprecated
	final rootUrl:String;
	final servicePath:String;
	final batchPath:String; //"batch"
	final ?parameters:DynamicAccess<Parameter>;
	final ?auth:{
		final oauth2:{
			final scopes: DynamicAccess<{final description:String;}>;
		}
	};
	final ?features:Array<String>;
	final ?schemas:DynamicAccess<Parameter>;
	final ?methods:DynamicAccess<Method>;
	final ?resources:DynamicAccess<Resource>;
}
