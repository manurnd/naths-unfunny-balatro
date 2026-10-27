SMODS.Joker {
    key = "amethyst",
    atlas = "rnjokers",
    pos = { x = 7, y = 3},
    config = {
        extra = {
           chance = 5
        }
    },
    rarity = 2,
    cost = 5,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
         return {
            vars = { G.GAME.probabilities.normal, self.config.extra.chance }
        }
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.config.set == "Tarot" then
            if pseudorandom('amethyst'..G.GAME.round_resets.ante) < G.GAME.probabilities.normal/back.effect.config.extra.chance then
            SMODS.add_card({key = context.consumeable.config.center_key})
            end
         end
    end
}