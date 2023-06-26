api_define_trait("in_natura", {
    common = {"in_natura"}, 
    uncommon = {"in_natura"},
    verdant = {"modified"},
    vibrant = {"modified"}
  }, {"none"})



INDUSTRIAL_BEES = {"bee:crystal", "bee:ancient", "bee:bohemian", "bee:prolific", "bee:industrious", "bee:empress"}
MAN_MADE_BEES = {"bee:regal", "bee:worker", "bee:stubborn", "bee:domesticated", "bee:hermit"}
MODIFIED_BEES = {"bee:verdant", "bee:vibrant", "bee:misty", "bee:arctic", "bee:blazing"}
IN_NATURA_BEES = {"bee:common", "bee:uncommon", "bee:forest", "bee:verge", "bee:rocky", "bee:murky", "bee:muggy", "bee:frosty", "bee:fiery"}
MORE_THAN_NATURAL_BEES = {"bee:glowing", "bee:drowsy", "bee:jurassic", "bee:melodic"}
OVERLY_NATURAL_BEES = {"bee:dream", "bee:twilight", "bee:lighting", "bee:hallowed"}
SUPERNATURAL_BEES = {"bee:sacred"}

BEE_PRODUCE = {"log", "beepollen", "stickypearl", "honeydew", "combfragment", "waxypearl", "hivedust", "morningdew", "dye9", "spice1", "stickyshard", "claydust", "dye11", "stone", "royaljelly", "canister2", "waxshard", "glossypearl", "spice2", "dye10", "icyshard", "charredpearl", "spice3", "honeycore2", "spice4", "seed0", "gloriouspearl", "frame5", "unstabledust", "dye17", "spice5", "queenspearl", "discfragment", "lightningshard", "dye18", "blessedpearl", "randomjelly", "dye1", "dye7", "dye8", "flora4", "flora2", "flora1", "dye6", "dye3", "dye2", "flora4", "flora2", "flora1", "flora6", "natura_bees_amber_chunks"}

api_define_validation_icon("customX:acorn", "sprites/validation_seed.png")
api_define_validation_icon("customX:PRODUCE", "sprites/validation_produce.png")





seed_exchanger_layout = {
    {28, 21, "Input", BEE_PRODUCE},
    {50, 21, "Input", {"bee"}},
    {17, 40, "Input", {"bee"}},
    {39, 40, "Input", {"customX:acorn"}},
    {61, 40, "Input", BEE_PRODUCE},
    {112, 40, "Output"},
    {28, 59, "Input", BEE_PRODUCE},
    {50, 59, "Input", {"bee"}},
    {7, 89},
    {30, 89},
    {53, 89},
    {76, 89},
    {99, 89},
    {122, 89}
}


function menu_objects()
    menu_def = {
        id = "seed_exchanger",
        name = "Seed Exchanger",
        category = "Machine",
        tooltip = "test",
        layout = seed_exchanger_layout,
        info = {{"1. Seed Exhanger Input", "GREEN"}, {"2. New Seed Output", "BLUE"}, {"3. Extra Storage", "YELLOW"}},
        buttons = {"Help", "Target", "Move", "Close"},
        tools = {"hammerX"},
        nature = true,
    }
    api_define_menu_object2(menu_def, "sprites/test_mutator.png", "sprites/seed_exchanger_gui.png", {
    define = "seed_exchanger_define",
    draw = "seed_exchanger_draw",
    tick = "seed_exchanger_tick",
    change = "seed_exchanger_change"
    })
end



function seed_exchanger_define(menu_id)
    api_dp(menu_id, "working", false)
    api_dp(menu_id, "p_start", 0)
    api_dp(menu_id, "p_end", 1)

    api_define_gui(menu_id, "exchanger_progress_bar", 85, 43, "seed_exchanger_gui_tooltip", "sprites/seed_exchanger_arrow.png")

    spr = api_get_sprite("sp_natura_bees_exchanger_progress_bar")
    api_dp(menu_id, "exchanger_progress_bar_sprite", spr)

    fields = {"p_start", "p_end"}
    fields = api_sp(menu_id, "_fields", fields)

    slots = api_get_slots(menu_id)
    api_sp(slots[1].id, "hex", true)
    api_sp(slots[2].id, "hex", true)
    api_sp(slots[3].id, "hex", true)
    api_sp(slots[4].id, "hex", true)
    api_sp(slots[5].id, "hex", true)
    api_sp(slots[7].id, "hex", true)
    api_sp(slots[8].id, "hex", true)
end



function seed_exchanger_draw(menu_id)
    -- get camera
    cam = api_get_cam()

    -- draw gui progress here
    gui = api_get_inst(api_gp(menu_id, "exchanger_progress_bar"))
    spr = api_gp(menu_id, "exchanger_progress_bar_sprite")

    -- draw arrow "progress" block then cover up with arrow hole
    -- arrow sprite is 47x10
    gx = gui["x"] - cam["x"]
    gy = gui["y"] - cam["y"]
    progress = (api_gp(menu_id, "p_start") / api_gp(menu_id, "p_end") * 18)
    api_draw_sprite_part(spr, 2, 0, 0, progress, 10, gx, gy)
    api_draw_sprite(spr, 1, gx, gy)

    -- draw highlight if highlighted
    if api_get_highlighted("ui") == gui["id"] then
        api_draw_sprite(spr, 0, gx, gy)
    end
end


function recipes(menu_id)
    cluster = 0
    central = api_get_slot(menu_id, 4)
    slot2 = api_slot_item_id(menu_id, 2)
    slot3 = api_slot_item_id(menu_id, 3)
    slot8 = api_slot_item_id(menu_id, 8)
    slot6 = api_get_slot(menu_id, 6)
    if central ~= nil then
        if central["item"] == "acorn1" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_birch_tree_acorn" then
                for n = 1, #IN_NATURA_BEES do
                    if slot2 == IN_NATURA_BEES[n] and slot3 == IN_NATURA_BEES[n] and slot8 == IN_NATURA_BEES[n] then
                        api_log("debug", slot2 .. slot3 .. slot8)
                        produce_slot1 = api_slot_match_range(menu_id, {"beepollen"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"beepollen"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"beepollen"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "beepollen" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "beepollen" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "beepollen" then
                                    api_log("debug", "honeydew found")
                        cluster = 1
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "acorn1" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_pine_tree_acorn" then
                for n = 1, #IN_NATURA_BEES do
                    if slot2 == IN_NATURA_BEES[n] and slot3 == IN_NATURA_BEES[n] and slot8 == IN_NATURA_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"sawdust1"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"sawdust1"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"sawdust1"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "sawdust1" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "sawdust1" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "sawdust1" then
                                    api_log("debug", "honeydew found")
                        cluster = 2
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "acorn1" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_mangrove_tree_acorn" then
                for n = 1, #IN_NATURA_BEES do
                    if slot2 == IN_NATURA_BEES[n] and slot3 == IN_NATURA_BEES[n] and slot8 == IN_NATURA_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"morningdew"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"morningdew"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"morningdew"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "morningdew" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "morningdew" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "morningdew" then
                                    api_log("debug", "honeydew found")
                        cluster = 3
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "acorn1" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_acacia_tree_acorn" then
                for n = 1, #MODIFIED_BEES do
                    if slot2 == MODIFIED_BEES[n] and slot3 == MODIFIED_BEES[n] and slot8 == MODIFIED_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"flora5"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"flora5"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"flora5"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "flora5" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "flora5" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "flora5" then
                                    api_log("debug", "honeydew found")
                        cluster = 4
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "acorn1" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_redwood_tree_acorn" then
                for n = 1, #MORE_THAN_NATURAL_BEES do
                    if slot2 == MORE_THAN_NATURAL_BEES[n] and slot3 == MORE_THAN_NATURAL_BEES[n] and slot8 == MORE_THAN_NATURAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"log"}, {1, 5, 7}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"dye1"}, {1, 5, 7}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"flora1"}, {1, 5, 7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "flora1" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "dye1" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "log" then
                                    api_log("debug", "honeydew found")
                        cluster = 5
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "acorn1" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_maple_tree_acorn" then
                for n = 1, #MODIFIED_BEES do
                    if slot2 == MODIFIED_BEES[n] and slot3 == MODIFIED_BEES[n] and slot8 == MODIFIED_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"stickypearl"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"stickypearl"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"stickypearl"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "stickypearl" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "stickypearl" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "stickypearl" then
                                    api_log("debug", "honeydew found")
                        cluster = 6
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_birch_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_willow_tree_acorn" then
                for n = 1, #IN_NATURA_BEES do
                    if slot2 == IN_NATURA_BEES[n] and slot3 == IN_NATURA_BEES[n] and slot8 == IN_NATURA_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"morningdew"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"morningdew"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"morningdew"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "morningdew" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "morningdew" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "morningdew" then
                                    api_log("debug", "honeydew found")
                        cluster = 7
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_birch_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_sakura_tree_acorn" then
                for n = 1, #MAN_MADE_BEES do
                    if slot2 == MAN_MADE_BEES[n] and slot3 == MAN_MADE_BEES[n] and slot8 == MAN_MADE_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"dye1"}, {1, 5, 7}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"dye8"}, {1, 5, 7}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"flora2"}, {1, 5, 7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "flora2" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "dye8" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "dye1" then
                                    api_log("debug", "honeydew found")
                        cluster = 8
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        --[[if central["item"] == "natura_bees_birch_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_mahogany_tree_acorn" then
                for n = 1, #IN_NATURA_BEES do
                    if slot2 == IN_NATURA_BEES[n] and slot3 == IN_NATURA_BEES[n] and slot8 == IN_NATURA_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"dye7"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"dye7"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"dye7"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "dye7" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "dye7" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "dye7" then
                                    api_log("debug", "honeydew found")
                        cluster = 9
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end]]
        if central["item"] == "natura_bees_pine_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_araucaria_tree_acorn" then
                for n = 1, #MODIFIED_BEES do
                    if slot2 == MODIFIED_BEES[n] and slot3 == MODIFIED_BEES[n] and slot8 == MODIFIED_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"morningdew"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"morningdew"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"morningdew"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "morningdew" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "morningdew" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "morningdew" then
                                    api_log("debug", "honeydew found")
                        cluster = 10
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_pine_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_cypress_tree_acorn" then
                for n = 1, #MAN_MADE_BEES do
                    if slot2 == MAN_MADE_BEES[n] and slot3 == MAN_MADE_BEES[n] and slot8 == MAN_MADE_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"sawdust1"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"sawdust1"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"sawdust1"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "sawdust1" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "sawdust1" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "sawdust1" then
                                    api_log("debug", "honeydew found")
                        cluster = 11
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        --[[if central["item"] == "natura_bees_pine_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_cedar_tree_acorn" then
                for n = 1, #MODIFIED_BEES do
                    if slot2 == MODIFIED_BEES[n] and slot3 == MODIFIED_BEES[n] and slot8 == MODIFIED_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"icyshard"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"icyshard"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"icyshard"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "icyshard" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "icyshard" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "icyshard" then
                                    api_log("debug", "honeydew found")
                        cluster = 12
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end]]
        if central["item"] == "natura_bees_mangrove_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_ash_tree_acorn" then
                for n = 1, #MORE_THAN_NATURAL_BEES do
                    if slot2 == MORE_THAN_NATURAL_BEES[n] and slot3 == MORE_THAN_NATURAL_BEES[n] and slot8 == MORE_THAN_NATURAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"flora6"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"flora6"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"flora6"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "flora6" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "flora6" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "flora6" then
                                    api_log("debug", "honeydew found")
                        cluster = 13
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_mangrove_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_palm_tree_acorn" then
                for n = 1, #MAN_MADE_BEES do
                    if slot2 == MAN_MADE_BEES[n] and slot3 == MAN_MADE_BEES[n] and slot8 == MAN_MADE_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"spice2"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"spice2"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"spice2"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "spice2" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "spice2" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "spice2" then
                                    api_log("debug", "honeydew found")
                        cluster = 14
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_mangrove_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_jacaranda_tree_acorn" then
                for n = 1, #IN_NATURA_BEES do
                    if slot2 == IN_NATURA_BEES[n] and slot3 == IN_NATURA_BEES[n] and slot8 == IN_NATURA_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"dye6"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"dye6"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"dye6"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "dye6" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "dye6" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "dye6" then
                                    api_log("debug", "honeydew found")
                        cluster = 15
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_acacia_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_baobab_tree_acorn" then
                for n = 1, #MODIFIED_BEES do
                    if slot2 == MODIFIED_BEES[n] and slot3 == MODIFIED_BEES[n] and slot8 == MODIFIED_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"morningdew"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"morningdew"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"morningdew"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "morningdew" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "morningdew" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "morningdew" then
                                    api_log("debug", "honeydew found")
                        cluster = 16
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        --[[if central["item"] == "natura_bees_willow_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_paperbark_tree_acorn" then
                for n = 1, #INDUSTRIAL_BEES do
                    if slot2 == INDUSTRIAL_BEES[n] and slot3 == INDUSTRIAL_BEES[n] and slot8 == INDUSTRIAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"sawdust1"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"sawdust1"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"sawdust1"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "sawdust1" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "sawdust1" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "sawdust1" then
                                    api_log("debug", "honeydew found")
                        cluster = 17
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end]]
        if central["item"] == "natura_bees_sakura_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_ipe_tree_acorn" then
                for n = 1, #MODIFIED_BEES do
                    if slot2 == MODIFIED_BEES[n] and slot3 == MODIFIED_BEES[n] and slot8 == MODIFIED_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"dye3"}, {1, 5, 7}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"dye8"}, {1, 5, 7}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"dye6"}, {1, 5, 7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "dye6" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "dye8" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "dye3" then
                                    api_log("debug", "honeydew found")
                        cluster = 18
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_maple_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_apple_tree_acorn" then
                for n = 1, #INDUSTRIAL_BEES do
                    if slot2 == INDUSTRIAL_BEES[n] and slot3 == INDUSTRIAL_BEES[n] and slot8 == INDUSTRIAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"glossypearl"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"glossypearl"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"glossypearl"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "glossypearl" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "glossypearl" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "glossypearl" then
                                    api_log("debug", "honeydew found")
                        cluster = 19
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_apple_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_guarana_tree_acorn" then
                for n = 1, #INDUSTRIAL_BEES do
                    if slot2 == INDUSTRIAL_BEES[n] and slot3 == INDUSTRIAL_BEES[n] and slot8 == INDUSTRIAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"spice2"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"spice2"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"spice2"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "spice2" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "spice2" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "spice2" then
                                    api_log("debug", "honeydew found")
                        cluster = 20
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        --[[if central["item"] == "natura_bees_apple_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_coffee_tree_acorn" then
                for n = 1, #INDUSTRIAL_BEES do
                    if slot2 == INDUSTRIAL_BEES[n] and slot3 == INDUSTRIAL_BEES[n] and slot8 == INDUSTRIAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"spice5"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"spice5"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"spice5"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "spice5" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "spice5" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "spice5" then
                                    api_log("debug", "honeydew found")
                        cluster = 21
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end]]
        if central["item"] == "natura_bees_apple_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_rowan_tree_acorn" then
                for n = 1, #MORE_THAN_NATURAL_BEES do
                    if slot2 == MORE_THAN_NATURAL_BEES[n] and slot3 == MORE_THAN_NATURAL_BEES[n] and slot8 == MORE_THAN_NATURAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"waxypearl"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"waxypearl"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"waxypearl"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "waxypearl" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "waxypearl" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "waxypearl" then
                                    api_log("debug", "honeydew found")
                        cluster = 22
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "natura_bees_apple_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_hawthorn_tree_acorn" then
                for n = 1, #MORE_THAN_NATURAL_BEES do
                    if slot2 == MORE_THAN_NATURAL_BEES[n] and slot3 == MORE_THAN_NATURAL_BEES[n] and slot8 == MORE_THAN_NATURAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"spice1"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"spice1"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"spice1"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "spice1" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "spice1" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "spice1" then
                                    api_log("debug", "honeydew found")
                        cluster = 23
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        --[[if central["item"] == "natura_bees_rowan_tree_acorn" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_elder_tree_acorn" then
                for n = 1, #OVERLY_NATURAL_BEES do
                    if slot2 == OVERLY_NATURAL_BEES[n] and slot3 == OVERLY_NATURAL_BEES[n] and slot8 == OVERLY_NATURAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"dye2"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"dye2"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"dye2"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "dye2" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "dye2" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "dye2" then
                                    api_log("debug", "honeydew found")
                        cluster = 24
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end]]
        if central["item"] == "acorn1" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_cloud_tree_acorn" then
                for n = 1, #SUPERNATURAL_BEES do
                    if slot2 == SUPERNATURAL_BEES[n] and slot3 == SUPERNATURAL_BEES[n] and slot8 == SUPERNATURAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"flora6"}, {1}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"flora6"}, {5}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"flora6"}, {7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "flora6" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "flora6" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "flora6" then
                                    api_log("debug", "honeydew found")
                        cluster = 25
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end
        if central["item"] == "acorn1" then
            if slot6["item"] == "" or slot6["item"] == "natura_bees_magma_tree_acorn" then
                for n = 1, #SUPERNATURAL_BEES do
                    if slot2 == SUPERNATURAL_BEES[n] and slot3 == SUPERNATURAL_BEES[n] and slot8 == SUPERNATURAL_BEES[n] then
                        produce_slot1 = api_slot_match_range(menu_id, {"stone"}, {1, 5, 7}, true)
                        produce_slot2 = api_slot_match_range(menu_id, {"morningdew"}, {1, 5, 7}, true)
                        produce_slot3 = api_slot_match_range(menu_id, {"charredpearl"}, {1, 5, 7}, true)
                        if produce_slot3 ~= nil and produce_slot3["item"] == "charredpearl" then
                            api_log("debug", "stickypearl found")
                            if produce_slot2 ~= nil and produce_slot2["item"] == "morningdew" then
                                api_log("debug", "beepollen found")
                                if produce_slot1 ~= nil and produce_slot1["item"] == "stone" then
                                    api_log("debug", "honeydew found")
                        cluster = 26
                        return true
                                end
                            end
                        end
                    end
                end
            end
        end



        
        
    end
    return false
end



function seed_exchanger_tick(menu_id)
    -- handle countdown if working
    if api_gp(menu_id, "working") == true then
    -- add to counter
    api_sp(menu_id, "p_start", api_gp(menu_id, "p_start") + 0.1)
    -- if we hit the end, i.e. 10s have passed
    if api_gp(menu_id, "p_start") >= api_gp(menu_id, "p_end") then

        -- reset the counter
        api_sp(menu_id, "p_start", 0)
      
        -- get the "input" slots to get an item
        input_slot = api_slot_match_range(menu_id, {"bee"}, {2, 3, 8}, false)
        input_slot2 = api_slot_match_range(menu_id, BEE_PRODUCE, {1, 5, 7}, false)
        input_slot_center = api_slot_match_range(menu_id, {"ANY"}, {4}, false)
        -- assuming there is a slot width stuff
        if input_slot ~= nil then
            
            if recipes(menu_id) == true then
                -- remove 1 from slot
                for i = 1, #input_slot do
                api_slot_decr(input_slot[i]["id"])
                end
                for i = 1, #input_slot2 do
                    api_slot_decr(input_slot2[i]["id"])
                end
                    api_slot_decr(input_slot_center[1]["id"])
                -- add seed to output
                if cluster == 1 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_birch_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_birch_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 2 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_pine_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_pine_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 3 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_mangrove_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_mangrove_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 4 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_acacia_pine_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_acacia_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 5 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_redwood_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_redwood_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 6 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_maple_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_maple_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 7 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_willow_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_willow_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 8 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_sakura_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_sakura_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 9 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_mahogany_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_mahogany_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 10 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_araucaria_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_araucaria_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 11 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_cypress_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_cypress_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 12 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_cedar_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_cedar_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 13 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_ash_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_ash_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 14 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_palm_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_palm_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 15 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_jacaranda_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_jacaranda_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 16 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_baobab_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_baobab_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 17 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_paperbark_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_paperbark_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 18 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_ipe_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_ipe_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 19 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_apple_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_apple_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 20 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_guarana_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_guarana_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 21 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_coffee_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_coffee_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 22 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_rowan_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_rowan_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 23 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_hawthorn_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_hawthorn_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 24 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_elder_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_elder_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 25 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_cloud_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_cloud_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end
                if cluster == 26 then
                output_slot = api_slot_match_range(menu_id, {"", "natura_bees_magma_tree_acorn"}, {6}, true)
                    if output_slot ~= nil then
                        -- if empty slot add 1 seed item
                        if output_slot["item"] == "" then
                            api_slot_set(output_slot["id"], "natura_bees_magma_tree_acorn", 1)
                            -- otherwise add to existing seed item in slot
                        else 
                            api_slot_incr(output_slot["id"], 1)
                        end
                    end
                end








                
            end

            -- recheck input, if nothing then stop working            
            if recipes(menu_id) == false then
                    api_sp(menu_id, "working", false) end
            end
        end
    end
end


function seed_exchanger_change(menu_id)
    -- if we have items in the first four slots let's get to work
    --input_slot = api_slot_match_range(menu_id, {"ANY"}, {1, 2, 3, 4, 5, 7, 8}, true)
    --if input_slot ~= nil then 
    --local output_slot = api_slot_match_range(menu_id, {"", "ANY"}, {6}, true)
        if recipes(menu_id) == true --[[and output_slot ~= "ANY"]] then
            api_sp(menu_id, "working", true)
        --end
    else
        api_sp(menu_id, "working", false)
    end
end



function seed_exchanger_gui_tooltip(menu_id) 
    progress = math.floor((api_gp(menu_id, "p_start") / api_gp(menu_id, "p_end")) * 100)
    percent = tostring(progress) .. "%"
    return {
      {"Progress", "FONT_WHITE"},
      {percent, "FONT_BGREY"}
    }
  end