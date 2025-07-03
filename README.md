# TiledLove
Import Tilemaps from "Tiled" to Love2D!

## Features
✨ Easy tilemap integration  
🚀 Fast rendering  
🛠️ Customizable  
👾 Tile Animation Support  
📍 Player start pos proprty (via "TIled" objects)

## Installation
1. Copy "LoveTiled" folder from demo to your project.
2. in "levelObject.lua" file, change "path" variable to your "LoveTiled" folder destination (if "LoveTiled" folder is not in project's root)
3. Copy "levelObject.lua" to your objects folder, rename it as needed and use it as a level object that displays tilemaps, loads tilesets and so on.
4. Create an object of your copied and renamed "levelObject.lua" and call "changeLevel" function with 3 parameters: lua exported tilemap path, lua exported tileset path, tileset image in !!!png!!!
```lua
local levelObject = require("LoveTiled.levelObject").new()
levelObject:changeLevel(
    "res.level.testLevel",
    "res.tileset.testTileset",
    "res/tileset/testTileset.png")
```

### Basic Example

"main.lua" file
```lua
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
```
To set player start position, create and object in "Tiled" named "playerStartPos" and set it where you want position to be

![image](https://github.com/user-attachments/assets/e62ae02b-2dca-4c1c-8a3d-8a8dff44b474)
![image](https://github.com/user-attachments/assets/e7629ce9-420d-474a-b8c8-caf362aae8d1)


To get player start position in {x, y} format, do
```lua
local pos = levelObject.data.playerStartPos
```

## Contact me in case of any problems  
Instagram: https://www.instagram.com/dn_brnk/
