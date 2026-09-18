return {
  SMODS.PokerHand {
    key = 'six_oak',
    chips = 155,
    mult = 15,
    l_chips = 45,
    l_mult = 4,
    example = {
      { 'S_A', true },
      { 'D_A', true },
      { 'C_A', true },
      { 'H_A', true },
      { 'C_A', true },
      { 'D_A', true },
    },
    visible = false,
    evaluate = function(parts, hand)
        if next(parts.rndmod_six) then
          return parts.rndmod_six
        else return {} end
    end,
  },
}