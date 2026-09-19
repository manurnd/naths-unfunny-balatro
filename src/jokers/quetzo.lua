SMODS.Joker {
    key = "quetzo",
    atlas = "rnjokers",
    pos = { x = 1, y = 3},
    config = {
        extra = {
            mult = 4,
        }
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.mult,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.individual and context.other_card.ability.name == "Stone Card" and context.cardarea == G.play then
            return {
                    mult = card.ability.extra.mult
                }
            end

        if context.before then
            local faces = {}
            for _, v in ipairs(context.scoring_hand) do
                if v:is_face() then
                    table.insert(faces, v)
                    v:flip()
                    v:set_ability(G.P_CENTERS.m_stone)
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            v:juice_up()
                            v:flip()
                            return true
                        end,
                    }))
                end
            end
        end
    end
}