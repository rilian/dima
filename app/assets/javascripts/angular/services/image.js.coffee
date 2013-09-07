App.factory 'Image', ['$resource', ($resource) ->
  $resource '/api/images/:id', id: '@id'
]
