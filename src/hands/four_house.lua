return {
  SMODS.PokerHand {
    key = 'four_house',
    chips = 80,
    mult = 7,
    l_chips = 35,
    l_mult = 3,
    example = {
      { 'S_Q', true },
      { 'D_Q', true },
      { 'C_Q', true },
      { 'H_Q', true },
      { 'C_4', true },
      { 'D_4', true },
    },
    visible = (G.GAME and G.GAME.starting_params.play_limit >= 6) or false,
    evaluate = function(parts, hand)
        if next(parts._4) and next(parts._2) and not next(parts._flush) then
            if #parts._4 < 1 or #parts._2 < 2 then return {} end
            return parts._all_pairs
        end
    end,
  },
}