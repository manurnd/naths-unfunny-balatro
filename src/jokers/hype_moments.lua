SMODS.Joker {
    key = "hype_moments",
    atlas = "rnjokers",
    pos = { x = 2, y = 1},
    config = {},
    rarity = 2,
    cost = 7,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_aura
        return {}
    end,
    calculate = function(self, card, context)
        if context.joker_main and (context.scoring_name == 'Five of a Kind' or
        context.scoring_name == 'Flush House' or
        context.scoring_name == 'Flush Five' or
        context.scoring_name == 'rndmod_four_house_f'or
        context.scoring_name == 'rndmod_six_f' or
        context.scoring_name == 'rndmod_six_oak') and
        #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            SMODS.add_card({key = "c_aura"})
                return {
                    extra = {focus = card, message = localize('k_peak'), colour = G.C.PURPLE},
                    card = card,
                }
        end
    end
}