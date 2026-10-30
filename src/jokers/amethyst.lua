SMODS.Joker {
    key = "amethyst",
    atlas = "rnjokers",
    pos = { x = 7, y = 3},
    config = {
        extra = {
           chance = 6
        }
    },
    rarity = 2,
    cost = 5,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        local modifier = 1
        if next(SMODS.find_card("v_crystal_ball")) or next(SMODS.find_card("j_rndmod_voucher")) then
            modifier = 2
        end
         return {
            vars = { G.GAME.probabilities.normal*modifier, self.config.extra.chance}
        }
    end,
    calculate = function(self, card, context)
         local modifier = 1
        if next(SMODS.find_card("v_crystal_ball")) or next(SMODS.find_card("j_rndmod_voucher")) then
            modifier = 2
        end
        if context.using_consumeable and context.consumeable.ability.set == "Tarot" then
            if pseudorandom('amethyst'..G.GAME.round_resets.ante) < G.GAME.probabilities.normal*modifier/self.config.extra.chance then
            SMODS.add_card({key = context.consumeable.config.center_key})
            end
         end
    end
}