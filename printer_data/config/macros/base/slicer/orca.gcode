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
; Before layer change Orca
; layer {layer_num+1} from [total_layer_count]
_BEFORE_LAYER_CHANGE LAYER=[layer_num] LAYERS=[total_layer_count] HEIGHT=[layer_z]

# layer change
; layer changed g-code Orca
; layer {layer_num+1} from [total_layer_count]
_LAYER_CHANGE LAYER=[layer_num] LAYERS=[total_layer_count] HEIGHT=[layer_z]

# timelapse
; Timelapse take frame g-code Orca
TIMELAPSE_TAKE_PHOTO

# change filament
; change filament Orca
FILAMENT_CHANGE

# change extrusion role
; change extrusion role Orca
_EXTRUSION_CHANGE

# pause
; Pause Orca
PAUSE

# template
; Orca custom g-code


# filament start gcode
; Filament Start Orca
{if filament_type[initial_tool] == 'PLA'}
    {if  (bed_temperature[current_extruder] > 45) || (bed_temperature_initial_layer[current_extruder] > 45)}
        M106 P3 S255
    {elsif(bed_temperature[current_extruder] > 35) || (bed_temperature_initial_layer[current_extruder] > 35)}
        M106 P3 S180
    {endif}
{endif}

# filament end gcode 
; Filament end Orca
M106 P3 S0
