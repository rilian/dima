App.controller 'BaseImagesController', ['$scope', 'BaseImage', ($scope, BaseImage) ->
  $scope.base_images = BaseImage.query()
]

App.controller 'BaseImagesController', ['$scope', 'BaseImage', ($scope, BaseImage) ->
  # Attributes accessible on the view
  $scope.base_images = BaseImage.query()
  $scope.selectedBaseImage = null

  # Set the selected BaseImage to the one which was clicked
  $scope.showBaseImage = (base_image) ->
    $scope.selectedBaseImage = base_image
]
