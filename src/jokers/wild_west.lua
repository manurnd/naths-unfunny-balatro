SMODS.Joker {
    key = "wild_west",
    atlas = "rnjokers",
    pos = { x = 8, y = 0},
    config = {
        extra = {
            triggers = 2
        }
    },
    rarity = 3,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_wild
        return {
            vars = {
                card.ability.extra.triggers
            }
        }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.other_card.ability.name == "Wild Card" then
            if context.cardarea == G.play then
                return {
                    extra = {focus = card, message = localize('k_again_ex')},
                    repetitions = card.ability.extra.triggers,
                    card = card
                }
            end
            if context.cardarea == G.hand then
                return {
                    extra = {focus = card, message = localize('k_again_ex')},
                    repetitions = card.ability.extra.triggers,
                    card = card
                }
            end
        end
    end
}