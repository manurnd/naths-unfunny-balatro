SMODS.Consumable {
  key = "angel",
  atlas = "rncons",
  pos = {x = 5, y = 0},
  set = 'Tarot',
  cost = 3,
  config = {
    select = 1,
    extra = {
      enha = 'm_rndmod_pride'
    }
  },
  loc_vars = function(self, info_queue, card)
    info_queue[#info_queue+1] = G.P_CENTERS[card.ability.extra.enha]
    return {
      vars = {
        card.ability.select
      }
    }
  end,
  can_use = function(self, card)
    if #G.hand.highlighted > 0 and #G.hand.highlighted <= card.ability.select then
      return true
    else return false end
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
    
    for k, v in ipairs(G.hand.highlighted) do
      local percent = 1.15 - (k - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.1,
          func = function()
              v:flip()
              play_sound('card1', percent)
              v:juice_up(0.3, 0.3)
              return true
          end
      }))
    end
    delay(0.2)
    for _, v in ipairs(G.hand.highlighted) do
      G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.1,
          func = function()
              v:set_ability(card.ability.extra.enha)
              return true
          end
      }))
    end
    for k, v in ipairs(G.hand.highlighted) do
        local percent = 0.85 + (k - 0.999) / (#G.hand.highlighted - 0.998) * 0.3
        G.E_MANAGER:add_event(Event({
          trigger = 'after',
          delay = 0.15,
          func = function()
            v:flip()
            play_sound('tarot2', percent, 0.6)
            v:juice_up(0.3, 0.3)
            return true
          end
        }))
      end
      G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.2,
        func = function()
          G.hand:unhighlight_all()
          return true
        end
      }))
      delay(0.5)
    end
}