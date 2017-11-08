/// @description load_map(filename)
/// @function load_map
/// @param filename

// @Tom — I found this script from a GameMaker Studio 1 project. I imported it to GMS2
// I don't fully understand what it's doing. Try dropping show_debug_message at different spots...
// sometimes this will return random integers and isn't what you'd expect...
// Been modified a bit to sort out tilemaps
// original discussion: 
// https://www.reddit.com/r/gamemaker/comments/4dpri9/tiled_gms_v0alpha_some_simple_tools_for_using_map/
// gmx source:
// https://www.dropbox.com/s/zdwchq09mjrxr84/Tiled_GMS.gmz?dl=1

var filename;
var tileheight, tilewidth;

// filename should be the local path to an asset included in the "Included Files" file directory Resources
filename = argument0;

var _xoff = argument1;
var _yoff = argument2;


// load it!!!
// gets us the decode_json output in one line!
var json = load_json(filename);

// Store some basic info from file: tile size, map size, tileset data

var _map_tilewidth = ds_map_find_value( json, "tilewidth" );
var _map_tileheight = ds_map_find_value( json, "tileheight" );
var map_width = ds_map_find_value( json, "width" );
var map_height = ds_map_find_value( json, "height" );
var lst_tileset = ds_map_find_value( json, "tilesets" );
var tileset = ds_list_find_value(lst_tileset, 0);
var _tileset_tilewidth = ds_map_find_value( tileset, "tilewidth" );
var _tileset_tileheight = ds_map_find_value( tileset, "tileheight" );
var tileset_img = ds_map_find_value(tileset, "image");
var tile_cols = ds_map_find_value(tileset, "imagewidth") / _tileset_tilewidth;
var tile_rows = ds_map_find_value(tileset, "imageheight") / _tileset_tileheight;
var _layer_depth = 100;

// figure out if one grid (map or tileset) has tiles bigger than the other
var _tileset_xratio = _tileset_tilewidth / _map_tilewidth;
var _tileset_yratio = _tileset_tileheight / _map_tileheight;

show_debug_message("Chunk _map_tilewidth: " + string(_map_tilewidth));
show_debug_message("Chunk _tileset_tilewidth: " + string(_tileset_tilewidth));
show_debug_message("Chunk _tileset_xratio: " + string(_tileset_xratio));

// tileset img contains a local path to an "included Files" asset, usually a png
//show_debug_message(tileset_img);

// Load the tileset png and add a sprite
var _tileset_bg = sprite_add(working_directory + tileset_img, 0, 0, false, 0, 0);

// layers.
// in a variable, store the array of layers (which in turn, are each an object)
var lst_layers = ds_map_find_value( json, "layers" );

// loop through each layer object in the array
for ( var layer_i = 0; layer_i < ds_list_size(lst_layers); layer_i++){
	// store layer object data and detect type (object or tileset)
    var layer_object = ds_list_find_value( lst_layers, layer_i);
    var layer_type = ds_map_find_value( layer_object, "type");
	show_debug_message(layer_type);
	
	// depending on layer type, we will process it differently. 
	// • tileset layers need to place static sprites
	// • object	layers need to spawn gamemaker objects
    switch(layer_type){
        case "tilelayer":
			// get the size of the layer so we can loops through it
            var layer_height = ds_map_find_value( layer_object, "height" );
            var layer_width = ds_map_find_value( layer_object, "width" );
			
			// not super clear on what this does yet...
            _layer_depth -= 1 * layer_i;
			
			// Main data for positioning tiles in a grid, maps image tile to a position
			// store an array of the layer tileset positions
            var lst_data = ds_map_find_value( layer_object, "data" );
			
            // build tile layer
			// run through each column of each row of a layer
            var i;
            for ( j = 0; j < map_height; j++ ){
                for ( k = 0; k < map_width; k++ ){   
                    i = ( j * map_width) + k;
					// for this specific tile, we need to loook at the data and decide what to do (usually print a sprite)
                    var tile_id = ds_list_find_value(lst_data, i);
					
					// this is default stuff that doesn't seem useful to me right now? Have commented out checks below for now
                    var x_scl = 1;
                    var y_scl = 1;
                    var flip_x = false;
                    var flip_y = false;
                    show_debug_message(tile_id);
					
					// I'm not 100% sure, but I think this is support for some kind of tile flipping..?
					// I don't think we need this? It should work ok without it? 
                    //if (tile_id < 0 )
                    //{   
                    //        x_scl = -1;               
                    //        flip_x = true;                               
                    //        tile_id = (tile_id) + 2147483648;
                    //}                  
                    //if ( tile_id > 1073741824 ) 
                    //{
                    //    y_scl = -1;
                    //    flip_y = true;
                    //    tile_id = (tile_id) - 1073741824;
                    //}
					
					// place tiles
					// is this assuming that the first tile of our tileset is transparent??? Not sure what this check is doing..
                    if ( tile_id != 0 ) {
						// This figures out where the tile is in gamemaker x and y from the original 1-dimensional array
                        var tile_x = ((( tile_id - 1) mod tile_cols ) * _tileset_tilewidth ) ; 
                        var tile_y = ((( tile_id - 1) div tile_cols ) * _tileset_tileheight ); // I think this is the line that is broken: always seems to return 0
                        // show_debug_message("x: " + string(tile_x) + " y: " + string(tile_y) );
						
						// • original tile variable; including variables that have been made constants for now
                        //var tile = tile_add(tileset_bg, tile_x, tile_y, global.tilewidth, global.tileheight, (k * global.tilewidth) + (global.tilewidth * flip_x), (j * global.tileheight) + (global.tileheight * flip_y), _layer_depth);
                        // • simplified
						show_debug_message("x:" + string((k * _tileset_tilewidth) + _xoff));
						var tile = tile_add(_tileset_bg, tile_x, tile_y, _tileset_tilewidth, _tileset_tileheight, (k * (_tileset_tilewidth / _tileset_xratio)) + _xoff, (j * (_tileset_tileheight / _tileset_yratio)) + _yoff, _layer_depth);
						tile_set_scale(tile, x_scl, y_scl); 
                    }                         
                }
               }
            ds_list_destroy(lst_data);
        break;
        case "objectgroup":
            var lst_objects = ds_map_find_value( layer_object, "objects");
            for ( var o = 0; o < ds_list_size( lst_objects ); o++ ) {
                var object_map = ds_list_find_value( lst_objects, o);
                var object_type = asset_get_index( ds_map_find_value( object_map, "type"));
				
                // show_debug_message(object_type);
                var object_x = ds_map_find_value( object_map, "x" );
                var object_y = ds_map_find_value( object_map, "y" );
                var object_width = ds_map_find_value( object_map, "width");
                var object_height = ds_map_find_value( object_map, "height");
				
				// check if an object of this type is in gamemaker already
                if object_exists(object_type){
                    var object = instance_create( object_x, object_y, object_type);
                    var object_scale_x =  (object_width / object.sprite_width);
                    var object_scale_y = ( object_height / object.sprite_height);
                    // scale object and reposition based on offset                   
                    object.image_xscale = object_scale_x;
                    object.image_yscale = object_scale_y;
                    object.x = object_x + ( object.sprite_xoffset);
                    object.y = object_y + ( object.sprite_yoffset);
                }
            }
        break;
    }
}

ds_list_destroy(lst_layers);
ds_list_destroy(lst_tileset);
ds_map_destroy(json);

