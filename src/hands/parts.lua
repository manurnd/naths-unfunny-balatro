SMODS.PokerHandPart {
    key = 'flush',
    func = function(hand)
        local ret = {}
        local four_fingers = next(find_joker('Four Fingers'))
        local suits = {
            "Spades",
            "Hearts",
            "Clubs",
            "Diamonds"
        }
        if #hand > 6 or #hand < (6 - (four_fingers and 2 or 0)) then return ret else
            for j = 1, #suits do
                local t = {}
                local suit = suits[j]
                local flush_count = 0
                for i=1, #hand do
                    if hand[i]:is_suit(suit, nil, true) then flush_count = flush_count + 1;  t[#t+1] = hand[i] end
                end
                if flush_count >= (6 - (four_fingers and 2 or 0)) then
                    table.insert(ret, t)
                    return ret
                end
            end
            return {}
        end
    end
}

SMODS.PokerHandPart {
    key = 'six',
    func = function(hand)
        local vals = {{},{},{},{},{},{},{},{},{},{},{},{},{},{}}
        for i=#hand, 1, -1 do
            local curr = {}
            table.insert(curr, hand[i])
            for j=1, #hand do
                if hand[i]:get_id() == hand[j]:get_id() and i ~= j then
                    table.insert(curr, hand[j])
                end
            end
            if #curr == 6 then
                vals[curr[1]:get_id()] = curr
            end
        end
        local ret = {}
        for i=#vals, 1, -1 do
            if next(vals[i]) then table.insert(ret, vals[i]) end
        end
        return ret
    end
}