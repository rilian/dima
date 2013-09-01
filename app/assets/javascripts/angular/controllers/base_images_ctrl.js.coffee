App.controller 'BaseImagesController', ['$scope', 'BaseImage', ($scope, BaseImage) ->
  $scope.base_images = BaseImage.query()
]
