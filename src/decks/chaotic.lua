SMODS.Back {
    key = "chaos",
    atlas = "rndecks",
    pos = { x = 2, y = 0 },
    config = {},
    unlocked = false,
    unlock_condition = {type = 'win_deck', deck = 'b_rndmod_build'},
    check_for_unlock = function(self, args)
        if args.type == "win_deck" then
            if get_deck_win_stake("b_rndmod_build") > 0 then
                unlock_card(self)
            end
        end
    end,

    apply = function(self)
        G.GAME.starting_params.erratic_suits_and_ranks = true
        local thingsLIst = {
            G.GAME.starting_params.joker_slots or 5,
            G.GAME.starting_params.reroll_cost or 5,
            G.GAME.starting_params.hands or 4,
            G.GAME.starting_params.discard or 3,
            G.GAME.starting_params.consumable_slots or 2,
            G.GAME.starting_params.dollars or 4,
            G.GAME.modifiers.money_per_hand or 1,
            1 or G.GAME.modifiers.money_per_discard,
        }

        local shuffledList = {}
        for i = #thingsLIst, 1, -1 do
            local j = math.random(i)
            thingsLIst[i], thingsLIst[j] = thingsLIst[j], thingsLIst[i]
            table.insert(shuffledList, thingsLIst[i])
        end
        G.GAME.starting_params.joker_slots = shuffledList[1]
        G.GAME.starting_params.reroll_cost = shuffledList[2]
        G.GAME.starting_params.hands = shuffledList[3]
        G.GAME.starting_params.discard = shuffledList[4]
        G.GAME.starting_params.consumable_slots = shuffledList[5]
        G.GAME.starting_params.dollars = shuffledList[6]
        G.GAME.modifiers.money_per_hand = shuffledList[7]
        G.GAME.modifiers.money_per_discard = shuffledList[8]
    end
}