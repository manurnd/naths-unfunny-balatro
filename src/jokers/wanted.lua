SMODS.Joker {
    key = "wanted",
    atlas = "rnjokers",
    pos = { x = 9, y = 1 },
    config = {
        extra = {
            rank = 'Ace',
            suit = 'Spades',
            money = 18
        }
    },
    rarity = 2,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                localize(card.ability.extra.rank, 'ranks'),
                localize(card.ability.extra.suit, 'suits_plural'),
                card.ability.extra.money,
                colours = {
                    G.C.SUITS[card.ability.extra.suit]
                }
            }
        }
    end,
    add_to_deck = function(self, card, from_debuff)
        card.ability.extra.rank = 'Ace'
        card.ability.extra.suit = 'Spades'
        local valid_cards = {}
        for k, v in ipairs(G.playing_cards) do
            if not (SMODS.has_no_suit(v) or SMODS.has_no_rank(v)) then
                valid_cards[#valid_cards+1] = v
            end
        end
        if valid_cards[1] then 
            local chosen_card = pseudorandom_element(valid_cards, pseudoseed('wanted'..G.GAME.round_resets.ante))
            card.ability.extra.rank = chosen_card.base.value
            card.ability.extra.suit = chosen_card.base.suit
        end
    end,
    calculate = function(self, card, context)
        if context.remove_playing_cards then
            for _, v in ipairs(context.removed) do
                if v.base.value == card.ability.extra.rank and
                v.base.suit == card.ability.extra.suit then
                    G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.money
                    return {
                        dollars = card.ability.extra.money,
                        func = function()
                            G.E_MANAGER:add_event(Event({
                                func = function()
                                    G.GAME.dollar_buffer = 0
                                    return true
                                end
                            }))
                        end
                    }
                end
            end
        end
        
        if context.end_of_round then
            card.ability.extra.rank = 'Ace'
            card.ability.extra.suit = 'Spades'
            local valid_cards = {}
            for k, v in ipairs(G.playing_cards) do
                if not (SMODS.has_no_suit(v) or SMODS.has_no_rank(v)) then
                    valid_cards[#valid_cards+1] = v
                end
            end
            if valid_cards[1] then 
                local chosen_card = pseudorandom_element(valid_cards, pseudoseed('wanted'..G.GAME.round_resets.ante))
                card.ability.extra.rank = chosen_card.base.value
                card.ability.extra.suit = chosen_card.base.suit
            end
        end
    end
}