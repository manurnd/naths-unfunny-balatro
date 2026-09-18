SMODS.Joker {
    key = "checkered",
    atlas = "rnjokers",
    pos = { x = 2, y = 0},
    config = {
        extra = {
            chips = 25,
            mult = 4,
            suit1 = 'Spades',
            suit2 = 'Clubs',
            suit3 = 'Hearts',
            suit4 = 'Diamonds',
        }
    },
    rarity = 1,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.chips,
                card.ability.extra.mult,
                localize(card.ability.extra.suit1, 'suits_plural'),
                localize(card.ability.extra.suit2, 'suits_plural'),
                localize(card.ability.extra.suit3, 'suits_plural'),
                localize(card.ability.extra.suit4, 'suits_plural'),
                colours = {
                    G.C.SUITS[card.ability.extra.suit1],
                    G.C.SUITS[card.ability.extra.suit2],
                    G.C.SUITS[card.ability.extra.suit3],
                    G.C.SUITS[card.ability.extra.suit4]
                }
            }
        }
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            if card.ability.extra.suit1 == 'Spades' then
                card.ability.extra.suit1 = 'Hearts'
                card.ability.extra.suit2 = 'Diamonds'
                card.ability.extra.suit3 = 'Spades'
                card.ability.extra.suit4 = 'Clubs'
            else
                card.ability.extra.suit3 = 'Hearts'
                card.ability.extra.suit4= 'Diamonds'
                card.ability.extra.suit1 = 'Spades'
                card.ability.extra.suit2 = 'Clubs'
            end
        end
        
        if context.individual and context.cardarea == G.play then
            if (context.other_card:is_suit(card.ability.extra.suit1) or
            context.other_card:is_suit(card.ability.extra.suit2)) then
                return {
                    chips = card.ability.extra.chips
                }
            end
            if (context.other_card:is_suit(card.ability.extra.suit3) or
            context.other_card:is_suit(card.ability.extra.suit4)) then
                return {
                    mult = card.ability.extra.mult
                }
            end
        end
    end
}