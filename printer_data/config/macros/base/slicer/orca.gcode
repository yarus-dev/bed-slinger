# start ------------------------------------------------------
; Print start g-code Orca
;[timestamp]

# end ------------------------------------------------------
; Print end g-code Orca

# printing by object
; Printing by object Orca


# before layer change


# layer change


# timelapse
; Timelapse take frame g-code Orca
_SMILE

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
