SMODS.Enhancement {
    key = "pride",
    atlas = "rnenhancers",
    pos = { x = 6, y = 0 },
    config = {    },
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    calculate = function(self, card, context)
    end
}

function Card:is_face(from_boss)
    if self.debuff and not from_boss then return end
    local id = self:get_id()
    local rank = SMODS.Ranks[self.base.value]
    if not id then return end
    if (id > 0 and rank and rank.face) or next(find_joker("Pareidolia")) or (SMODS.has_enhancement(self, 'm_rndmod_pride') and not self.vampired) then
        return true
    end
end