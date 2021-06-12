package grest.discovery.api;

import grest.discovery.types.*;

interface Description {
	@:get('/')
	function get():RestDescription;
}

