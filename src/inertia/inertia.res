let expensiveFilesRead = lazy({
  Js.log("Reading dir")
})

Lazy.force(expensiveFilesRead)