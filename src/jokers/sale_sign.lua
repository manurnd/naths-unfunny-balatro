SMODS.Joker {
    key = "sale_sign",
    atlas = "rnjokers",
    pos = { x = 4, y = 1 },
    config = {
        extra = {
            less = 1,
        }
    },
    rarity = 1,
    cost = 5,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.less,
            }
        }
    end,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.inflation = (G.GAME.inflation or 0)
        G.GAME.inflation = G.GAME.inflation - card.ability.extra.less
		for k, v in pairs(G.I.CARD) do
			if v.set_cost then v:set_cost() end
		end
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.inflation = G.GAME.inflation + card.ability.extra.less
		for k, v in pairs(G.I.CARD) do
			if v.set_cost then v:set_cost() end
		end
    end
}