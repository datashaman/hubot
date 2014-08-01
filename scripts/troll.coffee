responses =
    "hi|hello": "Whatever!"

hears =
    "mom|mother": "thinks your mom's quite nice!"
    "tuna": "thinks that looks like too much tuna!"
    "synergy|collective|disrupt": "rolls his eyes..."
    "troll|trolling": "thinks you're dumb, trolls are a myth!"

module.exports = (robot) ->
    for pattern, response of responses
        do (pattern, response) ->
            pattern = new RegExp(pattern)
            robot.respond pattern, (msg) ->
                msg.send response

    for pattern, response of hears
        do (pattern, response) ->
            pattern = new RegExp(pattern)
            robot.hear pattern, (msg) ->
                msg.emote response
