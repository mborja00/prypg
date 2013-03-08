# pruebas con coffee-script

require 'coffee-script'

express = require 'express', http = require 'http'

app = express()

server = http.createServer app

app.configure ->
    app.set 'view engine','jade'
    app.set 'views', __dirname + "/views"
    app.use express.static __dirname + "/public"

app.get "/", (req,res)->
    res.render 'index.jade' , title : "Jedy Jade"
    console.log "Petición solicitada"

server.listen 8000,->
    console.log "Servidor iniciado"


