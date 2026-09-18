return {
  SMODS.PokerHand {
    key = 'two_three',
    chips = 45,
    mult = 4,
    l_chips = 30,
    l_mult = 2,
    example = {
      { 'S_T', true },
      { 'D_T', true },
      { 'C_T', true },
      { 'H_3', true },
      { 'C_3', true },
      { 'D_3', true },
    },
    visible = (G.GAME and G.GAME.starting_params.play_limit >= 6),
    evaluate = function(parts, hand)
        if next(parts._3) then
            if #parts._3 == 2 then return parts._all_pairs
            else return {} end
        end
    end,
  },
}