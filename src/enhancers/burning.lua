SMODS.Enhancement {
    key = "burning",
    atlas = "rnenhancers",
    pos = { x = 0, y = 0 },
    config = {
      mult = 0,
        extra = {
            gain = 4,
            destroy = 12
        }
    },
    loc_vars = function(self, info_queue, card)
        if next(SMODS.find_card("j_rndmod_scorching")) then
            return {
                vars = {
                    card.ability.mult,
                    card.ability.extra.gain * 1.5,
                    card.ability.extra.destroy * 2.5
                }
            }
        else
            return {
                vars = {
                    card.ability.mult,
                    card.ability.extra.gain,
                    card.ability.extra.destroy
                }
            }
        end
    end,
    calculate = function(self, card, context)
        if context.initial_scoring_step and context.cardarea == G.play then
            if next(SMODS.find_card("j_rndmod_scorching")) then 
                card.ability.mult = card.ability.mult + (card.ability.extra.gain * 1.5)
            else card.ability.mult = card.ability.mult + (card.ability.extra.gain) end
            return {
                extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.MULT},
                card = card,
            }
        end
      
        if context.final_scoring_step then
            if next(SMODS.find_card("j_rndmod_scorching")) and
            card.ability.mult >= (card.ability.extra.destroy * 2.5) and
            context.cardarea == G.play then
                SMODS.destroy_cards(card)
            elseif not next(SMODS.find_card("j_rndmod_scorching")) and
            card.ability.mult >= card.ability.extra.destroy and
            context.cardarea == G.play then
                SMODS.destroy_cards(card)
            end
        end
    end
}