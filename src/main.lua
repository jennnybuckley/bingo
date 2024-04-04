function love.load()
    x = 400
    y = 300
    speed = 200
end

function love.update(dt)
    dx = 0
    dy = 0
    if love.keyboard.isDown("right") then
        dx = dx + speed
    end
    if love.keyboard.isDown("left") then
        dx = dx - speed
    end
    if love.keyboard.isDown("down") then
        dy = dy + speed
    end
    if love.keyboard.isDown("up") then
        dy = dy - speed
    end
    d = math.sqrt(dx * dx + dy * dy)/speed
    if (d > 0) then
        x = x + dt*dx/d
        y = y + dt*dy/d
    end
end

function love.draw()
    love.graphics.print("Hello World", x, y)
end
