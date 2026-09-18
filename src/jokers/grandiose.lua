SMODS.Joker {
    key = "grandiose",
    atlas = "rnjokers",
    pos = { x = 1, y = 2},
    config = {
        extra = {
            money = 0
        }
    },
    rarity = 1,
    cost = 7,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {card.ability.extra.money}
        }
    end,
    calculate = function(self, card, context)
        if context.modify_final_cashout and card.ability.extra.money > 0 then
            return {
                modify = card.ability.extra.money
            }
        end
        
        if context.selling_card and context.card.ability.set == 'Joker' then
            card.ability.extra.money = context.card.sell_cost
            
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) - card.ability.extra.money
            return {
                dollars = -card.ability.extra.money,
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