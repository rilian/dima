app.factory "Image", ($resource, apiPrefix) ->
  $resource(apiPrefix + "/images/:id",
    id: "@id"
  ,
    update:
      method: "PUT"
  )
