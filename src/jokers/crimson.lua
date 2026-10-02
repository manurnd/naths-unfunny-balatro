SMODS.Joker {
    key = "crimson",
    atlas = "rnjokers",
    pos = { x = 6, y = 3},
    display_size = { w = 71, h = 71 },
    pixel_size = { w = 71, h = 71 },
    config = {
        extra = {
            increase = 0.2,
            mult = 1.0
        },
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.increase,
                card.ability.extra.mult
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and not context.blueprint and context.other_card:get_id() == 13 then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.increase
            return {
                extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.MULT},
                card = card,
            }
        end

        if context.joker_main then
            local newMult = card.ability.extra.mult
            card.ability.extra.mult = 1.0
            return {xmult = newMult} 
        end
    end
}