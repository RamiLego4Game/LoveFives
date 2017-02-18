material = require("material-love")
_Width, _Height = love.graphics.getDimensions()

local cb = {
'update', 'draw', 'keypressed', 'keyreleased', 'mousepressed', 'mousemoved', 'mousereleased',
'touchpressed', 'touchmoved', 'touchreleased'
}

function clearlove() --Clears love callbacks
  for k, c in ipairs(cb) do
    love[c] = function() end
  end
end

function love.load()
  assert(love.filesystem.load("/states/splash.lua"))()
end