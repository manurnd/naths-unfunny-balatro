SMODS.Consumable {
  key = "glut",
  atlas = "rncons",
  pos = {x = 6, y = 0},
  set = 'Tarot',
  cost = 3,
  config = {},
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue+1] = G.P_CENTERS.e_negative_consumable
    return {}
  end,
  can_use = function(self, card)
    return true
  end,
  use = function(self, card, area, copier)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
          play_sound('tarot1')
          card:juice_up(0.3, 0.5)
          return true
        end
    }))
    delay(0.2)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
          if pseudorandom('glut'..G.GAME.round_resets.ante) < 1/2 then
              SMODS.add_card({set = 'Tarot', edition = 'e_negative'})
          else SMODS.add_card({set = 'Planet', edition = 'e_negative'}) end
          play_sound('tarot2')
          card:juice_up(0.3, 0.3)
          return true
        end
    }))
    delay(0.5)
  end
}