package grest.discovery.types;

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
