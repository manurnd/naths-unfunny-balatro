return {
    descriptions = {
        Back = {
            b_rndmod_purple = {
                name = "Baralho Roxo",
                text = {
                    "Pode selecionar, jogar e",
                    "discartar {C:attention}1{} carta a mais",
                    "Tamanho da mão {C:attention}+1{}"
                },
            },
            b_rndmod_build = {
                name = "Baralho Em Obras",
                text = {
                    "Comece com {C:attention}32{} cartas aleatórias",
                    "Abra {C:attention}10 Mega Pacotes de Cartas",
                    "(Pulá-los custa {C:money}$4{})",
                    "Curingas não aparecem na loja",
                    "Cartas podem aparecer na loja"
                }
            },
            b_rndmod_forgotten = {
                name = "Baralho Esquecido",
                text = {
                    "{C:attention}30%{} dos itens estão",
                    "banidos da loja",
                },
            },
            b_rndmod_coffee = {
                name = "Baralho de Café",
                text = {
                    "Ao usar um {C:attention}Consumível{}",
                    "há uma chance de {C:green}#1# em #2#{}",
                    "de ganhar uma cópia dele"
                },
            },
        },
        Joker = {
            j_rndmod_modern_hermit = {
                name = "Eremita Moderno",
                text = {
                    "Chance de {C:green}#1# em #2#{} de criar",
                    "{C:tarot}O Eremita{} quando qualquer",
                    "{C:attention}Pacote de Reforço{} for aberto",
                    "{C:inactive}(Deve ter espaço)",
                }
            },
            j_rndmod_word_search = {
                name = "Caça Palavras",
                text = {
                    "Cada {C:attention}#3#{} pontuado dá",
                    "{C:chips}+#1#{} Fichas e {C:mult}+#2#{} Multi",
                    "{s:0.8}rank muda ao final do round",
                },
            },
            j_rndmod_checkered={
                name = "Curinga Quadriculado",
                text = {
                    "{V:1}#3#{} e {V:2}#4#{}",
                    "dão {C:chips}+#1#{} Fichas",
                    "{V:3}#5#{} e {V:4}#6#{}",
                    "dão {C:mult}+#2#{} Multi",
                    "{s:0.8}naipes mudam ao final do round",
                },
            },
            j_rndmod_pearto={
                name = "Teto Pera",
                text = {
                    "{C:chips}+#1#{} Fichas e {C:mult}+#2#{} Multi",
                    "para cada nível de {C:attention}Par{}",
                    "{C:inactive}(Atualmente {}{C:chips}+#3#{} {C:inactive}Fichas",
                    "{C:inactive}e {}{C:mult}+#4#{} {C:inactive}Multi)",
                },
            },
            j_rndmod_it_starts_with = {
                name = "It Starts With One",
                text = {
                    "{C:chips}1{} Ficha,",
                    "Aumenta em {C:chips}1{} Ficha",
                    "por carta pontuada",
                    "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_rndmod_cashback={
                name="Cashback",
                text={
                    {
                        "Ganhe {C:money}$#1#{} ao abrir",
                        "um {C:attention}Pacote de Reforço{}",
                    },
                    {
                        "Ganhe {C:money}$#1#{} ao pular",
                        "um {C:attention}Pacote de Reforço{}",
                    }
                }
            },
            j_rndmod_jack_all={
                name="ValeTudo",
                text={
                    "Chance de {C:green}#1# em #2#{} de cada",
                    "{C:attention}Valete{} jogado criar",
                    "uma {C:mult}Marca{} quando pontuado",
                },
            },
            j_rndmod_spam={
                name="Spam",
                text={
                    "Esse curinga ganha {C:chips}+#2#",
                    "Fichas se a mão jogada",
                    "é uma {C:attention}Carta Alta",
                    "{C:inactive}(Atualmente {C:chips}+#1#{C:inactive} Ficha)",
                },
            },
            j_rndmod_wild_west={ 
                name="Velho Oeste",
                text={
                    "Reativa {C:attention}Cartas Naipe Curinga{}",
                    "pontuadas ou na sua mão",
                    "{C:attention}#1#{} vezes adicionais",
                },
            },
            j_rndmod_fake_png={
                name="PNG Falso",
                text={
                    "{C:chips}+#1#{} Fichas por carta não",
                    "pontuada na mão jogada",
                },
            },
            j_rndmod_burning_memory={
                name="Memória Ardente",
                text={
                    {"{C:dark_edition}+#1#{} espaço de Curinga"},
                    {"{C:dark_edition}???"}
                },
            },
            j_rndmod_pope={
                name="O Papa É Pop",
                text={{
                        "Se você tem {C:tarot}O Hierofante",
                        "em seus consumíveis quando o",
                        "{C:attention}Blind{} é selecionado, este curinga",
                        "o destrói e ganha {X:mult,C:white} X#2# {} Multi",
                        "{C:inactive}(Atualmente {X:mult,C:white} X#1# {C:inactive} Multi)",
                    },{
                        "{C:tarot}A Sacerdotisa{} também",
                        "ativa esse efeito se você",
                        "possuir o voucher {C:attention}Comerciante de Tarô{}",
                    }}
            },
            j_rndmod_hype_moments={
                name="Momentos Hype",
                text={
                    "Cria uma {C:spectral}Aura",
                    "se a mão jogada for",
                    "uma {C:attention}mão secreta{}",
                },
            },
            j_rndmod_pulling_force={
                name="Força De Tração",
                text={{
                        "Compre {C:attention}#1#{} cartas extras",
                        "ao puxar a primeira mão do round"
                    },{
                        "Compre {C:attention}+1{} carta extra se você possuir",
                        "o voucher {C:attention}Pincel{}"
                    }}
            },
            j_rndmod_sale_sign={
                name="Promoção",
                text={
                    "Itens na loja",
                    "custam {C:money}$#1#{} a menos"
                },
            },
            j_rndmod_dream_catcher={
                name="Apanhador De Sonhos",
                text={
                    "{X:mult,C:white} X#1# {} Multi para",
                    "cada carta de",
                    "naipe {V:1}Claro{} pontuada"
                },
            },
            j_rndmod_nightmare={
                name="Desfile De Pesadelos",
                text={
                    "{X:mult,C:white} X#1# {} Multi para",
                    "cada carta de",
                    "naipe {V:1}Escuro{} pontuada"
                },
            },
            j_rndmod_scorching={
                name="Ondas Escaldantes",
                text={
                    "{C:attention}Cartas Em Chamas{} Ganham",
                    "{C:mult}+#1#{} Multi e são",
                    "Destruídas com {C:mult}#2#{} Multi"
                },
            },
            j_rndmod_fractal={
                name="Curinga Fractal",
                text={
                    "Ganha {X:mult,C:white} X#1# {} Multi após",
                    "{C:attention}#3#{} cartas pontuadas",
                    "Dobra o ganho e requerimento",
                    "sempre que isso melhorar",
                    "{C:inactive}(Atualmente {X:mult,C:white} X#2# {C:inactive} Multi, {C:attention}#4#/#3#{})",
                },
            },
            j_rndmod_wanted={
                name="Curinga Procurado",
                text={
                    "Ganhe {C:money}$#3#{} quando um",
                    "{C:attention}#1#{} de {V:1}#2#{}",
                    "é destruído",
                    "{s:0.8}Carta muda ao final do round",
                },
            },
            j_rndmod_geuse={
                name="Geuse",
                text={{
                    "Sobe o nível de uma mão",
                    "aleatória quando um {C:planet}Planeta{}",
                    "é usado",
                },{
                    "Sobe o nível de uma segunda mão",
                    "aleatória se você possuir o voucher",
                    "{C:attention}Telescópio{}",
                }}
            },
            j_rndmod_grandiose={
                name="Grandioso",
                text={
                    {
                        "No final do round,",
                        "ganha {C:money}${} igual ao",
                        "valor de venda do último",
                        "{C:attention}Curinga{} vendido",
                        "{C:inactive}(Atualmente {C:money}$#1#{C:inactive})"
                    },{
                        "Vender curingas não dá {C:money}${}",
                    }
                }
            },
            j_rndmod_doublet={
                name="Problemas Em Dobro",
                text={
                    "Se a mão jogada for um {C:attention}Par{},",
                    "adiciona {C:attention}#1# reativação{} permanente",
                    "a todas as cartas pontuadas que não",
                    "possuem nenhuma",
                    "Destruído após {C:attention}#2#{} cartas",
                }
            },
            j_rndmod_bricks={
                name="Tijolo Por Tijolo",
                text={
                    "Compre {C:attention}#1#{} cartas adicionais",
                    "se a mão jogada contém",
                    "um {C:attention}Full House{}",
                },
            },
            j_rndmod_tragic={
                name="Um Trágico Caso No Teatro Do Acaso",
                text={
                    "Desativa o {C:attention}Blind de Chefe{} se uma",
                    "{C:tarot}Roda da Fortuna{} foi usada",
                    "antes de selecionar o {C:attention}Blind de Chefe{}"
                },
            },
            j_rndmod_amavera={
                name="Amavera Armstrong",
                text={
                    {
                    "{X:mult,C:white} X#1# {} Multi sempre que",
                    "uma {C:attention}Carta da Sorte{} ativa",
                },{
                    "Triplica todas as {C:green}probabilides",
                    "{C:attention}listadas"
                }
                },
            },
            j_rndmod_solitaire={
                name="Paciência",
                text={
                    "Esse curinga ganha",
                    "{C:money}$#1#{} dolares",
                    "de {C:attention}valor de venda{} se",
                    "a mão jogada contém",
                    "uma {C:attention}Sequência",
                },
            },
            j_rndmod_slingshot={
                name="Estilingue da Nataliel",
                text={
                    {
                    "Quando comprado, adiciona 12 cartas",
                    "com {C:attention}Peças de Xadrez{} nelas",
                        "ao seu deck"
                },{
                    "Se não há nenhuma {C:attention}Peça",
                    "{C:attention}de Xadrez{} em seu deck ao",
                    "{C:attention}final do round{}, destrói",
                    "esse curinga e cria {C:attention}A Alma"
                }
                }
            },
            j_rndmod_foresight={
                name="Previsão",
                text={{
                    "As próximas 5 cartas",
                    "do deck são:",
                    "{C:purple}#1#",
                    "{C:purple}#2#",
                    "{C:purple}#3#",
                    "{C:purple}#4#",
                    "{C:purple}#5#",
                },{
                    "{C:purple}#6#",
                    "{C:purple}#7#",
                    "Se você possuir o voucher",
                    "{C:attention}Bola de Cristal{}",
                }}
            },
            j_rndmod_epilico={
                name="Epílico",
                text={
                    "Venda este curinga para",
                    "{C:attention}queimar{} uma parte do seu",
                    "deck",
                },
            },
            j_rndmod_quetzo={
                name="Quetzonaga",
                text={
                    {
                        "{C:attention}Cartas de Realeza{} pontuadas",
                        "se tornam {C:attention}Cartas de Pedra{}",
                    },{
                        "{C:attention}Cartas de Pedra{} pontuadas",
                        "dão {C:mult}+#1#{} Multi",
                    }
                },
            },
            j_rndmod_chaos_theory={
                name="Teoria do Caos",
                text={
                    "Cria {C:attention}#1#{} {C:attention}Marcas{} aleatórias",
                    "ao final de cada round",
                },
            },
            j_rndmod_ruby={
                name="Rubí",
                text={{
                    "Chance de {C:green}#1# em #2#{} de",
                    "ganhar um {C:mult}Descarte{} ao",
                    "usar um {C:mult}Descarte{}",
                },{
                    "Chance {C:green}+1/+1{} se você",
                    "possuir o voucher {C:attention}Bola de Cristal{}"
                }}
            },
            j_rndmod_bismuth={
                name="Bismuto",
                text={{
                    "Ganha {C:money}$#1#{} de {C:attention}valor de venda{}",
                    "quando uma {C:attention}Carta Curinga{} é pontuada",
                },{
                    "{X:money,C:white} X2 {} ganho se você possuir",
                    "o voucher {C:attention}Bola de Cristal{}"
                }}
            },
            j_rndmod_paraiba={
                name="Turmalina Paraíba",
                text={{
                    "{C:chips}+#1#{} Fichas para",
                    "cada mão jogada",
                    "nesse round",
                    "Reseta ao final do round",
                    "{C:inactive}(Atualmente {C:chips}+#2#{C:inactive} Fichas)",
                },{
                    "{C:chips}+15{} Fichas extra se você possuir",
                    "o voucher {C:attention}Bola de Cristal{}"
                }}
            },
            j_rndmod_crimson={
                name="Rei Carmesim",
                text={
                    "Ganha {X:mult,C:white} X#1# {} Multi sempre que",
                    "um {C:attention}Rei{} é pontuado",
                    "Reseta quando ativado",
                    "{C:inactive}(Atualmente {X:mult,C:white} X#2# {C:inactive} Multi)",
                },
            },
            j_rndmod_amethyst={
                name="Ametista",
                text={
                    {
                        "Chance de {C:green}#1# em #2#{} de",
                        "ganhar uma cópia de um {C:tarot}Tarot{}",
                        "quando ela é usada"
                    },{
                        "{X:green,C:white} X2 {} chance se você",
                        "possuir o voucher {C:attention}Bola de Cristal{}"
                    }
                }
            },
            j_rndmod_voucher={
                name="Cupom Curinga",
                text={
                    "Curingas que são melhorados por",
                    "{C:attention}Vouchers{} têm seus",
                    "requisitos cumpridos",
                },
            },
            j_rndmod_jackpot={
                name="Jackpot",
                text={
                    "Ganhe {C:money}$#1#{} se a mão",
                    "pontuada contém 3 {C:attention}7{}s",
                }
            },
        },
        Tarot = {
            c_rndmod_eclipse={
                name="O Eclipse",
                text={
                    "Converte até {C:attention}#1#{} cartas",
                    "selecionadas em",
                    "{C:attention}Cartas Em Chamas"
                },
            },
            c_rndmod_cage={
                name="A Gaiola",
                text={
                    "Converte até {C:attention}#1#{} cartas",
                    "selecionadas em",
                    "{C:attention}Cartas Gananciosas"
                },
            },
            c_rndmod_glut={
                name="A Gula",
                text={
                    "Cria uma carta de {C:tarot}Tarot",
                    "ou {C:planet}Planeta{}",
                    "{C:dark_edition}Negativo{} aleatório",
                },
            },
            c_rndmod_envy={
                name="A Serpente",
                text={
                    "{C:money}+$2{} por cada carta de mesmo",
                    "{C:attention}rank{} e {C:attention}naipe{}",
                    "que a carta selecionada",
                    "em seu deck",
                    "{C:inactive}(max. $60)"
                },
            },
            c_rndmod_tyrant={
                name="O Tirano",
                text={
                    "Converte até {C:attention}#1#{} cartas",
                    "selecionadas em",
                    "{C:attention}Cartas Raivosas"
                },
            },
            c_rndmod_night={
                name="A Noite",
                text={
                    "Converte até {C:attention}#1#{} cartas",
                    "selecionadas em",
                    "{C:attention}Cartas Preguiçosas"
                },
            },
        },
        Planet = {
            c_rndmod_aqua_b = {
                name = 'Orcus',
                text={
                    "{S:0.8}({S:0.8,V:1}nv.#1#{S:0.8}){} Subir de nível",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Multi e",
                    "{C:chips}+#4#{} fichas",
                },
            },
            c_rndmod_aqua_c = {
                name = 'Libita',
                text={
                    "{S:0.8}({S:0.8,V:1}nv.#1#{S:0.8}){} Subir de nível",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Multi e",
                    "{C:chips}+#4#{} fichas",
                },
            },
            c_rndmod_aqua_d = {
                name="Teosa",
                text={
                    "Sobe o nível",
                    "da última mão de poker",
                    "jogada em {C:attention}#1#{} nível",
                },
            },
            c_rndmod_aqua_e = {
                name = 'Érebo',
                text={
                    "{S:0.8}({S:0.8,V:1}nv.#1#{S:0.8}){} Subir de nível",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Multi e",
                    "{C:chips}+#4#{} fichas",
                },
            },
            c_rndmod_aqua_f = {
                name = 'Antero',
                text={
                    "{S:0.8}({S:0.8,V:1}nv.#1#{S:0.8}){} Subir de nível",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Multi e",
                    "{C:chips}+#4#{} fichas",
                },
            },
            c_rndmod_aqua_gh = {
                name = 'Jano & Juno',
                text={
                    "{S:0.8}({S:0.8,V:1}nv.#1#{S:0.8}){} Subir de nível",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Multi e",
                    "{C:chips}+#4#{} fichas",
                },
            },
            c_rndmod_aqua_i = {
                name = 'Polímero',
                text={
                    "{S:0.8}({S:0.8,V:1}nv.#1#{S:0.8}){} Subir de nível",
                    "{C:attention}#2#",
                    "{C:mult}+#3#{} Multi e",
                    "{C:chips}+#4#{} fichas",
                },
            },
        },
        Enhanced = {
            m_rndmod_burning={
                name="Carta Em Chamas",
                text={
                    "{C:mult}+#1#{} Multi",
                    "Ganha {C:mult}+#2#{} Multi antes",
                    "de ser pontuada",
                    "Destruída com {C:mult}#3#{} Multi"
                },
            },
            m_rndmod_greed={
                name="Carta Gananciosa",
                text={
                    "{C:money}+$#1#{}",
                    "Chance de {C:green}#3# in #4#{} de ser",
                    "destruída após pontuada",
                    "Aumenta {C:money}Dinheiro{} e {C:green}Chances",
                    "em #2# antes de ser pontuada",
                },
            },
             m_rndmod_wrath={
                name="Carta Raivosa",
                text={
                    "{C:mult}+#1#{} Multi por cada",
                    "{C:attention}Carta Raivosa",
                    "no seu deck completo",
                },
             },
            m_rndmod_sloth={
                name="Carta Preguiçosa",
                text={
                    "{C:chips}+#1#{} Fichas por cada",
                    "{C:attention}Carta Preguiçosa",
                    "no seu deck completo",
                },
            },
        },
        Stake={
            stake_rndmod_1negative={
                name="Aposta Negativa",
                text={
                    "Deve vencer a {C:attention}Ante 9{}",
                },
            },
            stake_rndmod_2cobalt={
                name="Aposta De Cobalto",
                text={
                    "{C:greend}Rerolls{} aumentam em {C:attention}$2{}",
                },
            },
            stake_rndmod_3ancient={
                name="Aposta Anciã",
                text={
                    "Comece na {C:attention}Ante 0{}",
                    "Tamanho da mão {C:attention}-1{}",
                },
            },
            stake_rndmod_4itaborailson={
                name="Aposta Itaborailson",
                text={
                    "Metade dos itens estão banidos da loja",
                },
            },
        },
        Other = {
            rndmod_tip_burn = {
                name = "Queimar",
                text = {
                    "Destrói {C:green}40%{} do seu deck",
                    "Transforma {C:green}30%{} das cartas restantes em",
                    "{C:attention}Cartas Em Chamas{}",
                }
            },
            rndmod_pawn_seal = {
                name = 'Peão',
                text = {
                    '{C:chips}+30{} Fichas'
                }
            },
            rndmod_knight_seal = {
                name = 'Cavalo',
                text = {
                    '{C:chips}+60{} Fichas'
                }
            },
            rndmod_rook_seal = {
                name = 'Torre',
                text = {
                    '{C:mult}+7{} Multi'
                }
            },
            rndmod_bishop_seal = {
                name = 'Bispo',
                text = {
                    '{C:mult}+7{} Multi'
                }
            },
            rndmod_queen_seal = {
                name = 'Rainha',
                text = {
                    '{C:money}+$3{}'
                }
            },
            rndmod_king_seal = {
                name = 'Rei',
                text = {
                    '{X:mult,C:white}X1.3{} Multi'
                }
            },
            rndmod_1negative_sticker = {
                name = 'Adesivo Negativo',
                text = {
                    'Esse Curinga foi usado',
                    'para vencer a {C:attention}Aposta',
                    '{C:attention}Negativa{}'
                }
            },
            rndmod_2cobalto_sticker = {
                name = 'Adesivo De Cobalto',
                text = {
                    'Esse Curinga foi usado',
                    'para vencer a {C:attention}Aposta',
                    '{C:attention}De Cobalto{}'
                }
            },
            rndmod_3ancient_sticker = {
                name = 'Adesivo Ancião',
                text = {
                    'Esse Curinga foi usado',
                    'para vencer a {C:attention}Aposta',
                    '{C:attention}Anciã{}'
                }
            },
            rndmod_4itaborailson_sticker = {
                name = 'Adesivo Itaborailson',
                text = {
                    'Esse Curinga foi usado',
                    'para vencer a {C:attention}Aposta',
                    '{C:attention}Itaborailson{}'
                }
            },
        },
    },
    misc = {
        poker_hands = {
            ["rndmod_six_oak"] = "Sena",
            ["rndmod_six_f"] = "Sena Flush",
            ["rndmod_three_pair"] = "Três Pares",
            ["rndmod_two_three"] = "Trinca Dupla",
            ["rndmod_four_house"] = "Quadra House",
            ["rndmod_four_house_f"] = "Quadra Flush House",
        },
        poker_hand_descriptions = {
            ["rndmod_six_oak"] = {
                "6 cartas de mesmo rank"
            },
            ["rndmod_three_pair"] = {
                "Três pares"
            },
            ["rndmod_two_three"] = {
                "Duas Trincas"
            },
            ["rndmod_four_house"] = {
                "Uma Quadra e um Par"
            },
            ["rndmod_four_house_f"] = {
                "Uma Quadra e um Par",
                "todas as cartas de mesmo naipe"
            },
            ["rndmod_six_f"] = {
                "6 cartas de mesmo rank e naipe"
            },
        },
        labels={
            rndmod_pawn_seal="Peão",
            rndmod_knight_seal="Cavalo",
            rndmod_rook_seal="Torre",
            rndmod_bishop_seal="Bispo",
            rndmod_queen_seal="Rainha",
            rndmod_king_seal="Rei",
        },
        dictionary = {
            k_plus_hermit = "+ Eremita",
            k_plus_tag = "+ Marca",
            k_peak = "PEAK!",
            k_draw = "Compra",
        }
    },
}