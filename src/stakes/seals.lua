SMODS.Seal {
  key = "pawn",
  atlas = "rnenhancers",
  pos = { x = 8, y = 0 },
  config = { chips = 30 },
  badge_colour = HEX("130d4b"),
  in_pool = function(self, args)
        return false
  end,
  calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
              return {
                chips = card.ability.seal.chips,
            }
        end
    end,
}

SMODS.Seal {
  key = "knight",
  atlas = "rnenhancers",
  pos = { x = 9, y = 0 },
  config = { chips = 60 },
  badge_colour = HEX("130d4b"),
  in_pool = function(self, args)
        return false
  end,
      calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
              return {
                chips = card.ability.seal.chips,
            }
        end
    end,
}

SMODS.Seal {
  key = "rook",
  atlas = "rnenhancers",
  pos = { x = 0, y = 1 },
  config = { mult = 7 },
  badge_colour = HEX("130d4b"),
  in_pool = function(self, args)
        return false
  end,
      calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
              return {
                mult = card.ability.seal.mult,
            }
        end
    end,
}

SMODS.Seal {
  key = "bishop",
  atlas = "rnenhancers",
  pos = { x = 1, y = 1 },
  config = { mult = 7 },
  badge_colour = HEX("130d4b"),
  in_pool = function(self, args)
        return false
  end,
      calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
              return {
                mult = card.ability.seal.mult,
            }
        end
    end,
}

SMODS.Seal {
  key = "queen",
  atlas = "rnenhancers",
  pos = { x = 2, y = 1 },
  config = { money = 3 },
  badge_colour = HEX("130d4b"),
  in_pool = function(self, args)
        return false
  end,
      calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
              return {
                dollars = card.ability.seal.money,
            }
        end
    end,
}

SMODS.Seal {
  key = "king",
  atlas = "rnenhancers",
  pos = { x = 3, y = 1 },
  config = { x_mult = 1.3 },
  badge_colour = HEX("130d4b"),
  in_pool = function(self, args)
        return false
  end,
      calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
              return {
                x_mult = card.ability.seal.x_mult
            }
        end
    end,
}