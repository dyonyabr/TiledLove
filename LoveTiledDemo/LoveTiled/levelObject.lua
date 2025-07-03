local path = "LoveTiled."
local loadMap = require(path .. "loadMap")

local level = {
  meshGen = require(path .. "meshGen"),
  tileAnimHandler = require(path .. "tileAnimHandler")
}
level.__index = level


function level.new()
  local newObject = {}
  setmetatable(newObject, level)
  return newObject
end

function level:changeLevel(levelPath, tilesetPath, tilesetTexturePath)
  self.data = loadMap(levelPath, tilesetPath, tilesetTexturePath)
  self:meshGen()
end

function level:load()
  self.tileAnimHandler:init(self)
end

function level:update(dt)
  self.tileAnimHandler:update(dt)
end

function level:draw()
  for num, layer in pairs(self.layers) do
    love.graphics.draw(layer.mesh)
  end
end

return level
