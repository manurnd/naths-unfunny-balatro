SMODS.Joker {
    key = "pearto",
    atlas = "rnjokers",
    pos = { x = 3, y = 0},
    config = {
        extra = {
            chips = 10,
            mult = 1,
        }
    },
    rarity = 1,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.mult,
                G.GAME.hands["Pair"].level * card.ability.extra.chips,
                G.GAME.hands["Pair"].level * card.ability.extra.mult,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                chips = G.GAME.hands["Pair"].level * card.ability.extra.chips,
                mult = G.GAME.hands["Pair"].level * card.ability.extra.mult,
            }
        end
    end
}