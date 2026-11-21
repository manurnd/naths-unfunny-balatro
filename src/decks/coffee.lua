SMODS.Back {
    key = "coffee",
    atlas = "rndecks",
    pos = { x = 4, y = 0 },
    config = {
       extra = {
           chance = 4
        }
    },
    unlocked = false,
    unlock_condition = {type = 'win_deck', deck = 'b_rndmod_forgotten'},
    check_for_unlock = function(self, args)
        if args.type == "win_deck" then
            if get_deck_win_stake("b_rndmod_forgotten") > 0 then
                unlock_card(self)
            end
        end
    end,

    loc_vars = function(self, info_queue, back)
        return {
            vars = { G.GAME.probabilities.normal, self.config.extra.chance }
        }
    end,

    apply = function(self)
    end,
    
    calculate = function(self, back, context)
         if context.using_consumeable and not context.consumeable.config.center_key == 'c_soul' then
            if pseudorandom('coffeeD'..G.GAME.round_resets.ante) < G.GAME.probabilities.normal/back.effect.config.extra.chance then
            SMODS.add_card({key = context.consumeable.config.center_key})
            end
         end
    end
}
