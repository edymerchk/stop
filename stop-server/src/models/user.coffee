mongoose = require 'mongoose'

# User model
User = new mongoose.Schema(
  username: String
  total_points: String
  avatar: String
)

module.exports = mongoose.model 'User', User