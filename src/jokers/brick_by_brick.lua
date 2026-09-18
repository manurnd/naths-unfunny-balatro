SMODS.Joker {
    key = "bricks",
    atlas = "rnjokers",
    pos = { x = 3, y = 2},
    config = {
        extra = {
            cards = 3,
        }
    },
    rarity = 2,
    cost = 7,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.cards,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main and next(context.poker_hands["Full House"]) then
            SMODS.draw_cards(5 + card.ability.extra.cards)
            return {
                extra = {focus = card, message = localize('k_draw'), colour = G.C.PURPLE},
                card = card,
            }
        end
    end
}