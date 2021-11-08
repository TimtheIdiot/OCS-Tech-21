aoe = {}

local mod_path = minetest.get_modpath("aoe")
dofile(mod_path.."/config.lua")
dofile(mod_path.."/functions.lua")

minetest.register_node("aoe:padplacer",{
    description = "small pad placer",
    tiles = {"aoe_pi.png"},
    groups = {walkable = 0, 
            buildable_to = 1,
            cracky = 1,
            diggable = 1},
    on_construct = function(pos)
        aoe.areaClear(10,10,10,pos)
        aoe.placePad(10,10,pos)
    end

})

--minetest.register_craftitem("aoe:cocaine", {
   -- description = "cocaine",
    --inventory_image = "cocaine.png",
    --on_use = function(user)
--user:set_physics_override({speed = 5, sneak = false, jump = 5,})
      --  minetest.after(10, function(user)
     --       user:set_physics_override({speed = 1, sneak = true, jump = 1 })
     --   end, user)
  --  end
--})


minetest.register_craftitem("aoe:poopy", {
    description = "blueprint",
    inventory_image = {"blueprint"},
    on_rightclick = function()
    
    end
    

})
