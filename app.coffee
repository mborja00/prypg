# pruebas con coffee-script

require 'coffee-script'

express = require 'express' 
http = require 'http'
mongo = require 'mongoskin'

db = mongo.db 'localhost:27017/pat?auto_reconnect', {safe:false}

mlg = db.collection('marco').find({})

app = express()

server = http.createServer app

app.configure ->
    app.set 'view engine','jade'
    app.set 'views', __dirname + "/views"
    app.use express.static __dirname + "/public"

app.get "/", (req,res)->
    res.render 'index.jade' , title : "ProGobernabilidad"
    console.log "Petición solicitada"

app.get "/marco",(req,res)->
    res.render 'marco.jade', title : "ProGobernabilidad" , ml : mlg
    console.log "Consulta de Marco Lógico"

app.get "/tarea",(req,res)->
    res.render 'TareaLista.jade', title : "Tareas", accion : 'consulta'

app.get "/tarea/nueva",(req,res)->
    res.render 'TareaNuevo.jade', title : "Tareas", accion : 'editar'

server.listen 8000,->
    console.log "Servidor iniciado"


