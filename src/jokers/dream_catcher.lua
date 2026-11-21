SMODS.Joker {
    key = "dream_catcher",
    atlas = "rnjokers",
    pos = { x = 5, y = 1},
    config = {
        extra = {
            xMult = 0.25
        }
    },
    rarity = 2,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xMult,
                colours = {
                    G.C.SUITS['Hearts']
                }    
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local lightSuits = 0
            for k, v in ipairs(context.scoring_hand) do
                if v:is_suit('Hearts') or v:is_suit('Diamonds') then
                    lightSuits = lightSuits + 1
                end
            end    
            return {xmult = 1 + (card.ability.extra.xMult * lightSuits)}
        end
    end
}