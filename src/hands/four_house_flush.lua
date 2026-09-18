return {
  SMODS.PokerHand {
    key = 'four_house_f',
    chips = 150,
    mult = 15,
    l_chips = 45,
    l_mult = 4,
    example = {
      { 'H_Q', true },
      { 'H_Q', true },
      { 'H_Q', true },
      { 'H_Q', true },
      { 'H_4', true },
      { 'H_4', true },
    },
    visible = false,
    evaluate = function(parts, hand)
        if next(parts._4) and next(parts._2) and next(parts.rndmod_flush) then
            if #parts._4 < 1 or #parts._2 < 2 then return {} end
            return parts._all_pairs
        end
    end,
  },
}