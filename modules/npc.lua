function npc_definition()
    npc_def = {
        id = 2008,
        name = "Ashley, the Arborist",
        pronouns = "She/Her",
        tooltip = "May the cherries blossom for you",
        shop = true,
        walking = true,
        stock = {"log"},
        specials = {"natura_bees_seed_exchanger", "natura_bees_seed_exchanger", "natura_bees_seed_exchanger"},
        dialogue = {"Well, this is a test.",
        "Have you heard of the tragedy of Darth Plaguis, the Wise?"
        },
        greeting = "May the cherries blossom for you"
    }

    api_define_npc(npc_def,
    "sprites/ashley_standing.png",
    "sprites/ashley_standing_h.png",
    "sprites/ashley_walking.png",
    "sprites/ashley_walking_h.png",
    "sprites/ashley_head.png",
    "sprites/ashley_bust.png",
    "sprites/ashley_item.png",
    "sprites/npc_dialogue_menu.png",
    "sprites/npc_shop_menu.png"
  )
end



stock1 = {"log", "log", "log"}
stock2 = {"log"}
changing_stock = {1, stock1, stock2}

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
      api_slot_set(shop_slots[i+1]["id"],stock_table[stock_table[1]+1][i],0)
    end
    if i_end < 10 then
      for i=i_end+1, 10 do
        api_slot_clear(shop_slots[i+1]["id"])
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
