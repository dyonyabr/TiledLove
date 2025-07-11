return {
  version = "1.10",
  luaversion = "5.1",
  tiledversion = "1.11.2",
  class = "",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 16,
  height = 16,
  tilewidth = 8,
  tileheight = 8,
  nextlayerid = 6,
  nextobjectid = 2,
  properties = {},
  tilesets = {
    {
      name = "outside",
      firstgid = 1,
      filename = "../resources/tilesets/outside/testTileset.tsx",
      exportfilename = "../resources/tilesets/outside/testTileset.lua"
    }
  },
  layers = {
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      id = 1,
      name = "1",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 0
      },
      encoding = "lua",
      data = {
        4, 4, 2, 2, 2, 2, 2, 2, 6, 2, 2, 2, 2, 2, 2, 4,
        4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 2,
        6, 2, 2, 2, 2, 2, 2, 4, 2, 2, 2, 4, 4, 2, 2, 2,
        2, 2, 2, 4, 4, 4, 6, 4, 2, 2, 4, 6, 4, 2, 2, 2,
        2, 2, 2, 4, 6, 4, 4, 4, 2, 2, 2, 2, 2, 4, 2, 2,
        2, 2, 2, 4, 4, 4, 4, 2, 2, 3, 3, 2, 2, 2, 2, 2,
        2, 4, 2, 2, 2, 2, 2, 3, 5, 8, 9, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 3, 8, 8, 8, 8, 2, 2, 2, 2, 2,
        2, 2, 2, 2, 2, 2, 8, 8, 9, 9, 2, 2, 2, 2, 2, 6,
        3, 2, 4, 6, 2, 2, 4, 9, 9, 2, 2, 2, 2, 2, 6, 2,
        10, 6, 2, 2, 2, 2, 2, 2, 2, 4, 2, 4, 2, 2, 2, 2,
        10, 3, 2, 6, 2, 2, 2, 6, 2, 2, 4, 4, 2, 2, 2, 2,
        10, 10, 2, 2, 2, 2, 2, 2, 2, 4, 4, 4, 4, 2, 2, 2,
        11, 10, 3, 3, 2, 2, 4, 2, 2, 4, 4, 2, 2, 3, 3, 5,
        10, 10, 10, 10, 3, 7, 3, 4, 2, 2, 3, 3, 7, 12, 12, 12,
        10, 10, 11, 10, 10, 10, 11, 4, 4, 4, 12, 12, 12, 12, 12, 12
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      id = 2,
      name = "2",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["solid"] = true,
        ["z"] = 1
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 19, 20, 19, 20, 19, 20,
        0, 0, 0, 0, 0, 37, 37, 37, 37, 0, 35, 36, 35, 36, 35, 36,
        0, 33, 34, 0, 0, 37, 37, 37, 37, 33, 34, 33, 34, 33, 19, 20,
        0, 0, 0, 0, 0, 0, 0, 37, 37, 0, 0, 0, 0, 0, 35, 36,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 33, 34, 33,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 21, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 21, 0, 21, 0, 0,
        0, 0, 0, 33, 34, 37, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 37, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 37, 37, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 33, 19, 20, 34, 0,
        0, 0, 0, 0, 0, 21, 21, 0, 0, 0, 0, 0, 35, 36, 0, 0,
        0, 0, 0, 0, 21, 21, 21, 0, 0, 0, 0, 33, 34, 33, 34, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      x = 0,
      y = 0,
      width = 16,
      height = 16,
      id = 5,
      name = "3",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {
        ["z"] = 3
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 17, 18, 0, 0, 0, 0, 0, 0, 17, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 17, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 18, 17, 18, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 17, 0, 0, 18, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "objectgroup",
      draworder = "topdown",
      id = 4,
      name = "objects",
      class = "",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      parallaxx = 1,
      parallaxy = 1,
      properties = {},
      objects = {
        {
          id = 1,
          name = "playerStartPos",
          type = "",
          shape = "point",
          x = 64,
          y = 64,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
