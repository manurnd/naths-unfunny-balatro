SMODS.Joker {
    key = "amavera",
    atlas = "rnjokers",
    pos = { x = 6, y = 2},
    config = { extra = {xMult = 3} },
    rarity = 4,
    cost = 20,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xMult,
            }
        }
    end,
    add_to_deck = function(self, card, from_debuff)
        for k, v in pairs(G.GAME.probabilities) do 
            G.GAME.probabilities[k] = v*3
        end
    end,
    remove_from_deck = function(self, card, from_debuff)
        for k, v in pairs(G.GAME.probabilities) do 
            G.GAME.probabilities[k] = v/3
        end
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.other_card.lucky_trigger then
            return {xmult = card.ability.extra.xMult}
        end
    end
}