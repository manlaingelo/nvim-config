local textArts = require("config.constants")

local function get_header()
  math.randomseed(os.time())
  return textArts[math.random(1, #textArts)]
end

return get_header
