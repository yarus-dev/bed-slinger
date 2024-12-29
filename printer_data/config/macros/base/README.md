## Output filename
```
{if plate_name!=""}{plate_name}{else}{input_filename_base}{endif}_{filament_type[initial_tool]}_{timestamp}.gcode
```

## Start
```
; Print start g-code Orca
;[timestamp]

PRINT_START  CHAMBER={overall_chamber_temperature > 0 ? "[overall_chamber_temperature]" : "False" }  
```
## End
```
; Print end g-code Orca
PRINT_END
; total layers count = [total_layer_count]
```
## Print by object
```
; Print by object g-code Orca
```
## Before layer change
```
; Before layer change g-code Orca
; layer {layer_num+1} from [total_layer_count]
BEFORE_LAYER_CHANGE LAYER=[layer_num] LAYERS=[total_layer_count] HEIGHT=[layer_z]
```

## layer changed
```
; layer changed g-code Orca
; layer {layer_num+1} from [total_layer_count]
LAYER_CHANGE LAYER=[layer_num] LAYERS=[total_layer_count] HEIGHT=[layer_z]
```

## Timelapse take frame
```
; Timelapse take frame g-code Orca
TIMELAPSE_TAKE_PHOTO
```

## Chnage filament
```
; Chnage filament g-code Orca
FILAMENT_CHANGE
```
## Change extrusion role
```
; Change extrusion role g-code Orca
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
{if filament_type[initial_tool] == "PLA}
    {if (bed_temperature[current_extruder] > 80) ||(bed_temperature_initial_layer[current_extruder] > 80 )}
        M106 P3 S255
    {elsif (bed_temperature[current_extruder] >60)||(bed_temperature_initial_layer[current_extruder] > 60)}
        M106 P3 S180
    {endif}
{endif}
```

## Filament end
```
; filament end g-code Orca
```