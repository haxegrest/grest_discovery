package;

import grest.discovery.Discovery;
import tink.unit.Assert.*;

class ParserTest {
	public function new() {}
	
	@:variant("https://acceleratedmobilepageurl.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adexchangebuyer/v1.2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adexchangebuyer/v1.3/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adexchangebuyer/v1.4/rest")
	@:variant("https://adexchangebuyer.googleapis.com/$discovery/rest?version=v2beta1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adexchangeseller/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adexchangeseller/v1.1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adexchangeseller/v2.0/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/admin/datatransfer_v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/admin/directory_v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/admin/reports_v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adsense/v1.3/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adsense/v1.4/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/adsensehost/v4.1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/analytics/v2.4/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/analytics/v3/rest")
	@:variant("https://analyticsreporting.googleapis.com/$discovery/rest?version=v4")
	@:variant("https://www.googleapis.com/discovery/v1/apis/androidenterprise/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/androidpublisher/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/androidpublisher/v1.1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/androidpublisher/v2/rest")
	@:variant("https://appengine.googleapis.com/$discovery/rest?version=v1alpha")
	@:variant("https://appengine.googleapis.com/$discovery/rest?version=v1beta")
	@:variant("https://appengine.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://appengine.googleapis.com/$discovery/rest?version=v1beta4")
	@:variant("https://appengine.googleapis.com/$discovery/rest?version=v1beta5")
	@:variant("https://www.googleapis.com/discovery/v1/apis/appsactivity/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/appstate/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/bigquery/v2/rest")
	@:variant("https://bigquerydatatransfer.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/blogger/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/blogger/v3/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/books/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/calendar/v3/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/civicinfo/v2/rest")
	@:variant("https://classroom.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://cloudbilling.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://cloudbuild.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://clouddebugger.googleapis.com/$discovery/rest?version=v2")
	@:variant("https://clouderrorreporting.googleapis.com/$discovery/rest?version=v1beta1")
	@:variant("https://cloudfunctions.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://cloudfunctions.googleapis.com/$discovery/rest?version=v1beta2")
	@:variant("https://cloudkms.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/cloudmonitoring/v2beta2/rest")
	@:variant("https://cloudresourcemanager.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://cloudresourcemanager.googleapis.com/$discovery/rest?version=v1beta1")
	@:variant("https://cloudtrace.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/clouduseraccounts/alpha/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/clouduseraccounts/beta/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/clouduseraccounts/vm_alpha/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/clouduseraccounts/vm_beta/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/compute/alpha/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/compute/beta/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/compute/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/consumersurveys/v2/rest")
	@:variant("https://container.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/content/v2sandbox/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/content/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/customsearch/v1/rest")
	@:variant("https://dataflow.googleapis.com/$discovery/rest?version=v1b3")
	@:variant("https://dataproc.googleapis.com/$discovery/rest?version=v1alpha1")
	@:variant("https://dataproc.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://dataproc.googleapis.com/$discovery/rest?version=v1beta1")
	@:variant("https://datastore.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://datastore.googleapis.com/$discovery/rest?version=v1beta3")
	@:variant("https://www.googleapis.com/discovery/v1/apis/deploymentmanager/alpha/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/deploymentmanager/v2beta/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/deploymentmanager/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/dfareporting/v2.6/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/dfareporting/v2.7/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/dfareporting/v2.8/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/discovery/v1/rest")
	@:variant("https://dlp.googleapis.com/$discovery/rest?version=v2beta1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/dns/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/dns/v2beta1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/doubleclickbidmanager/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/doubleclicksearch/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/drive/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/drive/v3/rest")
	@:variant("https://firebasedynamiclinks.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://firebaserules.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/fitness/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/fusiontables/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/fusiontables/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/games/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/gamesConfiguration/v1configuration/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/gamesManagement/v1management/rest")
	@:variant("https://genomics.googleapis.com/$discovery/rest?version=v1alpha2")
	@:variant("https://genomics.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/gmail/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/groupsmigration/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/groupssettings/v1/rest")
	@:variant("https://iam.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/identitytoolkit/v3/rest")
	@:variant("https://kgsearch.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://language.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://language.googleapis.com/$discovery/rest?version=v1beta1")
	@:variant("https://language.googleapis.com/$discovery/rest?version=v1beta2")
	@:variant("https://www.googleapis.com/discovery/v1/apis/licensing/v1/rest")
	@:variant("https://logging.googleapis.com/$discovery/rest?version=v2")
	@:variant("https://logging.googleapis.com/$discovery/rest?version=v2beta1")
	@:variant("https://manufacturers.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/mirror/v1/rest")
	@:variant("https://ml.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://ml.googleapis.com/$discovery/rest?version=v1beta1")
	@:variant("https://monitoring.googleapis.com/$discovery/rest?version=v3")
	@:variant("https://www.googleapis.com/discovery/v1/apis/oauth2/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/oauth2/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/pagespeedonline/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/pagespeedonline/v2/rest")
	@:variant("https://partners.googleapis.com/$discovery/rest?version=v2")
	@:variant("https://people.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://playmoviespartner.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/plus/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/plusDomains/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/prediction/v1.2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/prediction/v1.3/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/prediction/v1.4/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/prediction/v1.5/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/prediction/v1.6/rest")
	@:variant("https://proximitybeacon.googleapis.com/$discovery/rest?version=v1beta1")
	@:variant("https://pubsub.googleapis.com/$discovery/rest?version=v1beta1a")
	@:variant("https://pubsub.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://pubsub.googleapis.com/$discovery/rest?version=v1beta2")
	@:variant("https://www.googleapis.com/discovery/v1/apis/qpxExpress/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/replicapool/v1beta1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/replicapool/v1beta2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/replicapoolupdater/v1beta1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/reseller/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/resourceviews/v1beta1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/resourceviews/v1beta2/rest")
	@:variant("https://runtimeconfig.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://runtimeconfig.googleapis.com/$discovery/rest?version=v1beta1")
	@:variant("https://safebrowsing.googleapis.com/$discovery/rest?version=v4")
	@:variant("https://script.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://searchconsole.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://servicecontrol.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://servicemanagement.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://serviceuser.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://sheets.googleapis.com/$discovery/rest?version=v4")
	@:variant("https://www.googleapis.com/discovery/v1/apis/siteVerification/v1/rest")
	@:variant("https://slides.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://sourcerepo.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://spanner.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/spectrum/v1explorer/rest")
	@:variant("https://speech.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://speech.googleapis.com/$discovery/rest?version=v1beta1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/sqladmin/v1beta3/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/sqladmin/v1beta4/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/storage/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/storage/v1beta1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/storage/v1beta2/rest")
	@:variant("https://storagetransfer.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/surveys/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/tagmanager/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/tagmanager/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/taskqueue/v1beta1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/taskqueue/v1beta2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/tasks/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/toolresults/v1beta3firstparty/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/toolresults/v1beta3/rest")
	@:variant("https://tracing.googleapis.com/$discovery/rest?version=v2")
	@:variant("https://www.googleapis.com/discovery/v1/apis/translate/v2/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/urlshortener/v1/rest")
	@:variant("https://vision.googleapis.com/$discovery/rest?version=v1")
	@:variant("https://www.googleapis.com/discovery/v1/apis/webfonts/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/webmasters/v3/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/youtube/v3/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/youtubeAnalytics/v1/rest")
	@:variant("https://www.googleapis.com/discovery/v1/apis/youtubeAnalytics/v1beta1/rest")
	@:variant("https://youtubereporting.googleapis.com/$discovery/rest?version=v1")
	public function parse(url:String) {
		return Discovery.parseUrl(url)
			.swap(assert(true));
	}
}