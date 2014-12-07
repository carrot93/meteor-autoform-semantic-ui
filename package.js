Package.describe({
  name: "jameslefrere:autoform-semantic-ui",
  summary: "Semantic UI theme for Autoform",
  version: "0.1.4",
  git: "https://github.com/JamesLefrere/meteor-autoform-semantic-ui.git"
});

Package.onUse(function(api) {
  api.versionsFrom("1.0");
  api.use(["coffeescript", "templating", "underscore"], "client");
  api.use("aldeed:autoform@4.0.7");
  api.addFiles([
    "semanticUI.html",
    "semanticUI.css",
    "semanticUI.coffee"
  ], "client");
});
