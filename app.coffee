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
    res.render 'index.jade' , title : "ProGobernabilidad"
    console.log "Petición solicitada"

app.get "/marco",(req,res)->
    res.render 'marco.jade', title : "ProGobernabilidad" , ml : [{"ml":{"codigo":"id_0", "tipo": "tipo_F", "descripcion":"Crecimiento económico equitativo y sostenible y reducción de la desigualdad de oportunidades en el norte del Perú."}},

    {"ml":{"codigo":"id_1", "tipo": "tipo_I", "descripcion":"Servicios públicos más inclusivos, con mejor calidad y mayor acceso a nivel regional con énfasis especial en poblaciones vulnerables (niños, jóvenes, mujeres, rural, indígena)."}},

    {"ml":{"codigo":"id_100", "tipo": "tipo_M", "descripcion":"Mejora de la capacidad de los GR para desarrollar sistemas de planificación participativos y sensibles al género, en coordinación con los niveles de gobierno nacional, distrital y local, para atender a las necesidades de mujeres, niñas y niños, poblaciones rurales e indígenas y otros grupos vulnerables."}},

    {"ml":{"codigo":"id_110", "tipo": "tipo_P", "descripcion":"Asistencia técnica en planificación estratégica e integrada, en coordinación (entre sectores y niveles de gobierno), en metodologías participativa e inclusivas, igualdad de género, RBM, monitoreo, evaluación y programación presupuestal provista a los GR y organizaciones nacionales (centrales)."}},

    {"ml":{"codigo":"id_120", "tipo": "tipo_P", "descripcion":"Herramientas para facilitar el diálogo político entre grupos de interés (SC) y regiones, y entre el centro y regiones, provistas a instituciones nacionales claves (CEPLAN &amp; ANGR) y a GR."}},   

    {"ml":{"codigo":"id_130", "tipo": "tipo_P", "descripcion":"Diseño de sistemas de planificación regional de largo plazo (centros de planificación regional), creación de un plan de mejora para los centros de planificación regional existentes, y entrega de asistencia técnica y acompañamiento a los GR para implementar los diseños y mejorar los planes entregados"}},  

    {"ml":{"codigo":"id_2", "tipo": "tipo_I", "descripcion":"Prácticas gubernamentales regionales más eficientes, transparentes e inclusivas para la promoción del crecimiento económico equitativo y sostenible."}},

    {"ml":{"codigo":"id_200", "tipo": "tipo_M", "descripcion":"Incremento de la capacidad institucional de los GR en gestión pública participativa y basada en resultados de los servicios, programas, políticas y procedimientos para atender a las necesidades de mujeres, niñas y niños, poblaciones rurales e indígenas y otros grupos vulnerables."}}

    {"ml":{"codigo":"id_210", "tipo": "tipo_P", "descripcion":"Sistemas administrativos y de gestión que incluyen los CERPLAN, con énfasis en el crecimiento económico sostenible y la entrega del servicio público; diseñados participativamente con los GR"}},

    {"ml":{"codigo":"id_220", "tipo": "tipo_P", "descripcion":"AT relacionada a la modernización y reforma del estado, incluyendo pero no limitada a gestión financiera, enfoque participativos, igualdad de género, gestión basada en resultados (RBM), gestión de recursos humanos, administración, gobierno electrónico, servicios públicos y programas sociales (salud, educación) provistas a los GR."}},

    {"ml":{"codigo":"id_230", "tipo": "tipo_P", "descripcion":"Diálogo político entre los cuatro GR y las instituciones centrales (nacionales) facilitado."}},

    {"ml":{"codigo":"id_300", "tipo": "tipo_M", "descripcion":"Incremento de la capacidad de los GR para desarrollar, implementar y mantener sistemas de gestión de información (incluyendo IT captura, análisis y difusión de la información), que son compatibles (e integrados donde sea necesario) con aquellos existentes a nivel central y en gobiernos distritales, para atender las necesidades de mujeres, niñas y niños, poblaciones rurales e indígenas y otros grupos vulnerables."}},

    {"ml":{"codigo":"id_310", "tipo": "tipo_P", "descripcion":"AT provista en la implementación y uso de sistemas de información (a ser desarrollados por el proyecto usando enfoques participativos con los GR), incluyendo peor no limitados a marcos regulatorios, transparencia y rendición de cuentas, acceso y  e interpretación de información, generación y uso de estadísticas, gobierno electrónico, provista a los GR y las comunidades."}},

    {"ml":{"codigo":"id_320", "tipo": "tipo_P", "descripcion":"Sistemas de gestión de la información diseñados para apoyar las necesidades de información de los 4 GR y las poblaciones rurales."}}
    ]
    console.log "Consulta de Marco Lógico"

server.listen 8000,->
    console.log "Servidor iniciado"


