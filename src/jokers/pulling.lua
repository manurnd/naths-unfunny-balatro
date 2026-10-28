SMODS.Joker {
    key = "pulling_force",
    atlas = "rnjokers",
    pos = { x = 3, y = 1 },
    config = {
        extra = {
            cards = 4
        }
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.cards,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.first_hand_drawn then
            local extras = 0
            if next(SMODS.find_card("v_paint_brush")) then extras = 1 end
            SMODS.draw_cards(card.ability.extra.cards + extras)
        end
    end
}