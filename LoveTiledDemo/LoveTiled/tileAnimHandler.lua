local order = { 1, 2, 3, 1, 3, 4 }
local positions = { { 0, 0 }, { 1, 0 }, { 1, 1 }, { 0, 1 } }

local function i2pos(i, height)
  return i % height, math.floor(i / height)
end

local function pos2i(x, y, height)
  return x + y * height
end

local tileAnimHandler = {
  tick = .05,
  ticks = 0,
  time = 0,
}

function tileAnimHandler:init(level)
  self.level = level
end

function tileAnimHandler:update(dt)
  self.time = self.time + dt
  if self.time - self.ticks * self.tick >= self.tick then
    self.ticks = self.ticks + 1
    for _, layer in pairs(self.level.layers) do
      for _, anim in pairs(layer.animations) do
        anim.ticks = anim.ticks + 1
        if anim.ticks * self.tick >= anim.anim[anim.curFrame].duration / 1000 then
          anim.ticks = 0
          anim.curFrame = anim.curFrame + 1
          if anim.curFrame > #anim.anim then
            anim.curFrame = 1
          end
          local ux, uy = i2pos(anim.anim[anim.curFrame].tileid, self.level.data.tileset.height)
          for _, vert in pairs(anim.verts) do
            for i = 1, 6 do
              local o = order[i]
              local px, py = unpack(positions[o])
              local uvx, uvy = (ux + px) / self.level.data.tileset.height,
                  (uy + py) / self.level.data.tileset.height
              layer.mesh:setVertexAttribute(vert + i - 1, 2, uvx, uvy)
            end
          end
        end
      end
    end
  end
end

return tileAnimHandler
