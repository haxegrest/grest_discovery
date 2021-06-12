package grest.discovery;

import tink.web.proxy.Remote;
import grest.discovery.api.Directory as Api;

@:forward
abstract Directory(Remote<Api>) from Remote<Api> to Remote<Api> {
	public inline function new() {
		this = tink.Web.connect(('https://www.googleapis.com/discovery/v1':Api));
	}
}