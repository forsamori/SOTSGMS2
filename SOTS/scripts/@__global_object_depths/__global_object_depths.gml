// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_view
global.__objectDepths[1] = 0; // obj_trash
global.__objectDepths[2] = 0; // obj_spawner
global.__objectDepths[3] = -21; // obj_seagull
global.__objectDepths[4] = -10; // obj_mainmenu_test
global.__objectDepths[5] = 0; // obj_car
global.__objectDepths[6] = 0; // obj_boat
global.__objectDepths[7] = 0; // obj_tanker
global.__objectDepths[8] = 0; // obj_explosion
global.__objectDepths[9] = 0; // obj_blood
global.__objectDepths[10] = 0; // obj_pickup
global.__objectDepths[11] = 0; // obj_pedestrian
global.__objectDepths[12] = 0; // obj_button_parent
global.__objectDepths[13] = 0; // obj_ps
global.__objectDepths[14] = 0; // obj_button_credits
global.__objectDepths[15] = 0; // obj_home_button
global.__objectDepths[16] = 0; // obj_exit_button
global.__objectDepths[17] = 0; // obj_help_button
global.__objectDepths[18] = 0; // obj_house_02
global.__objectDepths[19] = 0; // obj_house_01
global.__objectDepths[20] = 0; // obj_shrapnel
global.__objectDepths[21] = 0; // obj_highscore_board
global.__objectDepths[22] = 0; // obj_house_03
global.__objectDepths[23] = -20; // obj_black_out
global.__objectDepths[24] = 0; // obj_start_button
global.__objectDepths[25] = 0; // obj_house_04
global.__objectDepths[26] = 0; // obj_house_00
global.__objectDepths[27] = 0; // obj_terrain_grass
global.__objectDepths[28] = 0; // obj_building
global.__objectDepths[29] = 0; // text
global.__objectDepths[30] = -10; // obj_terrain_deep_water
global.__objectDepths[31] = 0; // obj_terrain_shallow_water
global.__objectDepths[32] = 0; // obj_wave


global.__objectNames[0] = "obj_view";
global.__objectNames[1] = "obj_trash";
global.__objectNames[2] = "obj_spawner";
global.__objectNames[3] = "obj_seagull";
global.__objectNames[4] = "obj_mainmenu_test";
global.__objectNames[5] = "obj_car";
global.__objectNames[6] = "obj_boat";
global.__objectNames[7] = "obj_tanker";
global.__objectNames[8] = "obj_explosion";
global.__objectNames[9] = "obj_blood";
global.__objectNames[10] = "obj_pickup";
global.__objectNames[11] = "obj_pedestrian";
global.__objectNames[12] = "obj_button_parent";
global.__objectNames[13] = "obj_ps";
global.__objectNames[14] = "obj_button_credits";
global.__objectNames[15] = "obj_home_button";
global.__objectNames[16] = "obj_exit_button";
global.__objectNames[17] = "obj_help_button";
global.__objectNames[18] = "obj_house_02";
global.__objectNames[19] = "obj_house_01";
global.__objectNames[20] = "obj_shrapnel";
global.__objectNames[21] = "obj_highscore_board";
global.__objectNames[22] = "obj_house_03";
global.__objectNames[23] = "obj_black_out";
global.__objectNames[24] = "obj_start_button";
global.__objectNames[25] = "obj_house_04";
global.__objectNames[26] = "obj_house_00";
global.__objectNames[27] = "obj_terrain_grass";
global.__objectNames[28] = "obj_building";
global.__objectNames[29] = "text";
global.__objectNames[30] = "obj_terrain_deep_water";
global.__objectNames[31] = "obj_terrain_shallow_water";
global.__objectNames[32] = "obj_wave";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for