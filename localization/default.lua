return {
    descriptions = {
        Back = {
            b_rndmod_purple = {
                name = "Purple Deck",
                text = {
                    "Can select, play and",
                    "discard {C:attention}1{} extra card",
                    "{C:attention}+1{} hand size"
                },
          				},
            b_rndmod_build = {
                name = "Deck Builder",
                text = {
                    "Start with {C:attention}32{} random cards",
                    "Open {C:attention}10 Mega Standard Packs",
                    "(Skipping any costs {C:money}$4{})",
                    "No Jokers appear in shop",
                    "Playing Cards can appear in shop"
                },
            },
            b_rndmod_forgotten = {
                name = "Forgotten Deck",
                text = {
                    "{C:attention}30%{} of all items are",
                    "banned from the shop",
                },
            },
            b_rndmod_coffee = {
                name = "Coffee Deck",
                text = {
                    "Gains {X:mult,C:white} X0.05 {} Mult",
                    "when you play a hand different",
                    "from the last played hand,",
                    "else, loses {X:mult,C:white} X0.5 {} Mult",
                },
            },
        },
        Joker = {
            j_rndmod_modern_hermit = {
                name = "Modern Hermit",
                text = {
                    "{C:green}#1# in #2#{} chance to create",
                    "{C:tarot}The Hermit{} when opening",
                    "any {C:attention}Booster Pack{}",
                    "{C:inactive}(Must have room)",
                }
            },
            j_rndmod_word_search = {
                name="Word Search",
                text={
                    "Each scoring {C:attention}#3#{} gives",
                    "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
                    "{s:0.8}rank changes at end of round",
                },
            },
            j_rndmod_checkered = {
                name = "Checkered Joker",
                text = {
                    "{V:1}#3#{} and {V:2}#4#{}",
                    "give {C:chips}+#1#{} Chips",
                    "{V:3}#5#{} and {V:4}#6#{}",
                    "give {C:mult}+#2#{} Mult",
                    "{s:0.8}swap suits at end of round",
                },
            },
            j_rndmod_pearto = {
                name = "Pearto",
                text = {
                    "{C:chips}+#1#{} Chips and {C:mult}+#2#{} Mult",
                    "for every level of",
                    "{C:attention}Pair{} you have",
                    "{C:inactive}(Currently {}{C:chips}+#3#{} {C:inactive}Chips",
                    "{C:inactive}and {}{C:mult}+#4#{} {C:inactive}Mult)",
                },
            },
            j_rndmod_it_starts_with = {
                name = "It Starts With One",
                text = {
                    "{C:chips}1{} Chip,",
                    "I don't know why.",
                    "Increases by {C:chips}1{} chip",
                    "per scored card",
                    "{C:inactive}(Keep {C:chips}+#1#{C:inactive} in mind)",
                }
            },
            j_rndmod_cashback={
                name="Cashback",
                text={
                    "Earn {C:money}$#1#{} when skipping",
                    "a {C:attention}Booster Pack{}",
                }
            },
            j_rndmod_jack_all={
                name="Jack Of All Trades",
                text={
                    "{C:green}#1# in #2#{} chance for each",
                    "played {C:attention}Jack{} to create a",
                    "{C:mult}Tag{} when scored",
                },
            },
            j_rndmod_spam={
                name="Spam",
                text={
                    "This Joker gains {C:chips}+#2#",
                    "Chips if played hand",
                    "is a {C:attention}High Card",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                },
            },
            j_rndmod_wild_west={ 
                name="Wild West",
                text={
                    "Scored or held in hand",
                    "{C:attention}Wild Cards{} trigger",
                    "{C:attention}#1#{} additional times",
                },
            },
            j_rndmod_fake_png={
                name="Fake PNG",
                text={
                    "{C:chips}+#1#{} Chips per unscored",
                    "card in played hand",
                },
            },
            j_rndmod_burning_memory={
                name="Burning Memory",
                text={
                    {"{C:dark_edition}+#1#{} Joker Slot"},
                    {"{C:dark_edition}???"}
                },
            },
            j_rndmod_pope={
                name="The Pope Is Pop",
                text={
                    "If you have {C:tarot}The Hierophant",
                    "in your consumables when",
                    "{C:attention}Blind{} is selected, destroy",
                    "it and gain {X:mult,C:white} X#2# {} Mult",
                    "{C:inactive}(Currently {X:mult,C:white} X#1# {C:inactive} Mult)",
                },
            },
            j_rndmod_hype_moments={
                name="Hype Moments",
                text={
                    "Creates an {C:spectral}Aura",
                    "if played hand is a",
                    "{C:attention}secret hand{}",
                },
            },
            j_rndmod_pulling_force={
                name="Pulling Force",
                text={
                    "Draw #1# extra cards",
                    "on first draw of round"
                },
            },
            j_rndmod_sale_sign={
                name="Sale Sign",
                text={
                    "Items in shop",
                    "cost {C:money}$#1#{} less"
                },
            },
            j_rndmod_dream_catcher={
                name="Dream Catcher",
                text={
                    "{X:mult,C:white} X#1# {} Mult for every",
                    "card with a {V:1}Light{}",
                    "suit scored"
                },
            },
            j_rndmod_nightmare={
                name="Nightmare Parade",
                text={
                    "{X:mult,C:white} X#1# {} Mult for every",
                    "card with a {V:1}Dark{}",
                    "suit scored"
                },
            },
            j_rndmod_scorching={
                name="Scorching Waves",
                text={
                    "{C:attention}Burning Cards{} now gain",
                    "{C:mult}+#1#{} Mult and are",
                    "Destroyed at {C:mult}#2#{} Mult"
                },
            },
            j_rndmod_fractal={
                name="Fractal Joker",
                text={
                    "Gains {X:mult,C:white} X#1# {} Mult after",
                    "{C:attention}#3#{} cards scored",
                    "Double gain and requirement",
                    "everytime this upgrades",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult, {C:attention}#4#/#3#{})",
                },
            },
            j_rndmod_wanted={
                name="Wanted Joker",
                text={
                    "Earn {C:money}$#3#{} when a",
                    "{C:attention}#1#{} of {V:1}#2#{}",
                    "is destroyed",
                    "{s:0.8}Card changes at end of round",
                },
            },
            j_rndmod_geuse={
                name="Geuse",
                text={
                    "Level up a random hand",
                    "when a {C:planet}Planet{}",
                    "card is used",
                },
            },
            j_rndmod_grandiose={
                name="Grandiose",
                text={
                    {
                        "At the end of round,",
                        "earn {C:money}${} equal to",
                        "the {C:money}sell value{} of the",
                        "last {C:attention}Joker{} sold",
                        "{C:inactive}(Currently {C:money}$#1#{C:inactive})"
                    },{
                        "Selling jokers gives no {C:money}${}",
                    }
                }
            },
            j_rndmod_doublet={
                name="Double Trouble",
                text={
                    "If played hand is a {C:attention}Pair{}",
                    "adds {C:attention}#1#{} permanent {C:attention}retrigger{}",
                    "to all scoring cards that",
                    "dont have any",
                    "Destroyed after {C:attention}#2#{} cards",
                }
            },
            j_rndmod_bricks={
                name="Brick By Brick",
                text={
                    "Draw {C:attention}#1#{} extra cards",
                    "if played hand contains",
                    "a {C:attention}Full House{}",
                },
            },
            j_rndmod_tragic={
                name="A Tragic Case in the Theater of Chance",
                text={
                    "Disables {C:attention}Boss Blind{} if a",
                    "{C:tarot}Wheel of Fortune{} has been",
                    "used before selecting it"
                },
            },
            j_rndmod_amavera={
                name="Amavera Armstrong",
                text={
                    {
                    "{X:mult,C:white} X#1# {} Mult whenever",
                    "a {C:attention}Lucky Card{} triggers",
                },{
                    "Triples all {C:attention}listed",
                    "{C:green}probabilities",
                }
                }
            },
            j_rndmod_solitaire={
                name="Solitaire",
                text={
                    "This joker gains",
                    "{C:money}$#1#{} dollars",
                    "of {C:attention}sell value{} if",
                    "played hand contains",
                    "a {C:attention}Straight",
                },
            },
            j_rndmod_slingshot={
                name="Nataliel's Slingshot",
                text={
                    {
                    "When purchased, adds 16 cards",
                    "with {C:attention}Chess Pieces{} assigned",
                    "to them to your deck"
                },{
                    "If your deck has no",
                    "{C:attention}Chess Pieces{} at the",
                    "{C:attention}end of round{}, destroy",
                    "this to create {C:attention}The Soul"
                }
                }
            },
            j_rndmod_foresight={
                name="Foresight",
                text={
                    "The next 5 cards",
                    "in deck are:",
                    "{C:purple}#1#",
                    "{C:purple}#2#",
                    "{C:purple}#3#",
                    "{C:purple}#4#",
                    "{C:purple}#5#",
                },
            },
            j_rndmod_epilico={
                name="Epilico",
                text={
                    "Sell this joker to",
                    "{C:attention}burn{} a part of",
                    "your deck",
                },
            },
            j_rndmod_quetzo={
                name="Quetzonaga",
                text={
                        {
                        "Scoring {C:attention}Face Cards{}",
                        "become {C:attention}Stone Cards{}",
                    },{
                        "Scoring {C:attention}Stone Cards{}",
                        "give {C:mult}+#1#{} Mult",
                    }
                }
            },
            j_rndmod_chaos_theory={
                name="Chaos Theory",
                text={
                    "Creates {C:attention}#1#{} random",
                    "{C:attention}Tags{} at the end of round",
                },
            },
            j_rndmod_ruby={
                name="Ruby",
                text={
                    "{C:green}#1# in #2#{} chance to",
                    "gain a {C:mult}Discard{} when",
                    "using a {C:mult}Discard{}",
                },
            },
            j_rndmod_bismuth={
                name="Bismuth",
                text={
                    "Gains {C:money}$#1#{} of {C:attention}sell value{}",
                    "when a {C:attention}Wild Card{} is scored",
                },
            },
            j_rndmod_paraiba={
                name="Paraiba Tourmaline",
                text={
                    "{C:chips}+#1#{} Chips for",
                    "every hand played",
                    "this round",
                    "Resets at the end of round",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)",
                },
            },
            j_rndmod_crimson={
                name="Crimson King",
                text={
                    "Gains {X:mult,C:white} X#2# {} Mult when",
                    "a {C:attention}King{} is scored",
                    "Resets when activated",
                    "{C:inactive}(Currently {X:mult,C:white} X#2# {C:inactive} Mult)",
                },
            },
        },
        Tarot = {
            c_rndmod_eclipse={
                name="The Eclipse",
                text={
                    "Converts up to {C:attention}#1#{}",
                    "selected cards into",
                    "{C:attention}Burning Cards"
                },
            },
            c_rndmod_cage={
                name="The Cage",
                text={
                    "Converts up to {C:attention}#1#{}",
                    "selected cards into",
                    "{C:attention}Greedy Cards"
                },
            },
            c_rndmod_glut={
                name="The Gluttony",
                text={
                    "Creates a random",
                    "{C:dark_edition}Negative {C:tarot}Tarot{}",
                    "or {C:planet}Planet{} card",
                },
            },
            c_rndmod_envy={
                name="The Serpent",
                text={
                    "{C:money}+$2{} per card with same",
                    "{C:attention}rank{} and {C:attention}suit{}",
                    "as the selected card",
                    "in full deck",
                    "{C:inactive}(max. $60)"
                },
            },
            c_rndmod_tyrant={
                name="The Tyrant",
                text={
                    "Converts up to {C:attention}#1#{}",
                    "selected cards into",
                    "{C:attention}Wrathful Cards"
                },
            },
            c_rndmod_night={
                name="The Night",
                text={
                    "Converts up to {C:attention}#1#{}",
                    "selected cards into",
                    "{C:attention}Slothful Cards"
                },
            },
        },
        Planet = {
            c_rndmod_aqua_b = {
                name = 'Orcus',
                text = {
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){} Level up",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Mult and",
                    "{C:chips}+#4#{} chips",
                },
            },
            c_rndmod_aqua_c = {
                name = 'Libita',
                text = {
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){} Level up",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Mult and",
                    "{C:chips}+#4#{} chips",
                },
            },
            c_rndmod_aqua_d = {
                name="Thoosa",
                text={
                    "Levels up the",
                    "last played",
                    "poker hand",
                    "by {C:attention}#1#{} level",
                },
            },
            c_rndmod_aqua_e = {
                name = 'Erebus',
                text = {
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){} Level up",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Mult and",
                    "{C:chips}+#4#{} chips",
                },
            },
            c_rndmod_aqua_f = {
                name = 'Anteros',
                text = {
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){} Level up",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Mult and",
                    "{C:chips}+#4#{} chips",
                },
            },
            c_rndmod_aqua_gh = {
                name = 'Jano & Juno',
                text = {
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){} Level up",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Mult and",
                    "{C:chips}+#4#{} chips",
                },
            },
            c_rndmod_aqua_i = {
                name = 'Polimer',
                text = {
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){} Level up",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Mult and",
                    "{C:chips}+#4#{} chips",
                },
            },
        },
        Enhanced = {
            m_rndmod_burning={
                name="Burning Card",
                text={
                    "{C:mult}+#1#{} Mult",
                    "Gains {C:mult}+#2#{} Mult before",
                    "being scored",
                    "Destroyed at {C:mult}#3#{} Mult"
                },
            },
            m_rndmod_greed={
                name="Greedy Card",
                text={
                    "{C:money}+$#1#{}",
                    "{C:green}#3# in #4#{} chance to be",
                    "destroyed after scoring",
                    "Increase {C:money}Money{} and {C:green}Odds",
                    "by #2# before being scored",
                },
            },
            m_rndmod_wrath={
                name="Wrathful Card",
                text={
                    "{C:mult}+#1#{} Mult for each",
                    "{C:attention}Wrathful Card",
                    "in your full deck",
                },
            },
            m_rndmod_sloth={
                name="Slothful Card",
                text={
                    "{C:chips}+#1#{} Chips for each",
                    "{C:attention}Slothful Card",
                    "in your full deck",
                },
            },
        },
        Stake={
            stake_rndmod_1negative={
                name="Negative Stake",
                text={
                    "Must beat {C:attention}Ante 9{}",
                },
            },
            stake_rndmod_2cobalt={
                name="Cobalt Stake",
                text={
                    "{C:greend}Rerolls{} start at {C:attention}$7{}",
                },
            },
            stake_rndmod_3ancient={
                name="Ancient Stake",
                text={
                    "Start in {C:attention}Ante 0{}",
                },
            },
            stake_rndmod_4itaborailson={
                name="Itaborailson Stake",
                text={
                    "Half of items are banned from the shop",
                },
            },
        },
        Other = {
            rndmod_pawn_seal = {
                name = 'Pawn',
                text = {
                    '{C:chips}+30{} Chips'
                }
            },
            rndmod_knight_seal = {
                name = 'Knight',
                text = {
                    '{C:chips}+60{} Chips'
                }
            },
            rndmod_rook_seal = {
                name = 'Rook',
                text = {
                    '{C:mult}+7{} Mult'
                }
            },
            rndmod_bishop_seal = {
                name = 'Bishop',
                text = {
                    '{C:mult}+7{} Mult'
                }
            },
            rndmod_queen_seal = {
                name = 'Queen',
                text = {
                    '{C:money}+$3{}'
                }
            },
            rndmod_king_seal = {
                name = 'King',
                text = {
                    '{X:mult,C:white}X1.3{} Mult'
                }
            },
            rndmod_1negative_sticker = {
                name = 'Negative Sticker',
                text = {
                    'Used this Joker',
                    'to win on {C:attention}Negative',
                    '{C:attention}Stake{} difficulty'
                }
            },
            rndmod_2cobalt_sticker = {
                name = 'Cobalt Sticker',
                text = {
                    'Used this Joker',
                    'to win on {C:attention}Cobalt',
                    '{C:attention}Stake{} difficulty'
                }
            },
            rndmod_3ancient_sticker = {
                name = 'Ancient Sticker',
                text = {
                    'Used this Joker',
                    'to win on {C:attention}Ancient',
                    '{C:attention}Stake{} difficulty'
                }
            },
            rndmod_4itaborailson_sticker = {
                name = ' Sticker',
                text = {
                    'Used this Joker',
                    'to win on {C:attention}Itaborailson',
                    '{C:attention}Stake{} difficulty'
                }
            },
        },
    },
    misc = {
        poker_hands = {
            ["rndmod_six_oak"] = "Six of a Kind",
            ["rndmod_six_f"] = "Flush Six",
            ["rndmod_three_pair"] = "Three Pair",
            ["rndmod_two_three"] = "Two Triple",
            ["rndmod_four_house"] = "Four of a House",
            ["rndmod_four_house_f"] = "Flush Four of a House",
        },
        poker_hand_descriptions = {
            ["rndmod_six_oak"] = {
                "6 cards with the same rank"
            },
            ["rndmod_three_pair"] = {
                "Three Pairs"
            },
            ["rndmod_two_three"] = {
                "Two Three of a Kinds"
            },
            ["rndmod_four_house"] = {
                "A Four of a Kind and a Pair"
            },
            ["rndmod_four_house_f"] = {
                "A Four of a Kind and a Pair",
                "all with the same suit"
            },
            ["rndmod_six_f"] = {
                "6 cards with the same rank and suit"
            },
        },
        labels={
            rndmod_pawn_seal="Pawn",
            rndmod_knight_seal="Knight",
            rndmod_rook_seal="Rook",
            rndmod_bishop_seal="Bishop",
            rndmod_queen_seal="Queen",
            rndmod_king_seal="King",
        },
        dictionary = {
            k_plus_hermit = "+ Hermit",
            k_plus_tag = "+ Tag",
            k_peak = "PEAK!",
            k_draw = "Draw",
            k_rnd_discard = "+1 Discard",
        }
    },
}