SMODS.Joker {
    key = "paraiba",
    atlas = "rnjokers",
    pos = { x = 5, y = 3},
    config = {
        extra = {
            increase = 30,
            chips = 0
        }
    },
    rarity = 1,
    cost = 5,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.increase,
                card.ability.extra.chips,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.increase
            return {
                chips = card.ability.extra.chips,
            }
        end
        if context.end_of_round then
            card.ability.extra.chips = 0
        end
    end
}