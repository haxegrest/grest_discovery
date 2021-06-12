package;

import grest.discovery.*;

using tink.CoreApi;

@:asserts
@:timeout(200000)
class ParserTest {
	public function new() {}

	public function parse() {
		getAllApiUrl()
			.next(urls -> Future.inSequence(urls.map(url -> new Description(url).get().map(o -> asserts.assert(o, url)))))
			.handle(asserts.handle);
			
		return asserts;
	}
	
	static function getAllApiUrl() {
		return new Directory().apis()
			.next(v -> [for(item in v.items) if(item.preferred) item.discoveryRestUrl])
			.next(v -> v.filter(url -> url != "https://baremetalsolution.googleapis.com/$discovery/rest?version=v1")); // somehow this gives a 403 error
	}
}