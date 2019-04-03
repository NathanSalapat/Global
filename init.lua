global = {}

minetest.register_node("global:grid", {
   description = "Color Grid",
   tiles = {{name='global_grid.png', align_style='world', scale=4}},
   inventory_image = '[inventorycube{global_grid.png&[sheet:4x4:1,1{global_grid.png&[sheet:4x4:1,1{global_grid.png&[sheet:4x4:1,1',
   groups = {oddly_breakable_by_hand=3},
})

minetest.override_item('default:brick', {
   tiles = {{name='global_stone.png', align_style='world', scale=4}},
   inventory_image = '[inventorycube{global_stone.png&[sheet:4x4:1,1{global_stone.png&[sheet:4x4:1,1{global_stone.png&[sheet:4x4:1,1',
})

minetest.override_item('default:cobble', {
   tiles = {{name='global_cobble.png', align_style='world', scale=4}},
   inventory_image = '[inventorycube{global_cobble.png&[sheet:4x4:1,1{global_cobble.png&[sheet:4x4:1,1{global_cobble.png&[sheet:4x4:1,1',
})



param2_formspec =
   'size[4,4]'..
   'position[.85, .5]'..
   'label[0,0;Enter new Param2 value,]'..
   'label[0,.5;This is not checked for validity.]'..
   'field[.5,2;2,1;value;new param2;0]'

minetest.register_node("global:plant", {
   description = "plant with meshoption",
   waving = 1,
   walkable = false,
   drawtype = 'plantlike',
   tiles = {"default_grass_5.png^[colorize:yellow:50"},
   paramtype = 'light',
   paramtype2 = 'meshoptions',
   place_param2 = 0 + 0x10 + 0x20,
   groups = {oddly_breakable_by_hand = 2, mod_1=1},
   on_construct = function(pos)
      local meta = minetest.get_meta(pos)
      meta:set_string('infotext', 'param2 demo')
      meta:set_string('formspec', param2_formspec)
   end,
   on_receive_fields = function(pos, formname, fields, sender)
      if fields.value then
         minetest.swap_node(pos, {name = 'global:plant', param2 = fields.value})
      end
   end,
})

minetest.register_node("global:plant2", {
   description = "plant with degrotate",
   waving = 1,
   walkable = false,
   drawtype = 'plantlike',
   tiles = {"default_grass_5.png^[multiply:green:50"},
   paramtype = 'light',
   paramtype2 = 'degrotate',
   groups = {oddly_breakable_by_hand = 2, mod_1=1},
   on_construct = function(pos)
      local meta = minetest.get_meta(pos)
      meta:set_string('infotext', 'param2 demo')
      meta:set_string('formspec', param2_formspec)
      local param2_num = math.random(0,179)
      minetest.swap_node(pos, {name = 'global:plant2', param2 = param2_num})
   end,
   on_receive_fields = function(pos, formname, fields, sender)
      if fields.value then
         minetest.swap_node(pos, {name = 'global:plant2', param2 = fields.value})
      end
   end,
})
