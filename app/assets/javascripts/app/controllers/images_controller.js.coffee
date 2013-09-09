app.controller "ImagesController", ($scope, $http, $location, $state, $stateParams, Image) ->

  # =========================================================================
  # Initialize
  # =========================================================================

  $scope.images = {}
  $scope.image = {}

  # =========================================================================
  # Show
  # =========================================================================

  if $state.current.name == 'images'
    Image.query(
      {}

      # Success
    , (response) ->
      $scope.images = response

      # Error
    , (response) ->
    )

  if $state.current.name == 'show'
    Image.get
      id: $stateParams['id']

      # Success
    , (response) ->
      $scope.image = response

      # Error
    , (response) ->

  # =========================================================================
  # Create
  # =========================================================================

  $scope.create = ->
    Image.save(
      {}
    , image:
        title: $scope.image.title
        description: $scope.image.description

      # Success
    , (response) ->
      $location.path "/images"

      # Error
    , (response) ->
    )

  # =========================================================================
  # Update
  # =========================================================================

  if $state.current.name == 'edit'
    Image.get
      id: $stateParams['id']

      # Success
    , (response) ->
      $scope.image = response

      # Error
    , (response) ->

  $scope.update = ->
    Image.update
      id: $stateParams['id']
    , image:
        title: $scope.image.title
        description: $scope.image.description

      # Success
    , (response) ->
      $location.path "/images"

      # Error
    , (response) ->

  # =========================================================================
  # Destroy
  # =========================================================================

  $scope.destroy = (id) ->
    Image.delete
      id: id

      # Success
    , (response) ->
      i = 0
      while i < $scope.images.length
        if $scope.images[i]['id'] is id
          $scope.images.splice(i,1)
        i++

      # Error
    , (response) ->
