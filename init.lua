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
