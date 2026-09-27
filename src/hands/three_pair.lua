return {
  SMODS.PokerHand {
    key = 'three_pair',
    chips = 20,
    mult = 4,
    l_chips = 25,
    l_mult = 1,
    example = {
      { 'S_K', true },
      { 'D_K', true },
      { 'C_6', true },
      { 'H_6', true },
      { 'C_7', true },
      { 'D_7', true },
    },
    visible = (G.GAME and G.GAME.starting_params.play_limit >= 6) or false,
    evaluate = function(parts, hand)
        if next(parts._2) then
            if #parts._2 == 3 then return parts._all_pairs
            else return {} end
        end
    end,
  },
}