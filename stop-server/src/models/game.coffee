mongoose = require 'mongoose'

# Game model
Game = new mongoose.Schema(
  color: Boolean
  country: Number
  creator: String
)

module.exports = mongoose.model 'Game', Game