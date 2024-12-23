; Print start g-code Orca
;[timestamp]

SET_PRINT_STATS_INFO TOTAL_LAYER=[total_layer_count]

PRINT_START EXTRUDER=[nozzle_temperature_initial_layer] BED=[bed_temperature_initial_layer_single] MATERIAL="{filament_type[initial_tool]}" PLATE="{curr_bed_type}" LAYERS=[total_layer_count]