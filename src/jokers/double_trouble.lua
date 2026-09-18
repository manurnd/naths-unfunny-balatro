SMODS.Joker {
    key = "doublet",
    atlas = "rnjokers",
    pos = { x = 2, y = 2},
    config = {
        extra = {
            reps = 1,
            cards = 4,
        }
    },
    rarity = 2,
    cost = 7,
    eternal_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.reps,
                card.ability.extra.cards,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and
        context.scoring_name == 'Pair' and not context.blueprint and card.ability.extra.cards > 0 then
            if context.other_card.ability.perma_repetitions == 0 then
                context.other_card.ability.perma_repetitions = card.ability.extra.reps
                card.ability.extra.cards = card.ability.extra.cards - 1
                return {
                    extra = {focus = context.other_card, message = localize('k_upgrade_ex'), colour = G.C.ATTENTION},
                    card = card,
                }
            end
        end
        
        if context.joker_main and card.ability.extra.cards <= 0 then
            SMODS.destroy_cards(card)
        end
        
    end
}