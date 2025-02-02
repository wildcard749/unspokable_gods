
require("src/unspokable_gods/efects/basic_attack")
sigils = {}
--sprite: the image for the sigil sign
--base_attack: the base damage the sigil gives
sigils.attack = {sprite = sprites.sigils.test, effect = create_basic_attack(2)}
sigils.specific = {sprite = sprites.sigils.test2, effect = create_basic_attack(3)}
sigils.list = {sigils.attack, sigils.specific}

