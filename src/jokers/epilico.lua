SMODS.Joker {
    key = "epilico",
    atlas = "rnjokers",
    pos = { x = 0, y = 3},
    config = {    },
    rarity = 3,
    cost = 7,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    calculate = function(self, card, context)
        if context.selling_self then
            for k, v in ipairs(G.playing_cards) do
                if pseudorandom('ep_destroy') > 0.6 then
                    SMODS.destroy_cards(v)
                end
            end
            for k, v in ipairs(G.playing_cards) do
                if pseudorandom('ep_burn') > 0.7 then
                    v:set_ability("m_rndmod_burning")
                end
            end
        end
    end
}