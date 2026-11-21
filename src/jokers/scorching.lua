SMODS.Joker {
    key = "scorching",
    atlas = "rnjokers",
    pos = { x = 6, y = 1 },
    config = {
        extra = {
            new_grow = 6,
            new_burn = 30
        }
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_rndmod_burning
        return {
            vars = {
                card.ability.extra.new_grow,
                card.ability.extra.new_burn
            }
        }
    end
}