SMODS.Atlas {
    key = "rnjokers",
    path = "Jokers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "rnenhancers",
    path = "Enhancers.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "rncons",
    path = "Cons.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "rndecks",
    path = "Decks.png",
    px = 71,
    py = 95
}

SMODS.Atlas {
    key = "rnstakes",
    path = "Chips.png",
    px = 29,
    py = 29
}

SMODS.Atlas {
    key = "rnstickers",
    path = "Stickers.png",
    px = 71,
    py = 95
}

local jokers_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/jokers")
for _, file in ipairs(jokers_src) do
    assert(SMODS.load_file("src/jokers/" .. file))()
end

local enhanced_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/enhancers")
for _, file in ipairs(enhanced_src) do
    assert(SMODS.load_file("src/enhancers/" .. file))()
end

local cons_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/cons")
for _, file in ipairs(cons_src) do
    assert(SMODS.load_file("src/cons/" .. file))()
end

local deck_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/decks")
for _, file in ipairs(deck_src) do
    assert(SMODS.load_file("src/decks/" .. file))()
end

local stake_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/stakes")
for _, file in ipairs(stake_src) do
    assert(SMODS.load_file("src/stakes/" .. file))()
end

local sticker_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/stickers")
for _, file in ipairs(sticker_src) do
    assert(SMODS.load_file("src/stickers/" .. file))()
end

local hand_src = SMODS.NFS.getDirectoryItems(SMODS.current_mod.path .. "src/hands")
for _, file in ipairs(hand_src) do
    assert(SMODS.load_file("src/hands/" .. file))()
end

SMODS.current_mod.menu_cards = function()
    return {
        remove_original = true,
        {key = 'j_rndmod_dream_catcher'},
    }
end