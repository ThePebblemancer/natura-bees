  --Mystery Seed I
  mystery1 = {
    id = "mystery1",
    name = "Mystery Seed I",
    category = "Resource",
    tooltip = "Sprouts into some natural Tier I flowers",
    shop_buy = 0,
    shop_sell = 0,
    placeable = true,
    place_grass = true,
    obj = "natura_bees_mystery_seed_i",
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(mystery1, "sprites/mystery_seed_i_icon.png")
  --Mystery Seed II
  mystery2 = {
    id = "mystery2",
    name = "Mystery Seed II",
    category = "Resource",
    tooltip = "Sprouts into some Tier II flowers",
    shop_buy = 0,
    shop_sell = 0,
    placeable = true,
    place_grass = true,
    obj = "natura_bees_mystery_seed_ii",
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(mystery2, "sprites/mystery_seed_ii_icon.png")
  --Mystery Seed III
  mystery3 = {
    id = "mystery3",
    name = "Mystery Seed III",
    category = "Resource",
    tooltip = "Sprouts into some Tier III flowers",
    shop_buy = 0,
    shop_sell = 0,
    placeable = true,
    place_grass = true,
    obj = "natura_bees_mystery_seed_iii",
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(mystery3, "sprites/mystery_seed_iii_icon.png")
  --Aquatic Mystery Seed
  mysterya = {
    id = "mysterya",
    name = "Hydroponic Mystery Seed",
    category = "Resource",
    tooltip = "Sprouts into some aquatic flowers",
    shop_buy = 0,
    shop_sell = 0,
    placeable = true,
    place_grass = false,
    place_water = true,
    obj = "natura_bees_aquatic_mystery_seed",
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(mysterya, "sprites/aquatic_mystery_seed_icon.png")


  --Amber Chunks
  amber_chunks = {
    id = "amber_chunks",
    name = "Amber Chunks",
    category = "Resource",
    tooltip = "A golden rock! Shiny!",
    shop_buy = 0,
    shop_sell = 0,
    --placeable = true,
    --place_grass = true,
    --obj = "natura_bees_aquatic_mystery_seed",
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(amber_chunks, "sprites/amber_chunks.png")
  --Dust
  --[[dust_def = {
    id = "dust",
    name = "Dust",
    category = "Resource",
    tooltip = "Can be uprooted with a Spade",
    shop_buy = 0,
    shop_sell = 0,
    --placeable = true,
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(dust_def, "sprites/dust.png")]]
  --Leaves
  --[[leaves_def = {
    id = "leaves",
    name = "Leaves",
    category = "Resource",
    tooltip = "Can be uprooted with a Spade",
    shop_buy = 0,
    shop_sell = 0,
    --placeable = true,
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(leaves_def, "sprites/leaves.png")]]
  --Dried Leaves
  --[[dried_leaves_def = {
    id = "dried_leaves",
    name = "Dried Leaves",
    category = "Resource",
    tooltip = "Can be uprooted with a Spade",
    shop_buy = 0,
    shop_sell = 0,
    --placeable = true,
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(dried_leaves_def, "sprites/dried_leaves.png")]]
  --Needle Leaves
  --[[needles_def = {
    id = "needles",
    name = "Needle Leaves",
    category = "Resource",
    tooltip = "Can be uprooted with a Spade",
    shop_buy = 0,
    shop_sell = 0,
    --placeable = true,
    bee_lore = "Plant this seed to see what's inside!"
  }
  api_define_item(needles_def, "sprites/needles.png")]]




--Bees
function define_bee()
  
-- Treetop Bee
    bee_def1 = {
      id = "treetop",
      title = "Treetop",
      latin = "Apis Arborea",
      hint = "Prefering to live in birch trees' treetop, they might appear if you disrupt their homes.",
      desc = "This is just a cool damn bee",
      lifespan = {"Normal"},
      productivity = {"Fast", "Fastest"},
      fertility = {"Fecund", "Prolific"},
      stability = {"Normal", "Stable"},
      behaviour = {"Diurnal"},
      climate = {"Temperate"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "flora2",
      --[[recipes = {
        { a = "arbor", b = "dream", s = "chaotic" }
      },]]
      --calming = {"flower10", "flower11"},
      chance = 100,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_def1, 
      "sprites/treetop_bee.png", "sprites/treetop_shiny.png", 
      "sprites/treetop_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag.png",
      "My Magazine Headline!",
      "My magazine body text!"
    );
    -- add a new mutation for our new bee
    --api_define_bee_recipe("jurassic", "rocky", "arbor", "mutation_chance")
    -- add a new bee trait including our newly defined bee
    --[[api_define_trait("magic", {
      common = {"low"}, 
      dream  = {"low", "medium"}, 
      arbor = {"high"}
    }, {"none"})]];


-- Bark Bee
    bee_def2 = {
        id = "bark",
        title = "Bark",
        latin = "Apis Crusta",
        hint = "Prefering to live in oak trees' bark, they might appear if you disrupt their homes.",
        desc = "This is just a cool damn bee",
        lifespan = {"Short"},
        productivity = {"Slow", "Slowest"},
        fertility = {"Fertile", "Fecund"},
        stability = {"Normal", "Stable"},
        behaviour = {"Diurnal"},
        climate = {"Temperate"},
        rainlover = false,
        snowlover = false,
        grumpy = false,
        produce = "sawdust1",
        --[[recipes = {
          { a = "bark", b = "trunk", s = "resin" }
        },]]
        --calming = {"flower10", "flower11"},
        chance = 100,
        bid = "X3",
        requirement = ""
      }
      -- create new bee
      -- in this example we have a "sprites" folder in our mod root
      api_define_bee(bee_def2, 
        "sprites/bark_bee.png", "sprites/bark_shiny.png", 
        "sprites/bark_hd.png",
        {r=100, g=100, b=100},
        "sprites/bee_mag.png",
        "My Magazine Headline!",
        "My magazine body text!"
      );
      -- add a new mutation for our new bee
      --api_define_bee_recipe("jurassic", "rocky", "crusta", "mutation_chance")
      -- add a new bee trait including our newly defined bee
      --[[api_define_trait("magic", {
        common = {"low"}, 
        dream  = {"low", "medium"}, 
        arbor = {"high"}
      }, {"none"})]];

    
-- Root Bee
    bee_def3 = {
      id = "root",
      title = "Root",
      latin = "Apis Tuberculum",
      hint = "Prefering to live in mangrove trees' roots, they might appear if you disrupt their homes.",
      desc = "This is just a cool damn bee",
      lifespan = {"Normal"},
      productivity = {"Sluggish"},
      fertility = {"Unlucky", "Fertile"},
      stability = {"Normal", "Stable"},
      behaviour = {"Nocturnal"},
      climate = {"Temperate"},
      rainlover = true,
      snowlover = false,
      grumpy = false,
      produce = "flora4",
      --[[recipes = {
        { a = "arbor", b = "dream", s = "chaotic" }
      },]]
      --calming = {"flower10", "flower11"},
      chance = 100,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_def3, 
      "sprites/root_bee.png", "sprites/root_shiny.png", 
      "sprites/root_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag.png",
      "My Magazine Headline!",
      "My magazine body text!"
    );


-- Trunk Bee
    bee_def4 = {
      id = "trunk",
      title = "Trunk",
      latin = "Apis Truncus",
      hint = "Prefering to live in pine trees' trunks, they might appear if you disrupt their homes.",
      desc = "This is just a cool damn bee",
      lifespan = {"Normal"},
      productivity = {"Normal", "Fast"},
      fertility = {"Fertile", "Fecund"},
      stability = {"Normal", "Stable"},
      behaviour = {"Diurnal"},
      climate = {"Temperate"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "flora1",
      --[[recipes = {
        { a = "trunk", b = "bark", s = "resin" }
      },]]
      --calming = {"flower10", "flower11"},
      chance = 100,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_def4, 
      "sprites/trunk_bee.png", "sprites/trunk_shiny.png", 
      "sprites/trunk_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag.png",
      "My Magazine Headline!",
      "My magazine body text!"
    );


-- Floral Bee
    bee_def5 = {
      id = "floral",
      title = "Floral",
      latin = "Apis Pedunculus",
      hint = "Prefering to live in flowers, they might appear if you disrupt their homes.",
      desc = "This is just a cool damn bee",
      lifespan = {"Normal"},
      productivity = {"Normal", "Fast"},
      fertility = {"Fecund", "Prolific"},
      stability = {"Normal"},
      behaviour = {"Diurnal"},
      climate = {"Temperate"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "natura_bees_mystery1",
      --[[recipes = {
        { a = "floral", b = "floral", s = "lotus" }
      },]]
      --calming = {"flower1", "flower2", "flower3"},
      chance = 100,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_def5, 
      "sprites/floral_bee.png", "sprites/floral_shiny.png", 
      "sprites/floral_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag.png",
      "My Magazine Headline!",
      "My magazine body text!"
  );



-- Lotus Bee
    bee_def6 = {
      id = "lotus",
      title = "Lotus",
      latin = "Apis Lotos",
      hint = "Prefering to live in aquactic flowers, they might appear if you disrupt their homes.",
      desc = "This is just a cool damn bee",
      lifespan = {"Normal"},
      productivity = {"Normal", "Fast"},
      fertility = {"Fecund", "Prolific"},
      stability = {"Normal"},
      behaviour = {"Diurnal"},
      climate = {"Temperate"},
      rainlover = true,
      snowlover = false,
      grumpy = false,
      produce = "natura_bees_mysterya",
      --[[recipes = {
        { a = "trunk", b = "bark", s = "resin" }
      },]]
      --calming = {"flower1", "flower2", "flower3"},
      chance = 100,
      bid = "X3",
      requirement = "Needs lots of aquatic flowers nearby"
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_def6, 
      "sprites/lotus_bee.png", "sprites/lotus_shiny.png", 
      "sprites/lotus_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag.png",
      "My Magazine Headline!",
      "My magazine body text!"
  );
    --api_define_bee_recipe("floral", "floral", "lotus", "mutation_chance")



-- Bouquet Bee
    bee_def7 = {
      id = "bouquet",
      title = "Bouquet",
      latin = "Apis Alabastra",
      hint = "Prefering to live in flowers, they might appear if you disrupt their homes.",
       desc = "This is just a cool damn bee",
      lifespan = {"Long"},
      productivity = {"Fast", "Fastest"},
      fertility = {"Prolific", "Swarming"},
      stability = {"Unstable", "Normal"},
      behaviour = {"Diurnal"},
      climate = {"Temperate"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "natura_bees_mystery2",
      recipes = {
        { a = "floral", b = "lotus", s = "bouquet" }
      },
      --calming = {"flower1", "flower2", "flower3"},
      --chance = 100,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_def7, 
      "sprites/bouquet_bee.png", "sprites/bouquet_shiny.png", 
      "sprites/bouquet_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag.png",
      "My Magazine Headline!",
      "My magazine body text!"
);



-- Garden Bee
    bee_def8 = {
      id = "garden",
      title = "Garden",
      latin = "Apis Flos",
      hint = "Prefering to live in flowers, they might appear if you disrupt their homes.",
      desc = "This is just a cool damn bee",
      lifespan = {"Long"},
      productivity = {"Fast", "Fastest", "Brisk"},
      fertility = {"Swarming"},
      stability = {"Erratic", "Unstable"},
      behaviour = {"Diurnal"},
      climate = {"Temperate"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "natura_bees_mystery3",
      recipes = {
      { a = "floral", b = "bouquet", s = "garden" }
      },
      --calming = {"flower1", "flower2", "flower3"},
      --chance = 100,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_def8, 
      "sprites/garden_bee.png", "sprites/garden_shiny.png", 
      "sprites/garden_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag.png",
      "My Magazine Headline!",
      "My magazine body text!"
);



-- Resin Bee
    bee_defB = {
      id = "resin",
      title = "Resin",
      latin = "Apis Resinae",
      hint = "Some say when Praeteria found its way with Silva surrounded by trees, this species was born.",
      desc = "This is just a cool damn bee",
      lifespan = {"Long"},
      productivity = {"Slow", "Slowest"},
      fertility = {"Unlucky", "Fertile"},
      stability = {"Ordered"},
      behaviour = {"Diurnal"},
      climate = {"Polar"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "flora5",
      --[[recipes = {
        { a = "resin", b = "ghost", s = "amber" }
      },]]
      --calming = {"flower10", "flower11"},
      chance = 50,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_defB, 
      "sprites/resin_bee1.png", "sprites/resin_shiny.png", 
      "sprites/resin_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag2.png",
      "My Magazine Headline!",
      "My magazine body text!"
    );
    -- add a new mutation for our new bee
    api_define_bee_recipe("bark", "trunk", "resin", "mutation_chance")
    -- default for all the other bees



-- Maple Bee
    bee_defD = {
      id = "maple",
      title = "Maple",
      latin = "Apis Acernus",
      hint = "Some say when Praeteria found its way with Silva surrounded by trees, this species was born.",
      desc = "This is just a cool damn bee",
      lifespan = {"Normal"},
      productivity = {"Slow", "Normal"},
      fertility = {"Fertile", "Fecund"},
      stability = {"Normal", "Stable"},
      behaviour = {"Diurnal"},
      climate = {"Temperate"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "flora8",
      --[[recipes = {
        { a = "resin", b = "ghost", s = "amber" }
      },]]
      --calming = {"flower10", "flower11"},
      chance = 50,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_defD, 
      "sprites/maple_bee1.png", "sprites/maple_shiny.png", 
      "sprites/maple_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag2.png",
      "My Magazine Headline!",
      "My magazine body text!"
    );
    -- add a new mutation for our new bee
    api_define_bee_recipe("resin", "trunk", "maple", "mutation_chance")
    -- default for all the other bees



-- Ghost Bee
    bee_defC = {
      id = "ghost",
      title = "Ghost",
      latin = "Apis Exspiravit",
      hint = "Some say when Praeteria found its way with Silva surrounded by trees, this species was born.",
      desc = "This is just a cool damn bee",
      lifespan = {"Hyper"},
      productivity = {"Sluggish"},
      fertility = {"Sterile"},
      stability = {"Erratic"},
      behaviour = {"Crepuscular"},
      climate = {"Polar"},
      rainlover = true,
      snowlover = true,
      grumpy = false,
      produce = "flora6",
      --[[recipes = {
        { a = "amber", b = "dream", s = "chaotic" }
      },]]
      --calming = {"flower10", "flower11"},
      chance = 100,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_defC, 
      "sprites/ghost_bee.png", "sprites/ghost_shiny.png", 
      "sprites/ghost_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag2.png",
      "My Magazine Headline!",
      "My magazine body text!"
    );
    -- add a new mutation for our new bee
    --api_define_bee_recipe("ghost", "resin", "amber", "mutation_chance")
    -- default for all the other bees



-- Amber Bee
    bee_defA = {
      id = "amber",
      title = "Amber",
      latin = "Apis Electrum",
      hint = "Some say when Praeteria found its way with Silva surrounded by trees, this species was born.",
      desc = "This is just a cool damn bee",
      lifespan = {"Eternal"},
      productivity = {"Sluggish", "Slowest"},
      fertility = {"Infertile", "Unlucky"},
      stability = {"Ordered", "Pure"},
      behaviour = {"Nocturnal"},
      climate = {"Tropic"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "natura_bees_amber_chunks",
      recipes = {
        { a = "resin", b = "ghost", s = "amber" }
      },
      --calming = {"flower10", "flower11"},
      chance = 36,
      bid = "X3",
      requirement = "When surrounded by trees"
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_defA, 
      "sprites/amber_bee1.png", "sprites/amber_shiny.png", 
      "sprites/amber_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag2.png",
      "My Magazine Headline!",
      "My magazine body text!"
    );
    -- add a new mutation for our new bee
    api_define_bee_recipe("ghost", "resin", "amber", "mutation_chance")
    -- default for all the other bees


-- Nature Bee
    bee_defZ = {
      id = "nature",
      title = "Nature",
      latin = "Apis Natura",
      hint = "Some say when Praeteria found its way with Silva surrounded by trees, this species was born.",
      desc = "This is just a cool damn bee",
      lifespan = {"Normal"},
      productivity = {"Normal"},
      fertility = {"Swarming"},
      stability = {"Pure"},
      behaviour = {"Diurnal"},
      climate = {"Temperate"},
      rainlover = false,
      snowlover = false,
      grumpy = false,
      produce = "log",
      --[[recipes = {
        { a = "amber", b = "dream", s = "chaotic" }
      },]]
      --calming = {"flower10", "flower11"},
      chance = 100,
      bid = "X3",
      requirement = ""
    }
    -- create new bee
    -- in this example we have a "sprites" folder in our mod root
    api_define_bee(bee_defZ, 
      "sprites/nature_bee.png", "sprites/nature_shiny.png", 
      "sprites/nature_hd.png",
      {r=100, g=100, b=100},
      "sprites/bee_mag2.png",
      "My Magazine Headline!",
      "My magazine body text!"
    );
  end
  


--Unnatural, XX, XX, XX, XX, XX, Natural
  

  --Trees
function obj_definition()
    --Birch
    api_define_object({
      id = "birch_tree",
      name = "Birch Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 4
    }, "sprites/birch_sizes3.png")
    api_define_object({
      id = "birch_tree_dummy",
      name = "Birch Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 4
    }, "sprites/birch_sizes3.png")
    api_define_object({
      id = "birch_tree_acorn",
      name = "Birch Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_birch_tree_dummy 1 4",
      item_sprite = "sprites/birch_seed.png"
    }, "sprites/birch_tree_sapling2.png")
  
    --Maple
    --maple_sprites = {"sprites/maple_tree.png", "sprites/maple_tree2.png", "sprites/maple_tree3.png", "sprites/maple_tree4.png"}
    api_define_object({
      id = "maple_tree",
      name = "Maple Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      durability = false,
      hp = true,
      has_shadow = false,
      variants = 4
      --growth = "flower2008 10 40"
    }, "sprites/maple_sizes8.png")
    api_define_object({
      id = "maple_tree_dummy",
      name = "Maple Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      durability = false,
      hp = true,
      has_shadow = true,
      variants = 4
      --growth = "flower2008 10 40"
    }, "sprites/maple_sizes8.png")
    api_define_object({
      id = "maple_tree_acorn",
      name = "Maple Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_maple_tree_dummy 1 4",
      item_sprite = "sprites/maple_seed.png"
    }, "sprites/maple_tree_sapling2.png")
  
  
    --Pine
    api_define_object({
      id = "pine_tree",
      name = "Pine Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 4
    }, "sprites/pine_sizes3.png")
    api_define_object({
      id = "pine_tree_dummy",
      name = "Pine Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 4
    }, "sprites/pine_sizes3.png")
    api_define_object({
      id = "pine_tree_acorn",
      name = "Pine Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "spadex"},
      place_grass = true,
      growth = "natura_bees_pine_tree_dummy 1 4",
      item_sprite = "sprites/pine_cone.png"
    }, "sprites/pine_tree_sapling2.png")


    --Mangrove
    api_define_object({
      id = "mangrove_tree",
      name = "Mangrove Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 4
    }, "sprites/mangrove_sizes3.png")
    api_define_object({
      id = "mangrove_tree_dummy",
      name = "Mangrove Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 4
    }, "sprites/mangrove_sizes3.png")
    api_define_object({
      id = "mangrove_tree_acorn",
      name = "Mangrove Tree Propagule",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_mangrove_tree_dummy 1 4",
      item_sprite = "sprites/mangrove_seed.png"
    }, "sprites/mangrove_sapling2.png")



    --Mystery Seed I
    api_define_object({
      id = "mystery_seed_i",
      name = "Mystery Seed I",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      --growth = "mystery_seed_i 1 1",
      item_sprite = "sprites/mystery_seed_i_icon.png"
    }, "sprites/mystery_seed.png")

    --Mystery Seed II
    api_define_object({
      id = "mystery_seed_ii",
      name = "Mystery Seed II",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      --growth = "mystery_seed_i 1 1",
      item_sprite = "sprites/mystery_seed_ii_icon.png"
    }, "sprites/mystery_seed.png")
    
    --Mystery Seed III
    api_define_object({
      id = "mystery_seed_iii",
      name = "Mystery Seed III",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      --growth = "mystery_seed_i 1 1",
      item_sprite = "sprites/mystery_seed_iii_icon.png"
    }, "sprites/mystery_seed.png")
    
    --Aquatic Mystery Seed
    api_define_object({
      id = "aquatic_mystery_seed",
      name = "Hydroponic Mystery Seed",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_water = true,
      has_shadow = true,
      --growth = "mystery_seed_i 1 1",
      item_sprite = "sprites/aquatic_mystery_seed_icon.png"
    }, "sprites/mystery_seed.png")




    --Willow
    api_define_object({
      id = "willow_tree",
      name = "Willow Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/willow_sizes3.png")
    api_define_object({
      id = "willow_tree_dummy",
      name = "Willow Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/willow_sizes3.png")
    api_define_object({
      id = "willow_tree_acorn",
      name = "Willow Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_willow_tree_dummy 1 4",
      item_sprite = "sprites/willow_seed.png"
    }, "sprites/willow_tree_sapling2.png")


    --Redwood
    api_define_object({
      id = "redwood_tree",
      name = "Redwood Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/redwood_sizes3.png")
    api_define_object({
      id = "redwood_tree_dummy",
      name = "Redwood Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/redwood_sizes3.png")
    api_define_object({
      id = "redwood_tree_acorn",
      name = "Redwood Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_redwood_tree_dummy 1 4",
      item_sprite = "sprites/redwood_seed.png"
    }, "sprites/redwood_tree_sapling.png")


    --Acacia
    api_define_object({
      id = "acacia_tree",
      name = "Acacia Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/acacia_sizes3.png")
    api_define_object({
      id = "acacia_tree_dummy",
      name = "Acacia Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/acacia_sizes3.png")
    api_define_object({
      id = "acacia_tree_acorn",
      name = "Acacia Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_acacia_tree_dummy 1 4",
      item_sprite = "sprites/acacia_seed.png"
    }, "sprites/acacia_tree_sapling.png")


--[[acacia1 = nil
    function draw_acacia(obj_id)
      test_acacia = api_get_inst(obj_id)
      acacia_table = acacia1[test_acacia["oid"]]
      --[[if api_get_highlighted("obj") == obj_id then
        api_draw_sprite(acacia_table, api_random(3), test_acacia["x"]-12, test_acacia["y"]-18)
      end
    end]]
      --api_define_sprite("nautra_bees_acacia", "sprites/acacia_sizes3.png", 1)



    --Sakura
    api_define_object({
      id = "sakura_tree",
      name = "Cherry Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/sakura_sizes3.png")
    api_define_object({
      id = "sakura_tree_dummy",
      name = "Cherry Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/sakura_sizes3.png")
    api_define_object({
      id = "sakura_tree_acorn",
      name = "Cherry Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_sakura_tree_dummy 1 4",
      item_sprite = "sprites/sakura_seed.png"
    }, "sprites/sakura_tree_sapling.png")


    --Araucária
    api_define_object({
      id = "araucaria_tree",
      name = "Araucaria Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/araucaria_sizes3.png")
    api_define_object({
      id = "araucaria_tree_dummy",
      name = "Araucaria Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/araucaria_sizes3.png")
    api_define_object({
      id = "araucaria_tree_acorn",
      name = "Araucaria Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_araucaria_tree_dummy 1 4",
      item_sprite = "sprites/araucaria_seed.png"
    }, "sprites/araucaria_tree_sapling.png")


    --Cypress
    api_define_object({
      id = "cypress_tree",
      name = "Cypress Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/cypress_sizes3.png")
    api_define_object({
      id = "cypress_tree_dummy",
      name = "Cypress Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/cypress_sizes3.png")
    api_define_object({
      id = "cypress_tree_acorn",
      name = "Cypress Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_cypress_tree_dummy 1 4",
      item_sprite = "sprites/cypress_seed.png"
    }, "sprites/cypress_tree_sapling.png")
    

    --Ash
    api_define_object({
      id = "ash_tree",
      name = "Ash Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/ash_sizes3.png")
    api_define_object({
      id = "ash_tree_dummy",
      name = "Ash Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/ash_sizes3.png")
    api_define_object({
      id = "ash_tree_acorn",
      name = "Ash Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_ash_tree_dummy 1 4",
      item_sprite = "sprites/ash_seed.png"
    }, "sprites/ash_tree_sapling.png")


    --Palm
    api_define_object({
      id = "palm_tree",
      name = "Palm Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/palm_sizes3.png")
    api_define_object({
      id = "palm_tree_dummy",
      name = "Palm Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/palm_sizes3.png")
    api_define_object({
      id = "palm_tree_acorn",
      name = "Palm Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_palm_tree_dummy 1 4",
      item_sprite = "sprites/palm_seed.png"
    }, "sprites/palm_tree_sapling.png")


    --Jacarandá
    api_define_object({
      id = "jacaranda_tree",
      name = "Jacaranda Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/jacaranda_sizes3.png")
    api_define_object({
      id = "jacaranda_tree_dummy",
      name = "Jacaranda Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/jacaranda_sizes3.png")
    api_define_object({
      id = "jacaranda_tree_acorn",
      name = "Jacaranda Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_jacaranda_tree_dummy 1 4",
      item_sprite = "sprites/jacaranda_seed.png"
    }, "sprites/jacaranda_tree_sapling.png")


    --Baobab
    api_define_object({
      id = "baobab_tree",
      name = "Baobab Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/baobab_sizes3.png")
    api_define_object({
      id = "baobab_tree_dummy",
      name = "Baobab Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/baobab_sizes3.png")
    api_define_object({
      id = "baobab_tree_acorn",
      name = "Baobab Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_baobab_tree_dummy 1 4",
      item_sprite = "sprites/baobab_seed.png"
    }, "sprites/baobab_tree_sapling.png")


    --Ipê
    api_define_object({
      id = "ipe_tree",
      name = "Ipe Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/ipe_sizes3.png")
    api_define_object({
      id = "ipe_tree_dummy",
      name = "Ipe Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/ipe_sizes3.png")
    api_define_object({
      id = "ipe_tree_acorn",
      name = "Ipe Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_ipe_tree_dummy 1 4",
      item_sprite = "sprites/ipe_seed.png"
    }, "sprites/ipe_tree_sapling.png")


    --Apple
    api_define_object({
      id = "apple_tree",
      name = "Apple Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 4
    }, "sprites/apple_sizes3.png")
    api_define_object({
      id = "apple_tree_dummy",
      name = "Apple Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 4
    }, "sprites/apple_sizes3.png")
    api_define_object({
      id = "apple_tree_acorn",
      name = "Apple Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_apple_tree_dummy 1 4",
      item_sprite = "sprites/apple_seed.png"
    }, "sprites/apple_tree_sapling.png")


    --Guaraná
    api_define_object({
      id = "guarana_tree",
      name = "Guarana Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/guarana_sizes3.png")
    api_define_object({
      id = "guarana_tree_dummy",
      name = "Guarana Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/guarana_sizes3.png")
    api_define_object({
      id = "guarana_tree_acorn",
      name = "Guarana Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_guarana_tree_dummy 1 4",
      item_sprite = "sprites/guarana_seed.png"
    }, "sprites/guarana_tree_sapling.png")


    --Rowan
    api_define_object({
      id = "rowan_tree",
      name = "Rowan Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 4
    }, "sprites/rowan_sizes3.png")
    api_define_object({
      id = "rowan_tree_dummy",
      name = "Rowan Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 4
    }, "sprites/rowan_sizes3.png")
    api_define_object({
      id = "rowan_tree_acorn",
      name = "Rowan Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_rowan_tree_dummy 1 4",
      item_sprite = "sprites/rowan_seed.png"
    }, "sprites/rowan_tree_sapling.png")


    --Hawthorn
    api_define_object({
      id = "hawthorn_tree",
      name = "Hawthorn Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/hawthorn_sizes3.png")
    api_define_object({
      id = "hawthorn_tree_dummy",
      name = "Hawthorn Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/hawthorn_sizes3.png")
    api_define_object({
      id = "hawthorn_tree_acorn",
      name = "Hawthorn Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_hawthorn_tree_dummy 1 4",
      item_sprite = "sprites/hawthorn_seed.png"
    }, "sprites/hawthorn_tree_sapling.png")


    --Cloud
    api_define_object({
      id = "cloud_tree",
      name = "Cloud Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = false,
      variants = 3
    }, "sprites/cloud_sizes3.png")
    api_define_object({
      id = "cloud_tree_dummy",
      name = "Cloud Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_shadow = true,
      variants = 3
    }, "sprites/cloud_sizes3.png")
    api_define_object({
      id = "cloud_tree_acorn",
      name = "Cloud Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_shadow = true,
      growth = "natura_bees_cloud_tree_dummy 1 4",
      item_sprite = "sprites/cloud_seed.png"
    }, "sprites/cloud_tree_sapling.png")


    --Lava
    api_define_object({
      id = "magma_tree",
      name = "Lava Tree",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_lighting = true,
      has_shadow = false,
      variants = 3
    }, "sprites/magma_sizes3.png")
    api_define_object({
      id = "magma_tree_dummy",
      name = "Lava Tree Dummy",
      category = "Resource",
      tooltip = "Can be chopped down with an Axe for Logs",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"mouse1", "axex"},
      place_grass = true,
      hp = true,
      has_lighting = true,
      has_shadow = true,
      variants = 3
    }, "sprites/magma_sizes3.png")
    api_define_object({
      id = "magma_tree_acorn",
      name = "Lava Tree Sapling",
      category = "Resource",
      tooltip = "Can be uprooted with a Spade",
      shop_buy = 0,
      shop_sell = 0,
      tools = {"spadex"},
      place_grass = true,
      has_lighting = true,
      has_shadow = true,
      growth = "natura_bees_magma_tree_dummy 1 4",
      item_sprite = "sprites/magma_seed.png"
    }, "sprites/magma_tree_sapling.png")





    

  end



  --[[function define_npc()

    --set npc definition
    npc_def = {
      id = 28,
      name = "Gobbo",
      pronouns = "They/Them",
      tooltip = "Wassup pal?",
      shop = true,
      walking = true,
      stock = {"bee:nightcrawler", "sample_mod_cool_axe", "sample_mod_test_bed", "sample_mod_test_bench", "sample_mod_test_light", "flower14", "wall17", "sample_mod_recycle_bin", "log", "log"}, -- max 10
      specials = {"log", "log", "log"}, -- must be 3
      dialogue = {
        "Wot ya mean av I gots anything other than logs to sell??",
        "Wot a stoopid question hoomie"
      },
      greeting = "Alright pal ow ya gettin' on"
    }
  
    -- define npc
    api_define_npc(npc_def,
      "sprites/npc/npc_standing.png",
      "sprites/npc/npc_standing_h.png",
      "sprites/npc/npc_walking.png",
      "sprites/npc/npc_walking_h.png",
      "sprites/npc/npc_head.png",
      "sprites/npc/npc_bust.png",
      "sprites/npc/npc_item.png",
      "sprites/npc/npc_dialogue_menu.png",
      "sprites/npc/npc_shop_menu.png"
    )
  end]]




--[[function flower_definition()
  flower_def = {
    id = "2008",
    species = "Maple Tree",
    title = "Flowering Maple",
    latin = "Acer rubrum",
    hint = "Found in deep water",
    desc = "This is my cool ocean flower!",
    shop_sell = 2,
    shop_buy = 2,
    aquatic = false,
    chance = 30,
    effect_desc = "Red clover is a short lived perrenial plant that grows between 20-80cm (8-31in) tall. ",
    deep = false
  }  
  -- define flower
  api_define_flower(flower_def, 
    "sprites/maple_tree_flowering.png", "sprites/maple_tree_flowering3.png", 
    "sprites/maple_tree_flowering.png", "sprites/cool_chair.png",
    {r=100, g=100, b=100}
  )
  api_define_flower_recipe("flower12", "flower13", "flower2008")
end]]