package;

import grest.discovery.Discovery;
import tink.unit.Assert.*;

using tink.CoreApi;

@:asserts
@:timeout(200000)
class ParserTest {
	public function new() {}

	public function parse() {
		getAllApiUrl()
			.next(urls -> Future.inSequence(urls.map(url -> Discovery.parseUrl(url).map(o -> asserts.assert(o, url)))))
			.handle(asserts.handle);
			
		return asserts;
	}
	
	static function getAllApiUrl() {
		return new grest.discovery.Directory().apis()
			.next(v -> [for(item in v.items) if(item.preferred) item.discoveryRestUrl]);
	}
}