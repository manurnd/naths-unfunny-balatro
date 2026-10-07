SMODS.Enhancement {
    key = "greed",
    atlas = "rnenhancers",
    pos = { x = 4, y = 0 },
    config = {
      p_dollars = 0,
        extra = {
            gain = 1,
            destroy = 5
        }
    },
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.p_dollars,
                card.ability.extra.gain,
                card.ability.p_dollars * G.GAME.probabilities.normal,
                card.ability.extra.destroy,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.initial_scoring_step and context.cardarea == G.play then
            card.ability.p_dollars = card.ability.p_dollars + card.ability.extra.gain
            return {
                extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.MONEY},
                card = card,
            }
        end
      
        if context.final_scoring_step and context.cardarea == G.play then
            if pseudorandom('greed'..G.GAME.round_resets.ante) < (card.ability.p_dollars * G.GAME.probabilities.normal)/card.ability.extra.destroy then
                  SMODS.destroy_cards(card)
            end
        end
    end
}