package grest.discovery;

import tink.web.proxy.Remote;
import grest.discovery.api.Description as Api;

@:forward
abstract Description(Remote<Api>) from Remote<Api> to Remote<Api> {
	public inline function new(url) {
		this = tink.Web.connect((url:Api));
	}
}