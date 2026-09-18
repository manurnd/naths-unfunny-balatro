SMODS.Enhancement {
    key = "sloth",
    atlas = "rnenhancers",
    pos = { x = 2, y = 0 },
    config = {
      bonus = 0,
        extra = {
            chips = 7,
        }
    },
    loc_vars = function(self, info_queue, card)
        if not G.playing_cards then return {
            vars = {
                card.ability.extra.mult,
                0,
            }
        } end
        local WrathInDeck = 0
            for Wraths=1, #G.playing_cards do
                if SMODS.has_enhancement(G.playing_cards[Wraths], 'm_rndmod_sloth') then
                    WrathInDeck = WrathInDeck + 1
                end
            end
        return {
            vars = {
                card.ability.extra.chips,
                WrathInDeck * card.ability.extra.chips
            }
        }
    end,
    calculate = function(self, card, context)
        if context.initial_scoring_step and context.cardarea == G.play then
            local WrathInDeck = 0
            for Wraths=1, #G.playing_cards do
                if SMODS.has_enhancement(G.playing_cards[Wraths], 'm_rndmod_sloth') then
                    WrathInDeck = WrathInDeck + 1
                end
            end
            card.ability.bonus = WrathInDeck * card.ability.extra.chips
        end
    end
}