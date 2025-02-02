damages = {}
damage_settings = {color={255,0,0},time=.5}
function cretaeDamage(damage, srcX, srcY)
    table.insert(damages,{damage=damage, x=srcX, y=srcY, timer=0})
end