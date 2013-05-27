Bike = require '../models/bike'

# Bike model's CRUD controller.
module.exports = 

  # Lists all bikes
  index: (req, res) ->
    Bike.find {}, (err, bikes) ->
      res.send bikes
      
  # Creates new bike with data from `req.body`
  create: (req, res) ->
    bike = new Bike req.body
    bike.save (err, bike) ->
      if not err
        res.send bike
        res.statusCode = 201
      else
        res.send err
        res.statusCode = 500
        
  # Gets bike by id
  get: (req, res) ->
    Bike.findById req.params.id, (err, bike) ->
      if not err
        res.send bike
      else
        res.send err
        res.statusCode = 500
             
  # Updates bike with data from `req.body`
  update: (req, res) ->
    Bike.findByIdAndUpdate req.params.id, {"$set":req.body}, (err, bike) ->
      if not err
        res.send bike
      else
        res.send err
        console.log err
        res.statusCode = 500
    
  # Deletes bike by id
  delete: (req, res) ->
    Bike.findByIdAndRemove req.params.id, (err) ->
      if not err
        res.send {}
      else
        res.send err
        res.statusCode = 500
      
  