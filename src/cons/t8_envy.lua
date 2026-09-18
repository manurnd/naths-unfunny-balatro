SMODS.Consumable {
  key = "envy",
  atlas = "rncons",
  pos = {x = 7, y = 0},
  set = 'Tarot',
  cost = 3,
  config = {},
  loc_vars = function(self, info_queue, card)
    return {}
  end,
  can_use = function(self, card)
    if #G.hand.highlighted == 1 and
    not (SMODS.has_no_suit(G.hand.highlighted[1]) or SMODS.has_no_rank(G.hand.highlighted[1])) then
      return true end
  end,
  use = function(self, card, area, copier)
    delay(0.2)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
          local cardCount = 0
          for _, h in ipairs(G.hand.highlighted) do
            for k, v in ipairs(G.playing_cards) do
              if v:get_id() == h:get_id() and
              v:is_suit(h.base.suit) then
                cardCount = cardCount + 2
              end
            end
          end
          
          ease_dollars(cardCount)
          
          card:juice_up(0.3, 0.3)
          return true
        end
    }))
    delay(0.5)
  end
}