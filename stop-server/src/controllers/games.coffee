Game = require '../models/game'

# game model's CRUD controller.
module.exports =

  # Lists all games
  index: (req, res) ->
    Game.find {}, (err, games) ->
      res.send games

  # Creates new game with data from `req.body`
  create: (req, res) ->
    game = new Game req.body
    game.save (err, game) ->
      if not err
        res.send game
        res.statusCode = 201
      else
        res.send err
        res.statusCode = 500

  # Gets game by id
  get: (req, res) ->
    Game.findById req.params.id, (err, game) ->
      if not err
        res.send game
      else
        res.send err
        res.statusCode = 500

  # Updates game with data from `req.body`
  update: (req, res) ->
    Game.findByIdAndUpdate req.params.id, {"$set":req.body}, (err, game) ->
      if not err
        res.send game
      else
        res.send err
        console.log err
        res.statusCode = 500

  # Deletes game by id
  delete: (req, res) ->
    Game.findByIdAndRemove req.params.id, (err) ->
      if not err
        res.send {}
      else
        res.send err
        res.statusCode = 500

