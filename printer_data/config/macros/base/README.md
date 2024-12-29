## Output filename
```
{if plate_name!=""}{plate_name}{else}{input_filename_base}{endif}_{filament_type[initial_tool]}_{timestamp}.gcode
{if plate_name!=""}{plate_name}{else}{input_filename_base}{endif}·{filament_type[initial_tool]}·{round(total_cost)}₴·{print_time}.gcode
```

## Start
```
; Print start g-code Orca
;[timestamp]
_PRINT_START EXTRUDER=[nozzle_temperature_initial_layer] BED=[bed_temperature_initial_layer_single] MATERIAL="{filament_type[initial_tool]}" PLATE="{curr_bed_type}" LAYERS=[total_layer_count]
```
## End
```
; Print end g-code Orca
_PRINT_END
; total layers count = [total_layer_count]
```
## Print by object
```
; Print by object g-code Orca
_PRINT_OBJECT
```
## Before layer change
```
; Before layer change Orca
; layer {layer_num+1} from [total_layer_count]
_BEFORE_LAYER_CHANGE LAYER=[layer_num] LAYERS=[total_layer_count] HEIGHT=[layer_z]
```

## layer changed
```
; layer changed g-code Orca
; layer {layer_num+1} from [total_layer_count]
_LAYER_CHANGE LAYER=[layer_num] LAYERS=[total_layer_count] HEIGHT=[layer_z]
```

## Timelapse take frame
```
; Timelapse take frame g-code Orca
_SMILE
```

## Chnage filament
```
; Chnage filament g-code Orca
FILAMENT_CHANGE
```
## Change extrusion role
```
; Change extrusion role g-code Orca
_EXTRUSION_CHANGE
```
## Pause
```
; Pause g-code Orca
PAUSE
```

## Custom g-code template
```
; Custom g-code template Orca
```

## Filament start
```
; filament start gcode g-code Orca
{if filament_type[initial_tool] == "PLA"}
    {if (bed_temperature[current_extruder] > 80) ||(bed_temperature_initial_layer[current_extruder] > 80 )}
        M106 P3 S255
    {elsif (bed_temperature[current_extruder] > 60)||(bed_temperature_initial_layer[current_extruder] > 60)}
        M106 P3 S180
    {endif}
{endif}
```

## Filament end
```
; filament end g-code Orca
```