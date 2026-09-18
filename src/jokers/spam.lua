SMODS.Joker {
    key = "spam",
    atlas = "rnjokers",
    pos = { x = 7, y = 0},
    config = {
        extra = {
            chips = 0,
            gain = 4
        }
    },
    rarity = 1,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.gain,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.before and context.scoring_name == 'High Card' and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.gain
            return {
                extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.CHIPS},
                card = card,
            }
            
        end
        
        
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}