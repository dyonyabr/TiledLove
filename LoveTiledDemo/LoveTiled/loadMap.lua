return function(levelPath, tilesetPath, tilesetTexturePath)
  local map = require(levelPath)
  local tilesetImageData = love.image.newImageData(tilesetTexturePath)
  local tilesetData = require(tilesetPath)
  local animations = {}
  for num, tile in pairs(tilesetData.tiles) do
    if tile.animation then
      animations[tile.id] = tile.animation
    end
  end
  local tileset = {
    cell = math.max(tilesetData.tilewidth, tilesetData.tileheight),
    width = tilesetData.columns,
    height = tilesetData.columns,
    image = love.graphics.newImage(tilesetImageData),
    animations = animations
  }

  local layers = {}
  local playerStartPos = { 0, 0 }
  for _, layer in ipairs(map.layers) do
    if layer.type == "tilelayer" then
      layers[#layers + 1] = layer
    elseif layer.type == "objectgroup" then
      if layer.name == "objects" then
        for num, obj in pairs(layer.objects) do
          if obj.name == "playerStartPos" then
            playerStartPos = { obj.x, obj.y }
          end
        end
      end
    end
  end

  return {
    tileset = tileset,
    layers = layers,
    playerStartPos = playerStartPos
  }
end
