function define_quests()
    quest_def1 = {
        id = "basic_oak",
        title = "First Outburst",
        reqs = {"natura_bees_birch_tree_acorn@5", "natura_bees_mangrove_tree_acorn@5", "natura_bees_pine_tree_acorn@5"},
        icon = "natura_bees_birch_tree_acorn",
        reward = "acorn1@1",
        unlock = {"advanced_oak", "birch_search", "pine_time", "mangrove_grove"},
        unlocked = true
    }
    quest_page1_1 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_1 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def1, quest_page1_1, quest_page2_1, "quest1_unlocks")



    quest_def2 = {
      id = "advanced_oak",
      title = "Enhance Dance",
      reqs = {"natura_bees_acacia_tree_acorn@5", "natura_bees_redwood_tree_acorn@5", "natura_bees_maple_tree_acorn@5"},
      icon = "natura_bees_birch_tree_acorn",
      reward = "acorn1@1",
      unlock = {"fruit_pursuit"},
      unlocked = true
    }
   quest_page1_2 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_2 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def2, quest_page1_2, quest_page2_2, "quest2_unlocks")



    quest_def3 = {
      id = "birch_search",
      title = "Birch Search",
      reqs = {"natura_bees_willow_tree_acorn@5", "natura_bees_sakura_tree_acorn@5" --[[,"natura_bees_mahogany_tree_acorn@5"]]},
      icon = "natura_bees_birch_tree_acorn",
      reward = "acorn1@1",
      unlock = {"dry_diversify"},
      unlocked = true
    }
   quest_page1_3 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_3 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def3, quest_page1_3, quest_page2_3, "quest3_unlocks")



    quest_def4 = {
      id = "pine_time",
      title = "Pine Time",
      reqs = {"natura_bees_araucaria_tree_acorn@5", "natura_bees_cypress_tree_acorn@5" --[[, "natura_bees_cedar_tree_acorn@5"]]},
      icon = "natura_bees_birch_tree_acorn",
      reward = "acorn1@1",
      unlock = {},
      unlocked = true
    }
   quest_page1_4 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_4 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def4, quest_page1_4, quest_page2_4, "quest4_unlocks")



    quest_def5 = {
      id = "mangrove_grove",
      title = "Mangrove Grove",
      reqs = {"natura_bees_ash_tree_acorn@5", "natura_bees_palm_tree_acorn@5", "natura_bees_jacaranda_tree_acorn@5"},
      icon = "natura_bees_birch_tree_acorn",
      reward = "acorn1@1",
      unlock = {},
      unlocked = true
    }
   quest_page1_5 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_5 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def5, quest_page1_5, quest_page2_5, "quest5_unlocks")



    quest_def6 = {
      id = "dry_diversify",
      title = "Dry Diversify",
      reqs = {"natura_bees_baobab_tree_acorn@5", --[["natura_bees_paperbark_tree_acorn@5",]] "natura_bees_ipe_tree_acorn@5"},
      icon = "natura_bees_birch_tree_acorn",
      reward = "acorn1@1",
      unlock = {},
      unlocked = true
    }
   quest_page1_6 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_6 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def6, quest_page1_6, quest_page2_6, "quest6_unlocks")



    quest_def7 = {
      id = "fruit_pursuit",
      title = "Fruit Pursuit",
      reqs = {"natura_bees_apple_tree_acorn@5", "natura_bees_guarana_tree_acorn@5"--[[, "natura_bees_coffee_tree_acorn@5"]]},
      icon = "natura_bees_birch_tree_acorn",
      reward = "acorn1@1",
      unlock = {"witch_itch"},
      unlocked = true
    }
   quest_page1_7 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_7 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def7, quest_page1_7, quest_page2_7, "quest7_unlocks")



    quest_def8 = {
      id = "witch_itch",
      title = "Witch Itch",
      reqs = {"natura_bees_rowan_tree_acorn@5", "natura_bees_hawthorn_tree_acorn@5"--[[, "natura_bees_elder_tree_acorn@5"]]},
      icon = "natura_bees_birch_tree_acorn",
      reward = "acorn1@1",
      unlock = {"supernatural_falderal"},
      unlocked = true
    }
   quest_page1_8 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_8 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def8, quest_page1_8, quest_page2_8, "quest8_unlocks")



    quest_def9 = {
      id = "supernatural_falderal",
      title = "Supernatural Falderal",
      reqs = {"natura_bees_cloud_tree_acorn@5", "natura_bees_magma_tree_acorn@5"--[[, "natura_bees_???_tree_acorn@5"]]},
      icon = "natura_bees_birch_tree_acorn",
      reward = "acorn1@1",
      unlock = {},
      unlocked = true
    }
   quest_page1_9 = {
        { text = "Hello this is my quest" },
        { text = "This line is BLUE", color = "FONT_BLUE" }
    }
    quest_page2_9 = {
        { text = "This is cool have a free reward" }
    }

    api_define_quest(quest_def9, quest_page1_9, quest_page2_9, "quest9_unlocks")

end

function quest1_unlocks()
    table.insert(stock1, #stock1+1,"natura_bees_birch_tree_acorn")
    table.insert(stock1, #stock1+1,"natura_bees_mangrove_tree_acorn")
    table.insert(stock1, #stock1+1,"natura_bees_pine_tree_acorn")
    changing_stock[2] = stock1
end

function quest2_unlocks()
  table.insert(stock1, #stock1+1,"natura_bees_acacia_tree_acorn")
  table.insert(stock1, #stock1+1,"natura_bees_redwood_tree_acorn")
  table.insert(stock1, #stock1+1,"natura_bees_maple_tree_acorn")
  changing_stock[2] = stock1
end

function quest3_unlocks()
  table.insert(stock1, #stock1+1,"natura_bees_willow_tree_acorn")
  table.insert(stock1, #stock1+1,"natura_bees_sakura_tree_acorn")
  --table.insert(stock1, #stock1+1,"natura_bees_mahogany_tree_acorn")
  changing_stock[2] = stock1
end

function quest4_unlocks()
  table.insert(stock1, #stock1+1,"natura_bees_araucaria_tree_acorn")
  table.insert(stock1, #stock1+1,"natura_bees_cypress_tree_acorn")
  --table.insert(stock1, #stock1+1,"natura_bees_cedar_tree_acorn")
  changing_stock[2] = stock1
end

function quest5_unlocks()
  table.insert(stock2, #stock2+1,"natura_bees_ash_tree_acorn")
  table.insert(stock2, #stock2+1,"natura_bees_palm_tree_acorn")
  table.insert(stock2, #stock2+1,"natura_bees_jacaranda_tree_acorn")
  changing_stock[2] = stock2
end

function quest6_unlocks()
  table.insert(stock2, #stock2+1,"natura_bees_baobab_tree_acorn")
  --table.insert(stock1, #stock1+1,"natura_bees_paperbark_tree_acorn")
  table.insert(stock2, #stock2+1,"natura_bees_ipe_tree_acorn")
  changing_stock[2] = stock2
end

function quest7_unlocks()
  table.insert(stock2, #stock2+1,"natura_bees_apple_tree_acorn")
  table.insert(stock2, #stock2+1,"natura_bees_guarana_tree_acorn")
  --table.insert(stock1, #stock1+1,"natura_bees_coffee_tree_acorn")
  changing_stock[2] = stock2
end

function quest8_unlocks()
  table.insert(stock2, #stock2+1,"natura_bees_rowan_tree_acorn")
  table.insert(stock2, #stock2+1,"natura_bees_hawthorn_tree_acorn")
  --table.insert(stock1, #stock1+1,"natura_bees_elder_tree_acorn")
  changing_stock[2] = stock2
end

function quest9_unlocks()
  table.insert(stock3, #stock3+1,"natura_bees_cloud_tree_acorn")
  table.insert(stock3, #stock3+1,"natura_bees_magma_tree_acorn")
  --table.insert(stock1, #stock1+1,"natura_bees_???_tree_acorn")
  changing_stock[2] = stock3
end



--[[birch_discovery = api_check_discovery("natura_bees_birch_tree_sapling")
if birch_discovery == true then
  table.insert(stock1, "natura_bees_birch_tree_sapling")
  changing_stock[2] = stock1
end

maple_discovery = api_check_discovery("natura_bees_maple_tree_sapling")
if maple_discovery == true then
  table.insert(stock1, "natura_bees_maple_tree_sapling")
  changing_stock[2] = stock1
end

pine_discovery = api_check_discovery("natura_bees_pine_tree_sapling")
if pine_discovery == true then
  table.insert(stock1, "natura_bees_pine_tree_sapling")
  changing_stock[2] = stock1
end

mangrove_discovery = api_check_discovery("natura_bees_mangrove_tree_sapling")
    if mangrove_discovery == true then
      table.insert(stock1, "natura_bees_mangrove_tree_sapling")
      changing_stock[2] = stock1
    end]]