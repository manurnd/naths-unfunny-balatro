SMODS.Joker {
    key = "burning_memory",
    atlas = "rnjokers",
    pos = { x = 0, y = 1 },
    config = {
        card_limit = 1
    },
    rarity = 1,
    cost = 5,
    blueprint_compat = false,
    in_pool = function(self, args)
        return true, { allow_duplicates = true }
    end,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.card_limit,
            }
        }
    end,
}