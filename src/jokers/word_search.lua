SMODS.Joker {
    key = "word_search",
    atlas = "rnjokers",
    pos = { x = 1, y = 0},
    config = {
        extra = {
            chips = 20,
            mult = 4,
            rank = 'Ace'
        }
    },
    rarity = 1,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.mult,
                localize(card.ability.extra.rank, 'ranks')
            }
        }
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            local WordRanks = {'Jack', 'Queen', 'King', 'Ace'}
            local EligibleRanks = {}
            for k, v in ipairs(WordRanks) do
                if v ~= card.ability.extra.rank then EligibleRanks[#EligibleRanks+1] = v end
            end
            card.ability.extra.rank = pseudorandom_element(EligibleRanks, pseudoseed('WSearch'))
        end
        
        if context.individual and context.cardarea == G.play then
            if (context.other_card:get_id() == 11 and card.ability.extra.rank == 'Jack') or
                    (context.other_card:get_id() == 12 and card.ability.extra.rank == 'Queen') or
                    (context.other_card:get_id() == 13 and card.ability.extra.rank == 'King') or
                    (context.other_card:get_id() == 14 and card.ability.extra.rank == 'Ace') then
                return {
                    chips = card.ability.extra.chips,
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}