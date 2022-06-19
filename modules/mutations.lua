function mutation_chance(bee_a, bee_b, beehive)
  pos = api_get_inst(beehive)


  --inst_around = api_get_inst(objects_around)

    -- script can be reused for multiple mutations so check the combo we want
    if (bee_a == "ghost" and bee_b == "resin") or (bee_a == "resin" and bee_b == "ghost") then
  
      trees_around = api_get_inst_in_circle("tree", pos["x"], pos["y"], 100)
      chance = api_random(99) + 1
      if chance >= 82 and #trees_around >= 10 then return true end
    end

    if (bee_a == "bark" and bee_b == "trunk") or (bee_a == "trunk" and bee_b == "bark") then
      objects_around = api_get_inst_in_circle("menu_obj", pos["x"], pos["y"], 100)
      tapper_count = 0
      for i, menu_obj in ipairs(objects_around) do
        tapper_around = menu_obj["oid"]
        if tapper_around == "tapper" then
          api_create_log("debug", menu_obj["oid"])
          tapper_count = tapper_count + 1
        end
      end
      chance = api_random(99) + 1
      if chance >= 75 and tapper_count >= 5 then return true end
    end




    if (bee_a == "resin" and bee_b == "trunk") or (bee_a == "trunk" and bee_b == "resin") then
      objects_around1 = api_get_inst_in_circle("obj", pos["x"], pos["y"], 100)
      maple_tree_count = 0
      for i, obj in ipairs(objects_around1) do
        maple_trees_around = obj["oid"]
        if maple_trees_around == "natura_bees_maple_tree" then
          api_create_log("debug", obj["oid"])
          maple_tree_count = maple_tree_count + 1
        end
      end
      chance = api_random(99) + 1
      if chance >= 1 and maple_tree_count >= 5 then return true end
    end

    --[[if (bee_a == "floral" and bee_b == "floral") or (bee_a == "" and bee_b == "") then
  
      aquatic1 = api_get_objects(100, "flower2", pos)
      aquatic2 = api_get_objects(100, "flower6", pos)
      aquatic3 = api_get_objects(100, "flower8", pos)
      aquatic4 = api_get_objects(100, "flower11", pos)
      chance = api_random(99) + 1
      if chance >= 50 and #aquatic1 >= 1 and #aquatic2 >= 1 and #aquatic3 >= 1 and #aquatic4 >= 1 then return true end
    end]]

      return false
end