require([
  "jquery",
  "lib/analytics/analytics",
  "app_core",
  "validation/validation"
], function($, Analytics) {
  "use strict";

  var analytics = new Analytics();
  analytics.trackView();

});
