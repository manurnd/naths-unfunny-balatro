SMODS.Joker {
    key = "ruby",
    atlas = "rnjokers",
    pos = { x = 3, y = 3},
    config = {
        extra = {
            multi = 0,
            increment = 1,
        }
    },
    rarity = 2,
    cost = 5,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.multi,
                card.ability.extra.increment
            }
        }
    end,
    calculate = function(self, card, context)
        if context.discard then
            card.ability.extra.multi = card.ability.extra.multi + card.ability.extra.increment
            return {
                extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.MULT},
                card = card,
            }
        end

        if context.joker_main then
            return {
                mult = card.ability.extra.multi,
            }
        end

        if context.end_of_round and context.main_eval then
            card.ability.extra.multi = 0
        end
    end
}