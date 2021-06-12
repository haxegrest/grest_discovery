package grest.discovery.api;

import haxe.DynamicAccess;

interface Description {
	@:get('/')
	function get():RestDescription;
}

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

typedef Resource = {
	final ?methods:DynamicAccess<Method>;
	final ?resources:DynamicAccess<Resource>;
}

typedef Ref = {
	@:json("$ref") final ref:String;
};

typedef Method = {
	final id:String;
	final path:String;
	final httpMethod:String;
	final ?description:String;
	final ?parameters:DynamicAccess<Parameter>;
	final ?parameterOrder:Array<String>;
	final ?request:Ref;
	final ?response:Ref;
	final ?scopes:Array<String>;
	final ?supportsMediaDownload:Bool;
	final ?supportsMediaUpload:Bool;
	final ?mediaUpload:{
		final accept:Array<String>;
		final ?maxSize:String;
		final protocols:{
			final simple:{
				final multipart:Bool; // true
				final path:String;
			}
			final ?resumable:{
				final multipart:Bool; // true
				final path:String;
			}
		}
	}
	final ?supportsSubscription:Bool;
}

typedef Parameter = {
	@:json("$ref") final ?ref:String;
	final ?id:String;
	final ?type:String;
	final ?description:String;
	@:json('default') final ?default_:String;
	final ?required:Bool;
	final ?format:String;
	final ?pattern:String;
	final ?minimum:String;
	final ?maximum:String;
	@:json('enum') final ?enum_:Array<String>;
	final ?enumDescriptions:Array<String>;
	final ?repeated:Bool;
	final ?location:String;
	final ?properties:DynamicAccess<JsonSchema>;
	final ?additionalProperties:JsonSchema;
	final ?items:JsonSchema;
	final ?annotations:{
		final required:Array<String>;
	}
}


typedef JsonSchema = Parameter;