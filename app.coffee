# pruebas con coffee-script

require 'coffee-script'

express = require 'express', http = require 'http'


app = express()

server = http.createServer app

app.get "/", (req,res)->
    res.send 'Bienvenido a coffee-script'
    console.log "Petición solicitada"

server.listen 8000,->
    console.log "Servidor iniciado"


