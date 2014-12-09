require([
  "jquery",
  "lib/analytics/analytics",
  "lib/analytics/google-analytics",
  "app_core",
  "validation/validation"
], function($, Analytics, GoogleAnalytics) {

  "use strict";

  var analytics = new Analytics();
  analytics.trackView();

  new GoogleAnalytics;
});
