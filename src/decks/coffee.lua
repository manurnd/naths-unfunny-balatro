SMODS.Back {
    key = "coffee",
    atlas = "rndecks",
    pos = { x = 4, y = 0 },
    config = {
        xmult = 1.0,
        extra = {
            increase = 0.05,
            decrease = 0.5,
            last = ""
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
    apply = function(self)
    end,
    
    calculate = function(self, back, context)
        if context.before then
            if (context.scoring_name == back.effect.config.extra.last) then
                back.effect.config.xmult = math.max(1, back.effect.config.xmult - back.effect.config.extra.decrease)
            end
            if not (context.scoring_name == back.effect.config.extra.last) then
                back.effect.config.xmult = back.effect.config.xmult + back.effect.config.extra.increase
            end
            back.effect.config.extra.last = context.scoring_name
        end


        if context.final_scoring_step then
            return {
                xmult = back.effect.config.xmult
            }
        end
    end
}
