api_define_trait("in_natura", {
    common = {"in_natura"}, 
    uncommon = {"in_natura"},
    verdant = {"modified"},
    vibrant = {"modified"}
  }, {"none"})



INDUSTRIAL_BEES = {}
MAN_MADE_BEES = {}
MODIFIED_BEES = {}
IN_NATURA_BEES = {"bee:common", "bee:uncommon"}
MORE_THAN_NATURAL_BEES = {}
OVERLY_NATURAL_BEES = {}
SUPERNATURAL_BEES = {}

api_define_validation_icon("customX:sapling", "sprites/validation_seed.png")




seed_exchanger_layout = {
    {28, 21},
    {50, 21, "Input", {"bee"}},
    {17, 40, "Input", {"bee"}},
    {39, 40, "Input", {"customX:sapling"}},
    {61, 40},
    {112, 40, "Output"},
    {28, 59},
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
    api_define_menu_object(menu_def, "sprites/test_mutator.png", "sprites/seed_exchanger_gui.png", {
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
    for i=1, #IN_NATURA_BEES do
        slot2 = api_slot_item_id(menu_id, 2)
        slot3 = api_slot_item_id(menu_id, 3)
        slot8 = api_slot_item_id(menu_id, 8)
        api_log("debug", slot2[menu_id])
        api_log("debug", slot3)
        api_log("debug", slot8)
        if slot2 == IN_NATURA_BEES[i] then
            return true
        end
    return false
    end
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
        input_slot = api_slot_match_range(menu_id, {"bee"}, {1, 2, 3, 4, 5, 7, 8}, true)
        -- assuming there is a slot width stuff
        if input_slot ~= nil then
            
            if recipes() == true then
                -- remove 1 from slot
                api_slot_decr(input_slot["id"])

                -- add seed to output
                seed_item = api_choose({"seed1", "seed2", "seed3"})
                output_slot = api_slot_match_range(menu_id, {"", seed_item}, {6}, true)
                if output_slot ~= nil then
                    -- if empty slot add 1 seed item
                    if output_slot["item"] == "" then
                        api_slot_set(output_slot["id"], seed_item, 1)
                        -- otherwise add to existing seed item in slot
                    else 
                        api_slot_incr(output_slot["id"], 1)
                    end
                end
            end

            -- recheck input, if nothing then stop working
            input_slot = api_slot_match_range(menu_id, {"bee"}, {1, 2, 3, 4, 5, 7, 8}, true)
            if input_slot == nil then
                    api_sp(menu_id, "working", false) end
            end
        end
    end
end


function seed_exchanger_change(menu_id)
    -- if we have items in the first four slots let's get to work
    input_slot = api_slot_match_range(menu_id, {"bee"}, {1, 2, 3, 4, 5, 7, 8}, true)
    if input_slot ~= nil then 

        if recipes() == true then
            api_sp(menu_id, "working", true)

    else
        api_sp(menu_id, "working", false)
    end
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