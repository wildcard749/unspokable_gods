function cretae_sigil_effect(child)
    local effect = {}
    child.parent = effect
    effect.child = child
    function effect:trigger(enemy)
        self.child:trigger(enemy)
        if self.next and enemythen
            flux.after(1, function()
                self.next:trigger(enemy)
            end)
        end
    end
    
    return effect
end
