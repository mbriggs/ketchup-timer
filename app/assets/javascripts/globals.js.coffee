k = {}

p = (messages...)->
  console.log.apply(console, messages) if console
