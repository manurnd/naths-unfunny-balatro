SMODS.Joker {
    key = "cashback",
    atlas = "rnjokers",
    pos = { x = 5, y = 0},
    config = {
        extra = {
            money = 2
        }
    },
    rarity = 1,
    cost = 6,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.money,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.open_booster then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
            return {
                dollars = card.ability.extra.money,
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.GAME.dollar_buffer = 0
                            return true
                        end
                    }))
                end
            }
        end
        if context.skipping_booster then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
            return {
                dollars = card.ability.extra.money,
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.GAME.dollar_buffer = 0
                            return true
                        end
                    }))
                end
            }
        end
    end
}