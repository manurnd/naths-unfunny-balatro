SMODS.Back {
    key = "purple",
    atlas = "rndecks",
    pos = { x = 0, y = 0 },
    config = { hand_size = 1 },
    unlocked = false,
    unlock_condition = {type = 'win_deck', deck = 'b_anaglyph'},
    check_for_unlock = function(self, args)
        if args.type == "win_deck" then
            if get_deck_win_stake("b_painted") > 0 then
                unlock_card(self)
            end
        end
    end,

    apply = function(self)
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0.7,
            func = function()
                SMODS.change_play_limit(1)
                SMODS.change_discard_limit(1)
                return true
                end
        }))
    end,
}