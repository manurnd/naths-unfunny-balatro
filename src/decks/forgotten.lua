SMODS.Back {
    key = "forgotten",
    atlas = "rndecks",
    pos = { x = 3, y = 0 },
    config = {},
    unlocked = false,
    unlock_condition = {type = 'win_deck', deck = 'b_rndmod_purple'},
    check_for_unlock = function(self, args)
        if args.type == "win_deck" then
            if get_deck_win_stake("b_rndmod_purple") > 0 then
                unlock_card(self)
            end
        end
    end,

    apply = function(self)
        for k, v in pairs(G.P_CENTERS) do
            if pseudorandom('for_deck') < 1/3 and k ~= "Back" and
            k ~= "Edition" and k ~= "Enhanced" and k ~= "Default" then
                G.GAME.banned_keys[k] = true
            end
        end
    end,
}