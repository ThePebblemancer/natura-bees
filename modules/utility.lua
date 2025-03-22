--[[saved_first = {
  data = "my data",
  times_saved = false
}]]






function destroy(id, x, y, oid)

  --logs and acorns
  mouse_pos = api_get_mouse_position()
  if oid == "natura_bees_birch_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_maple_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_pine_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_mangrove_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_willow_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_redwood_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_acacia_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_sakura_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_araucaria_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_cypress_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_ash_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_palm_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_jacaranda_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_baobab_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_ipe_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_apple_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_guarana_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_rowan_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_hawthorn_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_cloud_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end
  if oid == "natura_bees_magma_tree" then
    api_create_item("log", api_random_range(1, 3), mouse_pos["x"], mouse_pos["y"], nil)
  end

  --Bees
  if gen_complete == true then
    if oid == "natura_bees_birch_tree" then
      chance = api_random(1)
      if chance == 0 then
        api_log("debug", "lucky. have a bee")
        stats = api_create_bee_stats("treetop", false)
        api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
      end
    end
  if oid == "tree" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("bark", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "natura_bees_mangrove_tree" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("root", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "natura_bees_pine_tree" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("trunk", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "tapper" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("resin", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "stone" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("ghost", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "flower1" or oid == "flower3" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("floral", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "flower2" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("lotus", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "natura_bees_maple_tree" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("trunk", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
  if oid == "tree" or oid == "natura_bees_birch_tree" or oid == "natura_bees_maple_tree" or oid == "natura_bees_pine_tree" or oid == "natura_bees_mangrove_tree" or oid == "flower3" or oid == "flower1" or oid == "flower2" or oid == "shrub" then
    chance = api_random(1)
    if chance == 0 then
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("nature", false)
      api_create_item("bee", 1, mouse_pos["x"], mouse_pos["y"], stats)
    end
  end
end

--Creating Trees
--IMPORTANT: MOVE THIS TO CREATE HOOK
  if oid == "natura_bees_birch_tree_acorn" then
    birch_dummy = api_get_objects(10, "natura_bees_birch_tree_dummy", id)
    birch_dummy_n = #birch_dummy
    if birch_dummy_n > 0 then
      for i=1, birch_dummy_n do
        api_destroy_inst(birch_dummy[i]["id"])
      end
      api_create_obj("natura_bees_birch_tree", x, y-16)
    end
  end
  if oid == "natura_bees_maple_tree_acorn" then
    maple_dummy = api_get_objects(10, "natura_bees_maple_tree_dummy", id)
    maple_dummy_n = #maple_dummy
    if maple_dummy_n > 0 then
      for i=1, maple_dummy_n do
        api_destroy_inst(maple_dummy[i]["id"])
      end
      api_create_obj("natura_bees_maple_tree", x-2, y-17)
    end
  end
  if oid == "natura_bees_pine_tree_acorn" then
    pine_dummy = api_get_objects(10, "natura_bees_pine_tree_dummy", id)
    pine_dummy_n = #pine_dummy
    if pine_dummy_n > 0 then
      for i=1, pine_dummy_n do
        api_destroy_inst(pine_dummy[i]["id"])
      end
      api_create_obj("natura_bees_pine_tree", x, y-19)
    end
  end
  if oid == "natura_bees_mangrove_tree_acorn" then
    mangrove_dummy = api_get_objects(10, "natura_bees_mangrove_tree_dummy", id)
    mangrove_dummy_n = #mangrove_dummy
    if mangrove_dummy_n > 0 then
      for i=1, mangrove_dummy_n do
        api_destroy_inst(mangrove_dummy[i]["id"])
      end
      api_create_obj("natura_bees_mangrove_tree", x-3, y-16)
    end
  end
  if oid == "natura_bees_willow_tree_acorn" then
    willow_dummy = api_get_objects(10, "natura_bees_willow_tree_dummy", id)
    willow_dummy_n = #willow_dummy
    if willow_dummy_n > 0 then
      for i=1, willow_dummy_n do
        api_destroy_inst(willow_dummy[i]["id"])
      end
      api_create_obj("natura_bees_willow_tree", x, y-18)
    end
  end
  if oid == "natura_bees_redwood_tree_acorn" then
    redwood_dummy = api_get_objects(10, "natura_bees_redwood_tree_dummy", id)
    redwood_dummy_n = #redwood_dummy
    if redwood_dummy_n > 0 then
      for i=1, redwood_dummy_n do
        api_destroy_inst(redwood_dummy[i]["id"])
      end
      api_create_obj("natura_bees_redwood_tree", x+1, y-37)
    end
  end
  if oid == "natura_bees_acacia_tree_acorn" then
    acacia_dummy = api_get_objects(10, "natura_bees_acacia_tree_dummy", id)
    acacia_dummy_n = #acacia_dummy
    if acacia_dummy_n > 0 then
      for i=1, acacia_dummy_n do
        api_destroy_inst(acacia_dummy[i]["id"])
      end
      api_create_obj("natura_bees_acacia_tree", x-12, y-18)
    end
  end
  if oid == "natura_bees_sakura_tree_acorn" then
    sakura_dummy = api_get_objects(10, "natura_bees_sakura_tree_dummy", id)
    sakura_dummy_n = #sakura_dummy
    if sakura_dummy_n > 0 then
      for i=1, sakura_dummy_n do
        api_destroy_inst(sakura_dummy[i]["id"])
      end
      api_create_obj("natura_bees_sakura_tree", x, y-18)
    end
  end
  if oid == "natura_bees_araucaria_tree_acorn" then
    araucaria_dummy = api_get_objects(10, "natura_bees_araucaria_tree_dummy", id)
    araucaria_dummy_n = #araucaria_dummy
    if araucaria_dummy_n > 0 then
      for i=1, araucaria_dummy_n do
        api_destroy_inst(araucaria_dummy[i]["id"])
      end
      api_create_obj("natura_bees_araucaria_tree", x-6, y-20)
    end
  end
  if oid == "natura_bees_cypress_tree_acorn" then
    cypress_dummy = api_get_objects(10, "natura_bees_cypress_tree_dummy", id)
    cypress_dummy_n = #cypress_dummy
    if cypress_dummy_n > 0 then
      for i=1, cypress_dummy_n do
        api_destroy_inst(cypress_dummy[i]["id"])
      end
      api_create_obj("natura_bees_cypress_tree", x+2, y-25)
    end
  end
  if oid == "natura_bees_ash_tree_acorn" then
    ash_dummy = api_get_objects(10, "natura_bees_ash_tree_dummy", id)
    ash_dummy_n = #ash_dummy
    if ash_dummy_n > 0 then
      for i=1, ash_dummy_n do
        api_destroy_inst(ash_dummy[i]["id"])
      end
      api_create_obj("natura_bees_ash_tree", x-12, y-21)
    end
  end
  if oid == "natura_bees_palm_tree_acorn" then
    palm_dummy = api_get_objects(10, "natura_bees_palm_tree_dummy", id)
    palm_dummy_n = #palm_dummy
    if palm_dummy_n > 0 then
      for i=1, palm_dummy_n do
        api_destroy_inst(palm_dummy[i]["id"])
      end
      api_create_obj("natura_bees_palm_tree", x-4, y-25)
    end
  end
  if oid == "natura_bees_jacaranda_tree_acorn" then
    jacaranda_dummy = api_get_objects(10, "natura_bees_jacaranda_tree_dummy", id)
    jacaranda_dummy_n = #jacaranda_dummy
    if jacaranda_dummy_n > 0 then
      for i=1, jacaranda_dummy_n do
        api_destroy_inst(jacaranda_dummy[i]["id"])
      end
      api_create_obj("natura_bees_jacaranda_tree", x-14, y-23)
    end
  end
  if oid == "natura_bees_baobab_tree_acorn" then
    baobab_dummy = api_get_objects(10, "natura_bees_baobab_tree_dummy", id)
    baobab_dummy_n = #baobab_dummy
    if baobab_dummy_n > 0 then
      for i=1, baobab_dummy_n do
        api_destroy_inst(baobab_dummy[i]["id"])
      end
      api_create_obj("natura_bees_baobab_tree", x-6, y-22)
    end
  end
  if oid == "natura_bees_ipe_tree_acorn" then
    ipe_dummy = api_get_objects(10, "natura_bees_ipe_tree_dummy", id)
    ipe_dummy_n = #ipe_dummy
    if ipe_dummy_n > 0 then
      for i=1, ipe_dummy_n do
        api_destroy_inst(ipe_dummy[i]["id"])
      end
      api_create_obj("natura_bees_ipe_tree", x, y-25)
    end
  end
  if oid == "natura_bees_apple_tree_acorn" then
    apple_dummy = api_get_objects(10, "natura_bees_apple_tree_dummy", id)
    apple_dummy_n = #apple_dummy
    if apple_dummy_n > 0 then
      for i=1, apple_dummy_n do
        api_destroy_inst(apple_dummy[i]["id"])
      end
      api_create_obj("natura_bees_apple_tree", x-4, y-16)
    end
  end
  if oid == "natura_bees_guarana_tree_acorn" then
    guarana_dummy = api_get_objects(10, "natura_bees_guarana_tree_dummy", id)
    guarana_dummy_n = #guarana_dummy
    if guarana_dummy_n > 0 then
      for i=1, guarana_dummy_n do
        api_destroy_inst(guarana_dummy[i]["id"])
      end
      api_create_obj("natura_bees_guarana_tree", x-6, y-16)
    end
  end
  if oid == "natura_bees_rowan_tree_acorn" then
    rowan_dummy = api_get_objects(10, "natura_bees_rowan_tree_dummy", id)
    rowan_dummy_n = #rowan_dummy
    if rowan_dummy_n > 0 then
      for i=1, rowan_dummy_n do
        api_destroy_inst(rowan_dummy[i]["id"])
      end
      api_create_obj("natura_bees_rowan_tree", x-1, y-15)
    end
  end
  if oid == "natura_bees_hawthorn_tree_acorn" then
    hawthorn_dummy = api_get_objects(10, "natura_bees_hawthorn_tree_dummy", id)
    hawthorn_dummy_n = #hawthorn_dummy
    if hawthorn_dummy_n > 0 then
      for i=1, hawthorn_dummy_n do
        api_destroy_inst(hawthorn_dummy[i]["id"])
      end
      api_create_obj("natura_bees_hawthorn_tree", x-7, y-24)
    end
  end
  if oid == "natura_bees_cloud_tree_acorn" then
    cloud_dummy = api_get_objects(10, "natura_bees_cloud_tree_dummy", id)
    cloud_dummy_n = #cloud_dummy
    if cloud_dummy_n > 0 then
      for i=1, cloud_dummy_n do
        api_destroy_inst(cloud_dummy[i]["id"])
      end
      api_create_obj("natura_bees_cloud_tree", x-3, y-26)
    end
  end
  if oid == "natura_bees_magma_tree_acorn" then
    magma_dummy = api_get_objects(10, "natura_bees_magma_tree_dummy", id)
    magma_dummy_n = #magma_dummy
    if magma_dummy_n > 0 then
      for i=1, magma_dummy_n do
        api_destroy_inst(magma_dummy[i]["id"])
      end
      api_create_obj("natura_bees_magma_tree", x-1, y-23)
    end
  end
  --[[if oid == "natura_bees_mystery_seed_ii" then
    tier_ii = api_choose({"seedling4", "seedling5", "seedling7"})
    api_create_obj(tier_ii, x, y)
  end
  if oid == "natura_bees_mystery_seed_iii" then
    tier_iii = api_choose({"seedling9", "seedling10", "seedling12", "seedling13"})
    api_create_obj(tier_iii, x, y)
  end
  if oid == "natura_bees_aquatic_mystery_seed" then
    tier_aquatic = api_choose({"seedling2", "seedling6", "seedling8", "seedling11"})
    api_create_obj(tier_aquatic, x, y)
  end]]
end

--[[spr_id = nil
function draw()
  spr_id = api_get_sprite("sp_natura_bees_acacia_tree")
  api_draw_sprite(spr_id, 0, 100, 50)
end]]



function create(id, x, y, oid, inst_type)
  if oid == "natura_bees_birch_tree" then
    random_range = api_random_range(2.0, 4.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
    --api_set_property(id, "sy", y + 11)
  end
  if oid == "natura_bees_pine_tree" then
    random_range = api_random_range(4.0, 6.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
    --api_set_property(id, "sy", y + 11)
  end
  if oid == "natura_bees_mangrove_tree" then
    random_range = api_random_range(4.0, 6.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
    --api_set_property(id, "sy", y + 17) 
  end
  if oid == "natura_bees_maple_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
    --api_set_property(id, "sy", y + 11)
  end
  if oid == "natura_bees_willow_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_redwood_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_acacia_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
    api_set_property(id, "sy", 18)
  end
  if oid == "natura_bees_sakura_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_araucaria_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_cypress_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_ash_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_palm_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_jacaranda_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_baobab_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_ipe_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_apple_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_guarana_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_rowan_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_hawthorn_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_cloud_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end
  if oid == "natura_bees_magma_tree" then
    random_range = api_random_range(3.0, 5.0)
    api_set_property(id, "total_health", random_range)
    api_set_property(id, "current_health", random_range)
  end






  if oid == "natura_bees_birch_tree_acorn" or oid == "natura_bees_maple_tree_acorn" or oid == "natura_bees_redwood_tree_acorn" or oid == "natura_bees_acacia_tree_acorn" or oid == "natura_bees_araucaria_tree_acorn" or oid == "natura_bees_ash_tree_acorn" or oid == "natura_bees_palm_tree_acorn" or oid == "natura_bees_jacaranda_tree_acorn" or oid == "natura_bees_baobab_tree_acorn" or oid == "natura_bees_ipe_tree_acorn" or oid == "natura_bees_apple_tree_acorn" or oid == "natura_bees_hawthorn_tree_acorn" or oid == "natura_bees_cloud_tree_acorn" or oid == "natura_bees_magma_tree_acorn" then
    if api_get_ground(x, y) == "grass1" then
      return true
    else
      api_destroy_inst(id)
    end
  end
  if oid == "natura_bees_pine_tree_acorn" or oid == "natura_bees_sakura_tree_acorn" or oid == "natura_bees_cypress_tree_acorn" or oid == "natura_bees_rowan_tree_acorn" then
    if api_get_ground(x, y) == "grass3" then
      return true
    else
      api_destroy_inst(id)
    end
  end
  if oid == "natura_bees_mangrove_tree_acorn" or oid == "natura_bees_willow_tree_acorn" or oid == "natura_bees_guarana_tree_acorn" then
    if api_get_ground(x, y) == "grass2" then
      return true
    else
      api_destroy_inst(id)
    end
  end





  if oid == "natura_bees_mystery_seed_i" then
    tier_i = api_choose({"seedling1", "seedling3"})
    api_create_obj(tier_i, x, y)
    api_destroy_inst(id)
  end
  if oid == "natura_bees_mystery_seed_ii" then
    tier_ii = api_choose({"seedling4", "seedling5", "seedling7"})
    api_create_obj(tier_ii, x, y)
    api_destroy_inst(id)
  end
  if oid == "natura_bees_mystery_seed_iii" then
    tier_iii = api_choose({"seedling9", "seedling10", "seedling12", "seedling13"})
    api_create_obj(tier_iii, x, y)
    api_destroy_inst(id)
  end
  if oid == "natura_bees_aquatic_mystery_seed" then
    tier_aquatic = api_choose({"seedling2", "seedling6", "seedling8", "seedling11"})
    api_create_obj(tier_aquatic, x, y)
    api_destroy_inst(id)
  end
end




function click(button, click_type)
  if button == "LEFT" and click_type == "PRESSED" then
    mouse_pos = api_get_mouse_position()
    highlighted = api_get_highlighted("obj")
    equipped = api_get_equipped()
    if highlighted ~= nil then
      inst = api_get_inst(highlighted)
      if inst["oid"] == "natura_bees_birch_tree" or inst["oid"] == "natura_bees_maple_tree" or inst["oid"] == "natura_bees_pine_tree" or inst["oid"] == "natura_bees_mangrove_tree" or inst["oid"] == "natura_bees_willow_tree" or inst["oid"] == "natura_bees_redwood_tree" or inst["oid"] == "natura_bees_acacia_tree" or inst["oid"] == "natura_bees_sakura_tree" or inst["oid"] == "natura_bees_araucaria_tree" or inst["oid"] == "natura_bees_cypress_tree" or inst["oid"] == "natura_bees_ash_tree" or inst["oid"] == "natura_bees_palm_tree" or inst["oid"] == "natura_bees_jacaranda_tree" or inst["oid"] == "natura_bees_baobab_tree" or inst["oid"] == "natura_bees_ipe_tree" or inst["oid"] == "natura_bees_apple_tree" or inst["oid"] == "natura_bees_guarana_tree" or inst["oid"] == "natura_bees_rowan_tree" or inst["oid"] == "natura_bees_hawthorn_tree" or inst["oid"] == "natura_bees_cloud_tree" or inst["oid"] == "natura_bees_magma_tree" then
        --current_health2 = current_health2 - 0.1
        --api_log("highlighted", "Found a block at coordinates : "..tostring(highlighted["x"])..";"..tostring(highlighted["y"]).. " with this OID : "..highlighted["oid"])
        --NEEDS NEW API api_play_sound("chop_1")
        health_now = api_get_property(highlighted, "current_health")
        if equipped == "axe1" or equipped == "axe2" then
          api_set_property(highlighted, "current_health", health_now - 1)
          api_refresh_tooltip()
          if health_now <= 1.1 then
            api_destroy_inst(highlighted)  
          end
        elseif equipped == "axe3" or equipped == "axe4" then
          api_set_property(highlighted, "current_health", health_now - 2)
          api_refresh_tooltip()
          if health_now <= 2.1 then
            api_destroy_inst(highlighted)  
          end
        else
          api_set_property(highlighted, "current_health", health_now - 0.1)
          api_refresh_tooltip()
          if health_now <= 0.1 then
            api_destroy_inst(highlighted)  
          end
        end
        if health_now <= 0.1 then
          api_destroy_inst(highlighted)  
        end
      end
      if equipped == "spade1" or equipped == "spade2" or equipped == "spade3" then
        if inst["oid"] == "natura_bees_birch_tree_acorn" then
          api_destroy_inst(highlighted)  
          api_create_item("natura_bees_birch_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_maple_tree_acorn" then
          api_destroy_inst(highlighted)  
          api_create_item("natura_bees_maple_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_pine_tree_acorn" then
          api_destroy_inst(highlighted)  
          api_create_item("natura_bees_pine_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_mangrove_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_mangrove_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_willow_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_willow_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_redwood_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_redwood_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_acacia_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_acacia_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_sakura_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_sakura_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_araucaria_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_araucaria_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_cypress_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_cypress_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_ash_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_ash_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_palm_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_palm_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_jacaranda_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_jacaranda_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_baobab_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_baobab_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_ipe_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_ipe_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_apple_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_apple_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_guarana_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_guarana_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_rowan_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_rowan_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_hawthorn_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_hawthorn_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_cloud_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_cloud_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        elseif inst["oid"] == "natura_bees_magma_tree_acorn" then
          api_destroy_inst(highlighted)
          api_create_item("natura_bees_magma_tree_acorn", 1, mouse_pos["x"], mouse_pos["y"], nil)
        end
        
      end
      --[[if inst["oid"] == "flower2008" then
        api_create_obj("natura_bees_maple_tree", inst["x"], inst["y"])
      end]]
      --[[if inst["oid"] == "tree" then
        api_create_timer("giver", 0.1)
      end]]
    end
  end
end
--[[function click2(button, click_type)
  if button == "LEFT" and click_type == "PRESSED" then
    api_log("debug", "clicked")
    birch_tree_checker = api_get_highlighted("obj")
    if birch_tree_checker ~= nil then
      api_log("debug", "clicked on something")
      inst2 = api_get_inst(birch_tree
_checker)
      if inst2["oid"] == "birch_tree
" then
        api_log("debug", "clicked on a fake tree")
        item_equiped = api_get_equipped()
        if item_equiped == nil then
          api_log("debug", "has nothing equipped")
          birch_tree
    _number2 = api_get_menu_objects(nil, "natura_bees_birch_tree
    ")
          current_health2 = current_health2 - 0.1
          api_define_property("birch_tree
    _number2", "current_health", current_health2)
        end
      end
    end
  end
end]]


--[[function giver()
  tree_checker = api_get_highlighted("obj")
  if tree_checker == nil then
    chance = api_random(1)
    if chance == 0 then
      mouse_pos2 = api_get_mouse_position()
      api_log("debug", "lucky. have a bee")
      stats = api_create_bee_stats("arbor", false)
      api_create_item("bee", 1, mouse_pos2["x"], mouse_pos2["y"], stats)
    end
  end
end]]


-- local mouse_pos = api_get_mouse_position()
-- api_create_item("bee", 1, mouse_pos.x, mouse_pos.y, api_create_bee_stats("arbor", false)) -- credits: ThatGravyBoat


function clock()

  time = api_get_time()
  hour = time["clock"]
  if hour == "17:10" then
    --if api_gp(api_gp(api_get_menu_objects(nil, "npc2008")[1]["menu_id"], "shop"), "close") == true then
      change_stock("npc2008", changing_stock)
    --end
  end
end

--[[function tick()
  if inst["current_health"] == 0 then
    api_destroy_inst(highlighted)
  end
end]]
--birch_tr_present = api_get_inst_in_circle("obj", player["x"], player ["y"], 40)
--choose_tree = api_choose(birch_tr_present)



--[[function save()
  saved_first["times_saved"] = true
  api_set_data(saved_first)
end


function data(ev, data)
  if ev == "SAVE" and data ~=nil then
    api_log("save", "Save complete!")
  end
end]]



--[[function worldgen()
  gen_complete = false
  trees = api_all_trees()]]
  --birch_tree_present2 = api_get_objects(nil, "natura_bees_birch_tree")
  --if saved_first["times_saved"] == false then
  --if #birch_tree_present2 == 0 then
    --[[for i=1,#trees do
      biome = api_gp(trees[i], "biome")
      if biome == "forest" then
        if api_random(100) < 10 then
          api_create_obj("natura_bees_birch_tree", api_gp(trees[i], "x"), api_gp(trees[i], "y"))
          api_destroy_inst(trees[i])
        end
      elseif biome == "snow" then
        if api_random(100) < 10 then
          api_create_obj("natura_bees_pine_tree", api_gp(trees[i], "x"), api_gp(trees[i], "y"))
          api_destroy_inst(trees[i])
        end
      elseif biome == "hallow" then
        if api_random(100) < 10 then
          api_create_obj("natura_bees_maple_tree", api_gp(trees[i], "x"), api_gp(trees[i], "y"))
          api_destroy_inst(trees[i])
        end
      elseif biome == "swamp" then
        if api_random(100) < 10 then
          api_create_obj("natura_bees_mangrove_tree", api_gp(trees[i], "x"), api_gp(trees[i], "y"))
          api_destroy_inst(trees[i])
        end
      end
    end]]
      --[[tree_chosen = api_choose(trees)
      ashley_posx = api_gp(tree_chosen, "x")
      ashley_posy = api_gp(tree_chosen, "y")]]    
  --end



function ready()
  api_log("debug", "generated. gen = false")
  friend = api_get_menu_objects(nil, "npc2008")
  if #friend == 0 then
    api_log("debug", "no friend found. creating one.")
    api_create_obj("npc2008", 3451, 827)
    api_create_timer("gen_complete_timer", 10)
  end
  unlock = api_unlock_quest("basic_oak")
end

function gen_complete_timer()
  gen_complete = true
end