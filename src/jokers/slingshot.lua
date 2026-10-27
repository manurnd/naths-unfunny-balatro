SMODS.Joker {
    key = "slingshot",
    atlas = "rnjokers",
    pos = { x = 8, y = 2 },
    config = {},
    rarity = 3,
    cost = 12,
    blueprint_compat = false,
    eternal_compat = false,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    add_to_deck = function(self, card, from_debuff)
        if from_debuff then return end
        local seas = {"rndmod_pawn","rndmod_pawn","rndmod_pawn","rndmod_pawn",
            "rndmod_pawn","rndmod_pawn","rndmod_pawn","rndmod_pawn",
            "rndmod_knight", "rndmod_rook", "rndmod_bishop",
            "rndmod_knight", "rndmod_rook", "rndmod_bishop",
            "rndmod_queen", "rndmod_king"}
        for _, v in ipairs(seas) do
          G.E_MANAGER:add_event(Event({
              func = function() 
                  local _card = create_playing_card({
                      front = pseudorandom_element(G.P_CARDS, pseudoseed('nath')), 
                      center = G.P_CENTERS.c_base}, G.deck, nil, nil, {G.C.SECONDARY_SET.Enhanced})
                  _card:set_seal(v, true)
                  G.GAME.blind:debuff_card(_card)
                  return true
              end}))
            playing_card_joker_effects({true})
        end    
    end,
    calculate = function(self, card, context)
        if context.end_of_round then
            local isAnySeal = false
            for pawns=1, #G.playing_cards do
                if G.playing_cards[pawns].seal == "rndmod_pawn" then isAnySeal = true end
            end
            for pawns=1, #G.playing_cards do
                if G.playing_cards[pawns].seal == "rndmod_knight" then isAnySeal = true end
            end
            for pawns=1, #G.playing_cards do
                if G.playing_cards[pawns].seal == "rndmod_rook" then isAnySeal = true end
            end
            for pawns=1, #G.playing_cards do
                if G.playing_cards[pawns].seal == "rndmod_bishop" then isAnySeal = true end
            end
            for pawns=1, #G.playing_cards do
                if G.playing_cards[pawns].seal == "rndmod_queen" then isAnySeal = true end
            end
            for pawns=1, #G.playing_cards do
                if G.playing_cards[pawns].seal == "rndmod_king" then isAnySeal = true end
            end
            if not isAnySeal then
                SMODS.add_card({key = "c_soul"})
                SMODS.destroy_cards(card)
            end
            --local _card = create_card('Spectral', G.consumables, nil, nil, nil, nil, 'c_soul', 'deck')
            --_card:add_to_deck()
            --G.consumeables:emplace(_card)
        end
    end
}