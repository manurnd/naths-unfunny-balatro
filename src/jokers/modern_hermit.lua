SMODS.Joker {
    key = "modern_hermit",
    atlas = "rnjokers",
    pos = { x = 0, y = 0},
    display_size = { w = 71, h = 71 },
    pixel_size = { w = 71, h = 71 },
    config = {
        extra = {
            hermit_chance = 7
        }
    },
    rarity = 1,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_hermit
        return {
            vars = { G.GAME.probabilities.normal, card.ability.extra.hermit_chance }
        }
    end,
    calculate = function(self, card, context)
        if context.open_booster and not (context.blueprint_card or self).getting_sliced and 
        #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            if pseudorandom('forfun'..G.GAME.round_resets.ante) < G.GAME.probabilities.normal/card.ability.extra.hermit_chance then
                SMODS.add_card({key = "c_hermit"})
                return {
                    extra = {focus = card, message = localize('k_plus_hermit'), colour = G.C.PURPLE},
                    card = card,
                }
            end
        end
    end
}