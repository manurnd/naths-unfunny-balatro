SMODS.Consumable {
  key = "aqua_d",
  atlas = "rncons",
  pos = {x = 8, y = 0},
  set = 'Planet',
  cost = 3,
  config = {
    extra = {hands = 1}
  },
  can_use = function(self, card)
    if G.GAME.last_hand_played then return true
    else return false end
  end,
  loc_vars = function(self, info_queue, card)
    return {
      vars = {
        card.ability.extra.hands,
      },
    }
  end,
   use = function(self, card, area, copier)
     if G.GAME.last_hand_played then
       for i=1, card.ability.extra.hands do
         SMODS.upgrade_poker_hands({hands = G.GAME.last_hand_played, level_up = 1, from = card})
       end
     end
   end
}