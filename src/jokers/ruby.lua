SMODS.Joker {
    key = "ruby",
    atlas = "rnjokers",
    pos = { x = 3, y = 3},
    config = {
        extra = {
            dchance = 3,
        }
    },
    rarity = 1,
    cost = 5,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                G.GAME.probabilities.normal,
                card.ability.extra.dchance
            }
        }
    end,
    calculate = function(self, card, context)
        if context.pre_discard then
            if pseudorandom('rubyrnd'..G.GAME.round_resets.ante) < G.GAME.probabilities.normal/card.ability.extra.dchance then
                ease_discard(1)
                return {
                    extra = {focus = card, message = localize('k_rnd_discard'), colour = G.C.MULT},
                    card = card,
                }
            end
        end
    end
}