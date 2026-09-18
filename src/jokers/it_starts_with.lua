SMODS.Joker {
    key = "it_starts_with",
    atlas = "rnjokers",
    pos = { x = 4, y = 0},
    config = {
        extra = {
            chips = 1
        }
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {chips = card.ability.extra.chips}
        end
        
        if context.individual and context.cardarea == G.play and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + 1
            return {
                extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
                card = card,
            }
        end
    end
}