love.graphics.setDefaultFilter("nearest", "nearest")

local levelObject = require("LoveTiled.levelObject").new()

function love.load()
  levelObject:load()
  levelObject:changeLevel(
    "res.level.testLevel",
    "res.tileset.testTileset",
    "res/tileset/testTileset.png")
end

function love.update(dt)
  levelObject:update(dt)
end

function love.draw()
  love.graphics.scale(40, 40)
  levelObject:draw()
end
