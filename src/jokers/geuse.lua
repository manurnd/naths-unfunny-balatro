SMODS.Joker {
    key = "geuse",
    atlas = "rnjokers",
    pos = { x = 0, y = 2},
    config = {},
    rarity = 2,
    cost = 5,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.ability.set == 'Planet'  then
            local UnlockedHands = {}
            for k, v in pairs(G.GAME.hands) do
                if v.visible then
                    UnlockedHands[#UnlockedHands+1] = k
                end
            end
            local Chosen = pseudorandom_element(UnlockedHands, pseudoseed('geuse'..G.GAME.round_resets.ante))
            SMODS.upgrade_poker_hands({hands = Chosen, level_up = 1, from = card})
            if next(SMODS.find_card("v_telescope")) or next(SMODS.find_card("j_rndmod_voucher")) then
                local Chosen = pseudorandom_element(UnlockedHands, pseudoseed('geuse'..G.GAME.round_resets.ante))
                SMODS.upgrade_poker_hands({hands = Chosen, level_up = 1, from = card})
            end
        end
    end
}