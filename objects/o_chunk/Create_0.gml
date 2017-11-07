/// @description Load a terrain set piece

var _chunk_data = load_json("/chunks/rch_grass_128_01_embed_tileset.json");

var _background_color = _chunk_data[? "backgroundcolor"];

//Create a DS list for the layers property
var _layers = ds_list_create();

//Create a DS map for index 0 of the layers array
var _layers_0 = ds_map_create();

show_debug_message(_chunk_data);
show_debug_message(_background_color);



// _layers_0_data[| 0] = _chunk_data[? "data"];
// _layers_0_data[| 1] = 0;
// _layers_0_data[| 2] = 6;
// _layers_0_data[| 3] = 0;
// _layers_0_data[| 4] = 0;
// _layers_0_data[| 5] = 0;
// _layers_0_data[| 6] = 0;
// _layers_0_data[| 7] = 0;
// _layers_0_data[| 8] = 4;
// _layers_0_data[| 9] = 0;
// _layers_0_data[| 10] = 3;
// _layers_0_data[| 11] = 0;
// _layers_0_data[| 12] = 0;
// _layers_0_data[| 13] = 0;
// _layers_0_data[| 14] = 0;
// _layers_0_data[| 15] = 0;



// //==========================================



// //Add sub list for the data property to the _sub_ds0 map
// ds_map_add_list(_sub_ds0, "data", _sub_list1)
// _sub_ds0[? "height"] = 4;
// _sub_ds0[? "name"] = "Tiles_Walls";
// _sub_ds0[? "opacity"] = 1;
// _sub_ds0[? "type"] = "tilelayer";

// //Create a DS map for the visible property
// var _sub_ds1 = ds_map_create();

// //Add sub map for the visible property to the _sub_ds0 map
// ds_map_add_map(_sub_ds0, "visible", _sub_ds1);

// _sub_ds0[? "width"] = 4;
// _sub_ds0[? "x"] = 0;
// _sub_ds0[? "y"] = 0;

// //Add sub map to the _sub_list0 list
// _sub_list0[| 0] = _sub_ds0;
// ds_list_mark_as_map(_sub_list0, 0);

// //Add sub list for the layers property to the _converted_ds map
// ds_map_add_list(_converted_ds, "layers", _sub_list0)
// _converted_ds[? "nextobjectid"] = 1;
// _converted_ds[? "orientation"] = "orthogonal";
// _converted_ds[? "renderorder"] = "right-down";
// _converted_ds[? "tiledversion"] = "1.0.3";
// _converted_ds[? "tileheight"] = 16;

// //Create a DS list for the tilesets property
// var _sub_list2 = ds_list_create();

// //Create a DS map for index 0 of the tilesets array
// var _sub_ds2 = ds_map_create();
// _sub_ds2[? "columns"] = 9;
// _sub_ds2[? "firstgid"] = 1;
// _sub_ds2[? "image"] = "../sprites/s_dirtwall_tileset/78fdc198-a56c-439c-8acd-a8ffdc86fce0.png";
// _sub_ds2[? "imageheight"] = 64;
// _sub_ds2[? "imagewidth"] = 288;
// _sub_ds2[? "margin"] = 0;
// _sub_ds2[? "name"] = "t_dirtwall";
// _sub_ds2[? "spacing"] = 0;
// _sub_ds2[? "tilecount"] = 18;
// _sub_ds2[? "tileheight"] = 32;
// _sub_ds2[? "tilewidth"] = 32;
// _sub_ds2[? "transparentcolor"] = "#ff00ff";

// //Add sub map to the _sub_list2 list
// _sub_list2[| 0] = _sub_ds2;
// ds_list_mark_as_map(_sub_list2, 0);

// //Add sub list for the tilesets property to the _converted_ds map
// ds_map_add_list(_converted_ds, "tilesets", _sub_list2)
// _converted_ds[? "tilewidth"] = 16;
// _converted_ds[? "type"] = "map";
// _converted_ds[? "version"] = 1;
// _converted_ds[? "width"] = 4;

