exports.index = (req, res) ->
    res.render "index", text: "Works!",
    superTitle: "We are Emberi Co.",
    title: "Human centered design & development",
    subTitle: "digital product design",
    bannerImage: "http://25.media.tumblr.com/2988b36b2c7561dee008ae7b19a5d7f4/tumblr_mjwxfsnjvy1s7f3fyo1_1280.jpg"


exports.philosophy = (req, res) ->
    res.render "philosophy",
    superTitle: "We are human",
    bannerImage: "http://25.media.tumblr.com/add7bbf435fc4099fba4a797e0935602/tumblr_mkqkv4UMtM1s7f3fyo1_1280.jpg",
    subTitle: "OVERCOME LIMITATIONS, EXPAND CAPABILITIES",
    title: "Interaction development for the human condition"

exports.people = (req, res) ->
    res.render "index"

exports.process = (req, res) ->
    res.render "index"

exports.portfolio = (req, res) ->
    res.render "index"

exports.contact = (req, res) ->
    res.render "index"

exports.test = (req, res) ->
    res.render "index",
    content: res.get "test"
