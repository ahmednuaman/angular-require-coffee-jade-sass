# This is a stub service. It does nothing.
define [
  # Jump to [`service/radian-service.coffee`](radian-service.html) ☛
  'service/radian-service'
], (RS) ->
  RS 'stubService', [
    '$q'
    '$resource'
  ],
  init: () ->
    @fooBar = @$resource '/foo/bar.json'