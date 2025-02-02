function create_basic_attack(damage)
    local attack = {}
    attack.damage = damage
    function attack:trigger(enemy)
        enemy:takeDamage(self.damage, vector(0, 0), 0, 0.1)
    end

    return attack
end
