return {
  SMODS.PokerHand {
    key = 'six_f',
    chips = 180,
    mult = 17,
    l_chips = 50,
    l_mult = 4,
    example = {
      { 'S_J', true },
      { 'S_J', true },
      { 'S_J', true },
      { 'S_J', true },
      { 'S_J', true },
      { 'S_J', true },
    },
    visible = false,
    evaluate = function(parts, hand)
        if next(parts.rndmod_six) and next(parts.rndmod_flush) then
          return parts.rndmod_six
        else return {} end
    end,
  },
}