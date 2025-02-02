function drawBeforeCamera()
    menu:draw()
end

function drawCamera()

    if gamestate == 0 then return end
    setWhite()

    if gameMap.layers["Background"] then
        gameMap:drawLayer(gameMap.layers["Background"])
    end

    if gameMap.layers["Base"] then
        gameMap:drawLayer(gameMap.layers["Base"])
    end
  
    if gameMap.layers["Objects"] then
        gameMap:drawLayer(gameMap.layers["Objects"])
    end

    if gameMap.layers["Objects2"] then
        gameMap:drawLayer(gameMap.layers["Objects2"])
    end

    if gameMap.layers["Test"] then
        --gameMap:drawLayer(gameMap.layers["Test"])
    end

    drawShadows()
    walls:draw()
    effects:draw(-1) -- two layers of effects
    chests:draw(-1)
    bombs:draw()
    boomerang:draw()
    loots:draw()
    arrows:draw(-1)
    fireballs:draw(-1)
    grapple:draw(-1)
    effects:draw(0)
    trees:draw(-1)
    player:draw()
    chests:draw(1)
    arrows:draw(1)
    fireballs:draw(1)
    grapple:draw(1)
    npcs:draw()
    enemies:draw()
    effects:drawDarkMagic()
    blasts:draw()
    projectiles:draw()
    effects:draw(1)
    particles:draw()
    trees:draw(1)

    if gameMap.dark then
        --love.graphics.setShader(shaders.trueLight)
        --love.graphics.rectangle("fill", -10, -10, 10000, 10000)
        --love.graphics.setShader()
        love.graphics.draw(sprites.effects.darkness, player:getX(), player:getY(), nil, nil, nil, sprites.effects.darkness:getWidth()/2, sprites.effects.darkness:getHeight()/2)
    end
    draw_damage()

end

function draw_damage()
    for i,v in ipairs(damages) do
        v.timer = v.timer + love.timer.getDelta()
        if(v.timer > damage_settings.time)then
            table.remove(damages,i)
        end
        local scale = 1 + math.sin(v.timer * 10) * 0.1
        love.graphics.print({damage_settings.color,v.damage}, v.x, v.y, 0, scale/6, scale/6)
    end
end

function draw_ui()
    if(player.sigils~=nil and sigils.list~=nil) then
        for i,v in ipairs(player.sigils) do 
            love.graphics.draw(sigils.list[v].sprite,(i-1)*64)
            
        end
    end
    
end

function drawAfterCamera()
    curtain:draw()
    draw_ui()
    if gamestate == 0 then return end
    drawHUD()
    pause:draw()
end