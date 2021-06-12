# Google API Discovery Service for Haxe

See: https://developers.google.com/discovery

### Usage

```haxe
new grest.discovery.Directory().apis()
	.handle(o -> {
		final apis = o.sure();
		for(item in apis.items) {
			new grest.discovery.Description(item.discoveryRestUrl).get()
				.handle(o -> trace(o.sure()));
		}
	});
```