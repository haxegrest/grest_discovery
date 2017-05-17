package grest.discovery;

import haxe.DynamicAccess;
import tink.http.Fetch.*;

using tink.CoreApi;

class Discovery {
	public static function parseUrl(url:String):Promise<Description> {
		return fetch(url).all().next(function(res) return parse(res.body.toString()));
	}
	
	public static function parse(json:String) {
		return tink.Json.parse((json:Description));
	}
}

typedef Description = {
	var kind:String; // "discovery#restDescription"
	var discoveryVersion:String; //"v1"
	var id:String;
	var name:String;
	var version:String;
	@:optional var revision:String;
	@:optional var title:String;
	@:optional var description:String;
	@:optional var icons: {
		x16:String,
		x32:String
	};
	@:optional var documentationLink:String;
	@:optional var labels:Array<String>;
	var protocol:String; //"rest"
	// baseUrl:String, // deprecated
	// basePath:String, // deprecated
	var rootUrl:String;
	var servicePath:String;
	var batchPath:String; //"batch"
	@:optional var parameters:DynamicAccess<Parameter>;
	@:optional var auth: {
		oauth2: {
			scopes: DynamicAccess<{description:String}>
		}
	};
	@:optional var features:Array<String>;
	@:optional var schemas:DynamicAccess<Parameter>;
	@:optional var methods:DynamicAccess<Method>;
	@:optional var resources:DynamicAccess<Resource>;
}

typedef Resource = {
	@:optional var methods:DynamicAccess<Method>;
	@:optional var resources:DynamicAccess<Resource>;
}

typedef Ref = {
	@:json("$ref") var ref:String;
};

typedef Method = {
	var id:String;
	var path:String;
	var httpMethod:String;
	@:optional var description:String;
	@:optional var parameters:DynamicAccess<Parameter>;
	@:optional var parameterOrder:Array<String>;
	@:optional var request:Ref;
	@:optional var response:Ref;
	@:optional var scopes:Array<String>;
	@:optional var supportsMediaDownload:Bool;
	@:optional var supportsMediaUpload:Bool;
	@:optional var mediaUpload: {
		accept:Array<String>,
		?maxSize:String,
		protocols: {
			simple: {
				multipart:Bool, // true
				path:String
			},
			resumable: {
				multipart:Bool, // true
				path:String
			}
		}
	};
	@:optional var supportsSubscription:Bool;
}

typedef Parameter = {
	@:optional @:json("$ref") var ref:String;
	@:optional var id:String;
	@:optional var type:String;
	@:optional var description:String;
	@:optional @:json('default') var default_:String;
	@:optional var required:Bool;
	@:optional var format:String;
	@:optional var pattern:String;
	@:optional var minimum:String;
	@:optional var maximum:String;
	@:optional @:json('enum') var enum_:Array<String>;
	@:optional var enumDescriptions:Array<String>;
	@:optional var repeated:Bool;
	@:optional var location:String;
	@:optional var properties:DynamicAccess<JsonSchema>;
	@:optional var additionalProperties:JsonSchema;
	@:optional var items:JsonSchema;
	@:optional var annotations: {
		required:Array<String>
	};
}


typedef JsonSchema = Parameter;