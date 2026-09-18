SMODS.Consumable {
  key = 'aqua_c',
  set = 'Planet',
  atlas = 'rncons',
  pos = {
    x = 1,
    y = 1
  },
  config = {
    hand_type = 'rndmod_four_house',
    softlock = true
  },
  cost = 3,
  loc_vars = function(self, info_queue, card)
    return {
      vars =
      {
        G.GAME.hands[card.ability.hand_type].level,
        localize(card.ability.hand_type, "poker_hands"),
        G.GAME.hands[card.ability.hand_type].l_mult,
        G.GAME.hands[card.ability.hand_type].l_chips,
        colours = {
          (G.GAME.hands[card.ability.hand_type].level == 1 and G.C.UI.TEXT_DARK or G.C.HAND_LEVELS[math.min(7, G.GAME.hands[card.ability.hand_type].level)])
        }
      },
    }
  end,
  in_pool = function(self, args)
    if (G.GAME and G.GAME.starting_params.play_limit >= 6) then
      return true
    end
    return false
  end,
}