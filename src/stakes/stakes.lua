SMODS.Stake {
  key = "1negative",
  atlas = "rnstakes",
  pos = { x = 0, y = 0 },
  sticker_atlas = "rnstickers",
  sticker_pos = { x = 0, y = 0 },
  unlocked = false,
  above_stake = "stake_gold",
  applied_stakes = { "gold" },
  prefix_config = {
    above_stake = {mod = false},
    applied_stakes = {mod = false}
  },
  shiny = true,
  colour = HEX("c0c0c0"),
  modifiers = function()
    G.GAME.win_ante = 9
  end
}

SMODS.Stake {
  key = "2cobalt",
  atlas = "rnstakes",
  pos = { x = 1, y = 0 },
  sticker_atlas = "rnstickers",
  sticker_pos = { x = 1, y = 0 },
  unlocked = false,
  above_stake = "stake_rndmod_1negative",
  applied_stakes = { "stake_rndmod_1negative" },
  prefix_config = {
    above_stake = false,
    applied_stakes = false
  },
  shiny = true,
  colour = HEX("0000ff"),
  calculate = function(self, context)
    if context.setting_blind and G.GAME.round then
      G.GAME.current_round.reroll_cost = 7
      G.GAME.round_resets.reroll_cost = 7
    end
  end
}

SMODS.Stake {
  key = "3ancient",
  atlas = "rnstakes",
  pos = { x = 2, y = 0 },
  sticker_atlas = "rnstickers",
  sticker_pos = { x = 2, y = 0 },
  unlocked = false,
  above_stake = "stake_rndmod_2cobalt",
  applied_stakes = { "stake_rndmod_2cobalt" },
  prefix_config = {
    above_stake = false,
    applied_stakes = false
  },
  shiny = false,
  modifiers = function()
    G.GAME.round_resets.blind_ante = 0
    G.GAME.round_resets.ante = 0
    
  end
}

SMODS.Stake {
  key = "4itaborailson",
  atlas = "rnstakes",
  pos = { x = 3, y = 0 },
  sticker_atlas = "rnstickers",
  sticker_pos = { x = 3, y = 0 },
  unlocked = false,
  above_stake = "stake_rndmod_3ancient",
  applied_stakes = { "stake_rndmod_3ancient" },
  prefix_config = {
    above_stake = false,
    applied_stakes = false
  },
  shiny = false,
  modifiers = function()
    for k, v in pairs(G.P_CENTERS) do
      if pseudorandom('itaborailson') < 1/2 and k ~= "Back" and
      k ~= "Edition" and k ~= "Enhanced" and k ~= "Default" then
        G.GAME.banned_keys[k] = true
      end
    end
  end
}
