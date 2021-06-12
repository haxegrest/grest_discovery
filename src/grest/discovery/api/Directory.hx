package grest.discovery.api;

import grest.discovery.types.*;

interface Directory {
	@:get
	function apis():DirectoryList;
}



