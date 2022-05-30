function define_bee()
  -- setup bee_definition 
  bee_def = {
    id = "nightcrawler",
    title = "Nightcrawler",
    latin = "Crawly Nighty",
    hint = "Found on only the darkest of nights",
    desc = "This is just a cool damn bee",
    lifespan = {"Normal"},
    productivity = {"Normal", "Fast"},
    fertility = {"Fecund", "Prolific"},
    stability = {"Normal", "Stable"},
    behaviour = {"Nocturnal"},
    climate = {"Temperate"},
    rainlover = false,
    snowlover = false,
    grumpy = true,
    produce = "log",
    recipes = {
      { a = "nightcrawler", b = "dream", s = "chaotic" }
    },
    calming = {"flower10", "flower11"},
    chance = 100,
    bid = "X3",
    requirement = ""
  }
  -- create new bee
  -- in this example we have a "sprites" folder in our mod root
  api_define_bee(bee_def, 
    "sprites/bee_item.png", "sprites/bee_shiny.png", 
    "sprites/bee_hd.png",
    {r=100, g=100, b=100},
    "sprites/bee_mag.png",
    "My Magazine Headline!",
    "My magazine body text!"
  );
  -- add a new mutation for our new bee
  api_define_bee_recipe("dream", "rocky", "nightcrawler", "mutation_chance")
  -- add a new bee trait including our newly defined bee
  api_define_trait("magic", {
    common = {"low"}, 
    dream  = {"low", "medium"}, 
    nightcrawler = {"high"}
  }, {"none"}) -- default for all the other bees
end
