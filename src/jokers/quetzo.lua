SMODS.Joker {
    key = "quetzo",
    atlas = "rnjokers",
    pos = { x = 1, y = 3},
    config = {},
    rarity = 2,
    cost = 5,
    blueprint_compat = false
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    calculate = function(self, card, context)
        if context.before then
            local faces = {}
            for _, v in ipairs(context.scoring_hand) do
                if v:is_face() then
                    table.insert(faces, v)
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