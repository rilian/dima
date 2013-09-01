App.factory 'BaseImage', ['$resource', ($resource) ->
  $resource '/api/base_images/:id', id: '@id'
]
