exports.index = (req, res) ->
    res.render "index", text: "Works!",
    superTitle: "We are Emberi Co.",
    bannerImage: "http://25.media.tumblr.com/2988b36b2c7561dee008ae7b19a5d7f4/tumblr_mjwxfsnjvy1s7f3fyo1_1280.jpg",
    title: "Human centered design & development"


exports.philosophy = (req, res) ->
    res.render "index",
    superTitle: "We are human",
    bannerImage: "http://25.media.tumblr.com/200ef79f26e629e5d16604f1e965023a/tumblr_mjv2ynE0Kx1s7f3fyo1_1280.jpg",
    title: "Interaction development for the human condition"
