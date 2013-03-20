#
# GET home page.
# 
exports.index = (req, res) ->
    res.render "index"

exports.about = (req, res) ->
    res.render "about"

exports.philosophy = (req, res) ->
    res.render "philosophy"

exports.projects = (req, res) ->
    res.render "projects"

exports.clients = (req, res) ->
    res.render "clients"

exports.under = (req, res) ->
    res.render "under"