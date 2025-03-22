function npc_definition2()

    dialogue2008 = {}
    dialogue2008["A"] = {
      P = "I am a prompt for dialogue A!",
      D = {
        "I am the first paragraph for dialogue A",
        "All NPCs need at least a dialogue A or they break",
        "This is a chance for you to introduce an NPC",
        "Goodbye!"
      },
      A = {
        "$action01",
        "$action01",
        "$action01",
        "$action49"
      }
    }
    dialogue2008["B"] = {
      P = "I am a new prompt for dialogue B!",
      D = {
        "Well done on getting a glossy pearl!"
      },
      A = {
        "$action49"
      }
    }


    npc_def = {
        id = 2008,
        name = "Ashley, the Arborist",
        pronouns = "She/Her",
        tooltip = "May the cherries blossom for you",
        specials = {"natura_bees_seed_exchanger", "natura_bees_seed_exchanger", "natura_bees_seed_exchanger"},
        stock = {"log"},
        greeting = "May the cherries blossom for you",
        dialogue = dialogue2008,
        walking = true,
        shop = true
    }

    api_define_npc2(npc_def,
    "sprites/ashley_standing.png",
    "sprites/ashley_standing_h.png",
    "sprites/ashley_walking.png",
    "sprites/ashley_walking_h.png",
    "sprites/ashley_head.png",
    "sprites/ashley_bust.png",
    "sprites/ashley_item.png",
    "sprites/npc_dialogue_menu.png",
    "sprites/npc_shop_menu.png",
    "npc2008_dialogue_check"
  )
end

function npc2008_dialogue_check()
  if api_check_discovery("glossypearl") then
    return {'B'}
  end
  return {}
end



stock1 = {}
stock2 = {}
stock3 = {}
changing_stock = {1, stock1, stock2, stock3}

--[[function discovery()
  bouquet = api_check_discovery("natura_bees_birch_tree_acorn")
  if bouquet == true then
    table.insert(stock1, #stock1+1,"natura_bees_birch_tree_acorn")
  end
end]]


function change_stock(npc_id, stock_table)
  local npc_object = api_get_menu_objects(nil, npc_id)
  local shop_id = api_gp(npc_object[1]["menu_id"], "shop")
  if stock_table[1] > #stock_table-1 then
    stock_table[1] = 1
  end
  if shop_id ~= nil then
    local shop_slots = api_get_slots(shop_id)
    local i_end = #stock_table[stock_table[1]+1]
    if i_end > 10 then
      i_end = 10
    end
    for i=1, i_end do
      api_slot_set(shop_slots[i+2]["id"],stock_table[stock_table[1]+1][i],0)
    end
    if i_end < 10 then
      for i=i_end+1, 10 do
        api_slot_clear(shop_slots[i+2]["id"])
      end
    end

    if stock_table[1]+1 == #stock_table then
      stock_table[1] = 1
    else
      stock_table[1] = stock_table[1] + 1
    end
  end
end






--[[function time_and_discovery()
  time = api_get_time()
  hour = time["clock"]
  if hour == "18:01" then
    if api_gp(api_gp(api_get_menu_objects(nil, "npc2008")[1]["menu_id"], "shop"), "open") == true then
      change_stock("npc2008", changing_stock)
    end
  end
end]]