SMODS.Joker {
    key = "chaos_theory",
    atlas = "rnjokers",
    pos = { x = 8, y = 1},
    soul_pos = { x = 2, y = 3 },
    config = {
        extra = {
            tags = 3,
        }
    },
    rarity = 4,
    cost = 20,
    blueprint_compat = false,
    loc_vars = function(self, info_queue, card)
        return {
            vars = {
                card.ability.extra.tags,
            }
        }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.main_eval then
            for i=1, card.ability.extra.tags do
                local tag_pool = get_current_pool('Tag')
                local selected_tag = pseudorandom_element(tag_pool, 'chaos_theory'..i)
                local it = 1
                while selected_tag == 'UNAVAILABLE' do
                    it = it + 1
                    selected_tag = pseudorandom_element(tag_pool, 'chaos_theory'..it)
                end
                add_tag(Tag(selected_tag, false, 'Small'))
            end
            return {
                extra = {focus = card, message = localize('k_plus_tag'), colour = G.C.MULT},
                card = card,
            }
        end
    end
}