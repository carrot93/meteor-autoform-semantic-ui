Package.describe({
  name: "jameslefrere:autoform-semantic-ui",
  summary: "Semantic UI theme for Autoform",
  version: "0.1.0",
  git: " /* Fill me in! */ "
});

Package.onUse(function(api) {
  api.versionsFrom("1.0");
  api.use(["coffeescript", "templating", "underscore"], "client");
  api.use("aldeed:autoform@4.0.0");
  api.addFiles([
    "semanticUI.html",
    "semanticUI.css",
    "semanticUI.coffee"
  ], "client");
});
