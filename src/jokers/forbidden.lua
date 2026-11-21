SMODS.Joker {
    key = "forbidden",
    atlas = "rnjokers",
    pos = { x = 0, y = 4},
    config = {
        extra = {
            multi = 4
        }
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.multi,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            for k, v in ipairs(context.scoring_hand) do
                 v.debuff = true
            end
            return {xmult = card.ability.extra.multi}
        end

        if context.before and not context.blueprint then
            for k, v in ipairs(context.scoring_hand) do
                 v.debuff = true
            end
        end

    end
}