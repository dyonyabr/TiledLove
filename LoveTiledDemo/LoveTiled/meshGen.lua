local order = { 1, 2, 3, 1, 3, 4 }
local positions = { { 0, 0 }, { 1, 0 }, { 1, 1 }, { 0, 1 } }

local function i2pos(i, height)
  return i % height, math.floor(i / height)
end

local function pos2i(x, y, height)
  return x + y * height
end

local function createLayerMesh(layer, tileset, tilesy)
  local animations = {}
  local verts = {}

  local width = layer.width
  local height = layer.width

  for x = 0, width - 1 do
    for y = 0, height - 1 do
      local pi = pos2i(x, y, height) + 1
      local tile = layer.data[pi]
      if tile ~= 0 then
        local nextVert = #verts + 1
        local tileid = tile - 1
        if tileset.animations[tileid] then
          if not animations[tileid] then
            animations[tileid] = { anim = tileset.animations[tileid], verts = { nextVert }, curFrame = 1, ticks = 0 }
          else
            animations[tileid].verts[#animations[tileid].verts + 1] = nextVert
          end
        end
        local ux, uy = i2pos(tileid, tilesy)

        for i = 1, 6 do
          local o = order[i]
          local px, py = unpack(positions[o])
          local uvx, uvy = (ux + px) / tilesy, (uy + py) / tilesy
          verts[nextVert] = {
            x + px, y + py, uvx, uvy, 1, 1, 1, 1
          }
          nextVert = nextVert + 1
        end
      end
    end
  end

  local mesh = love.graphics.newMesh(verts, "triangles", "dynamic")
  mesh:setTexture(tileset.image)

  return mesh, animations
end

return function(self)
  local layers = {}
  for _, layer in pairs(self.data.layers) do
    local mesh, animations = createLayerMesh(layer, self.data.tileset, self.data.tileset.height)

    layers[#layers + 1] = {
      mesh = mesh,
      animations = animations,
    }
  end

  self.layers = layers
end
