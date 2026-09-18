SMODS.Joker {
    key = "solitaire",
    atlas = "rnjokers",
    pos = { x = 7, y = 2},
    config = {
        extra = 3,
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.initial_scoring_step and next(context.poker_hands["Straight"]) then
            card.ability.extra_value = card.ability.extra_value + card.ability.extra
            card:set_cost()
            return {
                message = localize('k_val_up'),
                colour = G.C.MONEY
            }
        end
    end
}