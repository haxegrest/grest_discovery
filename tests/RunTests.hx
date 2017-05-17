package ;

import grest.discovery.Discovery;

class RunTests {

  static function main() {
    Discovery.parseUrl('https://www.googleapis.com/discovery/v1/apis/games/v1/rest')
      .handle(function(des) trace(des));
  }
  
}