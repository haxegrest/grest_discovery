package grest.discovery.types;

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