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
        local modifier = 0
        if next(SMODS.find_card("v_crystal_ball")) or next(SMODS.find_card("j_rndmod_voucher")) then
            modifier = 1
        end
        return {
            vars = {
                G.GAME.probabilities.normal+modifier,
                card.ability.extra.dchance + modifier
            }
        }
    end,
    calculate = function(self, card, context)
        local modifier = 0
        if next(SMODS.find_card("v_crystal_ball")) or next(SMODS.find_card("j_rndmod_voucher")) then
            modifier = 1
        end
        if context.pre_discard then
            if pseudorandom('rubyrnd'..G.GAME.round_resets.ante) < (G.GAME.probabilities.normal+modifier)/(card.ability.extra.dchance+modifier) then
                ease_discard(1)
                return {
                    extra = {focus = card, message = localize('k_rnd_discard'), colour = G.C.MULT},
                    card = card,
                }
            end
        end
    end
}