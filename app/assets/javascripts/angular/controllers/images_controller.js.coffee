App.controller 'ImagesController', ['$scope', 'Image', ($scope, Image) ->
  # Attributes accessible on the view
  $scope.images = Image.query()
  $scope.selectedImage = null
  $scope.selectedRow = null

  # Gather the Images and set the selected one to the first on success
  $scope.images = Image.query ->
    $scope.selectedImage = $scope.images[0]
    $scope.selectedRow = 0

  # Set the selected Image to the one which was clicked
  $scope.showImage = (image, row) ->
    $scope.selectedImage = image
    $scope.selectedRow = row
]
