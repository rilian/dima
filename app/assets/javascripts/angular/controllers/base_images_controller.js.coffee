App.controller 'BaseImagesController', ['$scope', 'BaseImage', ($scope, BaseImage) ->
  # Attributes accessible on the view
  $scope.base_images = BaseImage.query()
  $scope.selectedBaseImage = null
  $scope.selectedRow = null

  # Gather the BaseImages and set the selected one to the first on success
  $scope.base_images = BaseImage.query ->
    $scope.selectedBaseImage = $scope.base_images[0]
    $scope.selectedRow = 0

  # Set the selected BaseImage to the one which was clicked
  $scope.showBaseImage = (base_image, row) ->
    $scope.selectedBaseImage = base_image
    $scope.selectedRow = row
]
