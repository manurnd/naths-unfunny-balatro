SMODS.Joker {
    key = "jackpot",
    atlas = "rnjokers",
    pos = { x = 9, y = 3},
    config = {
        extra = {
            jackpot = 12
        }
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.jackpot,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local AmtSevens = 0
            for k, v in ipairs(context.scoring_hand) do
                 if v:get_id() == 7 then
                      AmtSevens = AmtSevens + 1
                end
            end
            if AmtSevens >= 3 then
                G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.jackpot
                G.E_MANAGER:add_event(Event({func = (function() G.GAME.dollar_buffer = 0; return true end)}))
                return {
                    dollars = card.ability.extra.jackpot
                }
            end
        end
    end
}