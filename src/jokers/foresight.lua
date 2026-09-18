SMODS.Joker {
    key = "foresight",
    atlas = "rnjokers",
    pos = { x = 9, y = 2},
    config = {
        extra = {
            pursh = false
        }
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                ''..(card.ability.extra.pursh and G.deck and G.deck.cards[1] and localize(G.deck.cards[#G.deck.cards].base.value, 'ranks') or '?')..', '..(card.ability.extra.pursh and G.deck and G.deck.cards[1] and localize(G.deck.cards[#G.deck.cards].base.suit, 'suits_plural') or '?'),
                ''..(card.ability.extra.pursh and G.deck and G.deck.cards[2] and localize(G.deck.cards[#G.deck.cards-1].base.value, 'ranks') or '?')..', '..(card.ability.extra.pursh and G.deck and G.deck.cards[2] and localize(G.deck.cards[#G.deck.cards-1].base.suit, 'suits_plural') or '?'),
                ''..(card.ability.extra.pursh and G.deck and G.deck.cards[3] and localize(G.deck.cards[#G.deck.cards-2].base.value, 'ranks') or '?')..', '..(card.ability.extra.pursh and G.deck and G.deck.cards[3] and localize(G.deck.cards[#G.deck.cards-2].base.suit, 'suits_plural') or '?'),
                ''..(card.ability.extra.pursh and G.deck and G.deck.cards[4] and localize(G.deck.cards[#G.deck.cards-3].base.value, 'ranks') or '?')..', '..(card.ability.extra.pursh and G.deck and G.deck.cards[4] and localize(G.deck.cards[#G.deck.cards-3].base.suit, 'suits_plural') or '?'),
                ''..(card.ability.extra.pursh and G.deck and G.deck.cards[5] and localize(G.deck.cards[#G.deck.cards-4].base.value, 'ranks') or '?')..', '..(card.ability.extra.pursh and G.deck and G.deck.cards[5] and localize(G.deck.cards[#G.deck.cards-4].base.suit, 'suits_plural') or '?'),
            }
        }
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.pursh = true
    end,
    remove_from_deck = function(self, card, from_debuff)
        card.ability.extra.pursh = false
    end
}