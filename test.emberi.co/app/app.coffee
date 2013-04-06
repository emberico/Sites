###
Module dependencies.
###
express = require "express"
hbs = require "express-hbs"
helpers = require "connect-assets-hbs-helpers"
http = require "http"
routes = require "./routes"
app = express()

app.configure ->
    app.set "port", process.env.PORT or 3001
    app.engine "html", hbs.express3(
        partialsDir: __dirname + "/views/partials"
        extname: "html"
    )
    app.set "view engine", "html"
    app.set "views", __dirname + "/views"
    app.use express.favicon(__dirname + '/public/favicon.ico')
    app.use express.logger("dev")
    app.use express.bodyParser()
    app.use express.methodOverride()
    app.use app.router
    app.use express.static(__dirname, "/public")
    app.use require("connect-assets")(
        buildDir: __dirname + "/public"
        pathsOnly: true
    )

app.configure "development", ->
    app.use express.errorHandler()

app.get "/", routes.index
app.get "/philosophy/", routes.philosophy

http.createServer(app).listen app.get("port"), ->
    console.log "Express server listening on port " + app.get("port")
