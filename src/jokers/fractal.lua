SMODS.Joker {
    key = "fractal",
    atlas = "rnjokers",
    pos = { x = 8, y = 1 },
    config = {
        extra = {
            xMult = 0.1,
            cards = 5,
            cardsLeft = 5,
        }
    },
    rarity = 3,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.xMult,
                (1 + card.ability.extra.xMult),
                card.ability.extra.cards,
                card.ability.extra.cards - card.ability.extra.cardsLeft
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and not context.blueprint then
            card.ability.extra.cardsLeft = card.ability.extra.cardsLeft - 1
            if card.ability.extra.cardsLeft == 0 then
                card.ability.extra.cards = card.ability.extra.cards * 2
                card.ability.extra.cardsLeft = card.ability.extra.cards
                card.ability.extra.xMult = card.ability.extra.xMult * 2
                return {
                    extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.MULT},
                    card = card,
                }
            end
        end
            
        if context.joker_main then
            return {
                xmult = 1 + card.ability.extra.xMult
            }
        end
    end
}