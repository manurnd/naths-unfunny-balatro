SMODS.Enhancement {
    key = "wrath",
    atlas = "rnenhancers",
    pos = { x = 1, y = 0 },
    config = {
      mult = 0,
        extra = {
            mult = 3,
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
                card.ability.extra.mult,
                WrathInDeck * card.ability.extra.mult
            }
        }
    end,
    calculate = function(self, card, context)
        if context.initial_scoring_step and context.cardarea == G.play then
            local WrathInDeck = 0
            for Wraths=1, #G.playing_cards do
                if SMODS.has_enhancement(G.playing_cards[Wraths], 'm_rndmod_wrath') then
                    WrathInDeck = WrathInDeck + 1
                end
            end
            card.ability.mult = WrathInDeck * card.ability.extra.mult
        end
    end
}