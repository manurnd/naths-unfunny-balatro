SMODS.Joker {
    key = "bismuth",
    atlas = "rnjokers",
    pos = { x = 4, y = 3},
    config = {
        extra = {
            increase = 1,
        }
    },
    rarity = 2,
    cost = 5,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_wild
        return {
            vars = {
                card.ability.extra.increase
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.other_card.ability.name == "Wild Card" then
            if context.cardarea == G.play then
                card.ability.extra_value = card.ability.extra_value + card.ability.extra.increase
                card:set_cost()
                return {
                    extra = {focus = card, message = localize('k_val_up'), colour = G.C.MONEY},
                    card = card
                }
            end
        end
    end
}