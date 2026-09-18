SMODS.Joker {
    key = "fake_png",
    atlas = "rnjokers",
    pos = { x = 9, y = 0},
    config = {
        extra = {
            chips = 15,
        }
    },
    rarity = 1,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local unscored_cards = (#context.full_hand - #context.scoring_hand)
            return {
                chips = unscored_cards * card.ability.extra.chips
            }
        end
    end
}