SMODS.Joker {
    key = "tragic",
    atlas = "rnjokers",
    pos = { x = 5, y = 2},
    config = { extra = { active = false } },
    rarity = 3,
    cost = 5,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {}
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and context.consumeable.config.center_key == 'c_wheel_of_fortune' then
            card.ability.extra.active = true
            local eval = function() return card.ability.extra.active == true end
            juice_card_until(card, eval, true)
        end
        
        if context.setting_blind and context.blind.boss and (not G.GAME.blind.disabled) and
        card.ability.extra.active then 
            card_eval_status_text(context.blueprint_card or card, 'extra', nil, nil, nil, {message = localize('ph_boss_disabled')})
            G.GAME.blind:disable()
            card.ability.extra.active = false
        end
    end
}