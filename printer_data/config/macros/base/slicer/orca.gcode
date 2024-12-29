# start ------------------------------------------------------
; Print start g-code Orca
;[timestamp]
_PRINT_START EXTRUDER=[nozzle_temperature_initial_layer] BED=[bed_temperature_initial_layer_single] MATERIAL="{filament_type[initial_tool]}" PLATE="{curr_bed_type}" LAYERS=[total_layer_count]


# end ------------------------------------------------------
; Print end g-code Orca
_PRINT_END

# printing by object
; Printing by object Orca
_PRINT_OBJECT

# before layer change
; before layer change Orca
_BEFORE_LAYER_CHANGE HEIGHT=[layer_z] LAYER={layer_num+1}

# layer change
_LAYER_CHANGE
# timelapse

# change filament

# change extrusion role

# pause

# template

# filament start gcode
{if  (bed_temperature[current_extruder] > 45) || (bed_temperature_initial_layer[current_extruder] > 45)}
    M106 P3 S255
{elsif(bed_temperature[current_extruder] > 35) || (bed_temperature_initial_layer[current_extruder] > 35)}
    M106 P3 S180
{endif}

{if support_air_filtration && activate_air_filtration[current_extruder]}
    M106 P3 S{during_print_exhaust_fan_speed_num[current_extruder]}
{endif}

; filament end gcode 
M106 P3 S0
