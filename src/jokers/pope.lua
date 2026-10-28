SMODS.Joker {
    key = "pope",
    atlas = "rnjokers",
    pos = { x = 1, y = 1 },
    display_size = { w = 71, h = 71 },
    pixel_size = { w = 71, h = 71 },
    config = {
        extra = {
            xMult = 1,
            gain = 0.75
        }
    },
    rarity = 1,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.c_heirophant
        return {
            vars = {
                card.ability.extra.xMult,
                card.ability.extra.gain
            }
        }
    end,
    calculate = function(self, card, context)
        if context.setting_blind and not context.blueprint then
            local hieros_kd = 0
            for _, hiero in ipairs(SMODS.find_card("c_heirophant")) do
                SMODS.destroy_cards(hiero)
                hieros_kd = hieros_kd + 1
                card.ability.extra.xMult = card.ability.extra.xMult + card.ability.extra.gain
            end

            if next(SMODS.find_card("v_tarot_merchant")) then
                for _, priest in ipairs(SMODS.find_card("c_high_priestess")) do
                    SMODS.destroy_cards(priest)
                    hieros_kd = hieros_kd + 1
                    card.ability.extra.xMult = card.ability.extra.xMult + card.ability.extra.gain
                end
            end
            if hieros_kd > 0 then
                return {
                    extra = {focus = card, message = localize('k_upgrade_ex'), colour = G.C.MULT},
                    card = card,
                }
            end
        end
            
        if context.joker_main then
            return {
                xmult = card.ability.extra.xMult
            }
        end
    end
}