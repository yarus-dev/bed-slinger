# start

# end

# printing by object

# before layer change

# layer change

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

{if activate_air_filtration[current_extruder] && support_air_filtration}
    M106 P3 S{during_print_exhaust_fan_speed_num[current_extruder]}
{endif}