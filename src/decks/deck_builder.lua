SMODS.Back {
    key = "build",
    atlas = "rndecks",
    pos = { x = 1, y = 0 },
    config = {},
    unlocked = false,
    unlock_condition = {type = 'win_deck', deck = 'b_erratic'},
    check_for_unlock = function(self, args)
        if args.type == "win_deck" then
            if get_deck_win_stake("b_erratic") > 0 then
                unlock_card(self)
            end
        end
    end,
    apply = function(self)
        G.E_MANAGER:add_event(Event({
            func = function()
                G.GAME.playing_card_rate = 10
                G.GAME.joker_rate = 0
                G.GAME.banned_keys['p_buffoon_normal_1'] = true
                G.GAME.banned_keys['p_buffoon_normal_2'] = true
                G.GAME.banned_keys['p_buffoon_jumbo_1'] = true
                G.GAME.banned_keys['p_buffoon_mega_1'] = true
                for i = #G.playing_cards, 1, -1 do
                    G.playing_cards[i]:remove()
                end
                for i = 1, 10 do
                    add_tag(Tag('tag_standard'))
                end
                for i = 1, 32 do
                    SMODS.add_card({
                        set = "Playing Card",
                        no_edition = true,
                        seal = nil,
                        enhanced_poll = 0.80,
                        area = G.deck
                    })
                end
                return true
            end
        }))
    end,
    
    calculate = function(self, back, context)
        if context.skipping_booster and G.GAME.round == 0 then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) - 4
            return {
                dollars = -4,
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
