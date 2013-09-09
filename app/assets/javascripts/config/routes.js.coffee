# Configure 'app' routing. The $stateProvider and $urlRouterProvider
# will be automatically injected into the configurator.
app.config ($stateProvider, $urlRouterProvider) ->

  # Make sure that any other request beside one that is already defined
  # in stateProvider will be redirected to root.
  $urlRouterProvider
    .otherwise("/")

  # Define 'app' states
  $stateProvider
    .state "default",
      abstract: true
      views:
        "":
          controller: "ApplicationController"
          templateUrl: "/assets/layouts/default.html.erb"

    # Images
    .state "images",
      parent: "default"
      url: "/images"
      views:
        "":
          controller: "ImagesController"
          templateUrl: "/assets/images/index.html.erb"

    .state "new",
      parent: "images"
      url: "/new"
      views:
        "@default":
          controller: "ImagesController"
          templateUrl: "/assets/images/new.html.erb"

    .state "edit",
      parent: "images"
      url: "/:id/edit"
      views:
        "@default":
          controller: "ImagesController"
          templateUrl: "/assets/images/edit.html.erb"
