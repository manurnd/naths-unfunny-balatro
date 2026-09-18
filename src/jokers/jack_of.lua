SMODS.Joker {
    key = "jack_all",
    atlas = "rnjokers",
    pos = { x = 6, y = 0 },
    config = {
        extra = {
            tag_chance = 4
        }
    },
    rarity = 2,
    cost = 6,
    loc_vars = function(self, info_queue, card)
        return {
            vars = { G.GAME.probabilities.normal, card.ability.extra.tag_chance }
        }
    end,
    calculate = function(self, card, context)
        if not (context.blueprint_card or self).getting_sliced and
        context.individual and context.cardarea == G.play and context.other_card:get_id() == 11 then
            if pseudorandom('jackofall'..G.GAME.round_resets.ante) < G.GAME.probabilities.normal/card.ability.extra.tag_chance then
                local tag_pool = get_current_pool('Tag')
                local selected_tag = pseudorandom_element(tag_pool, 'jackofall')
                local it = 1
                while selected_tag == 'UNAVAILABLE' do
                    it = it + 1
                    selected_tag = pseudorandom_element(tag_pool, 'jackofall'..it)
                end
                add_tag(Tag(selected_tag, false, 'Small'))
                return {
                    extra = {focus = card, message = localize('k_plus_tag'), colour = G.C.MULT},
                    card = card,
                }
            end
        end
    end
}