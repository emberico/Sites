###
Module dependencies.
###
express = require("express")
routes = require("./routes")
http = require("http")
path = require("path")
app = express()

app.configure ->
    app.set "port", process.env.PORT or 3000
    app.set "views", __dirname + "/views"
    app.set "view engine", "hjs"
    app.use express.favicon(__dirname + '/public/favicon.ico')
    app.use express.logger("dev")
    app.use express.bodyParser()
    app.use express.methodOverride()
    app.use require("less-middleware")(src: path.join(__dirname, "public"), compress: true)
    app.use app.router
    app.use express.static(path.join(__dirname, "public"))

app.configure "development", ->
    app.use express.errorHandler()

app.get "/", routes.under

http.createServer(app).listen app.get("port"), ->
    console.log "Express server listening on port " + app.get("port")
