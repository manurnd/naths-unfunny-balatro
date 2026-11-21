SMODS.Back {
    key = "cherry",
    atlas = "rndecks",
    pos = { x = 6, y = 0 },
    config = {},
    unlocked = false,
    unlock_condition = {type = 'win_deck', deck = 'b_rndmod_coffee'},
    check_for_unlock = function(self, args)
        if args.type == "win_deck" then
            if get_deck_win_stake("b_rndmod_coffee") > 0 then
                unlock_card(self)
            end
        end
    end,

    apply = function(self)
        G.GAME.starting_params.joker_slots = (G.GAME.starting_params.joker_slots) - 1
        G.GAME.common_mod = (G.GAME.common_mod or 1) * 0.8
        G.GAME.uncommon_mod = (G.GAME.uncommon_mod or 1) * 1.3
		G.GAME.rare_mod = (G.GAME.rare_mod or 1) * 1.3
    end
}