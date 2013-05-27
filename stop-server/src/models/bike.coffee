mongoose = require 'mongoose'

# Bike model
Bike = new mongoose.Schema(
  color: String
  price: Number
  picture: String
)

module.exports = mongoose.model 'Bike', Bike