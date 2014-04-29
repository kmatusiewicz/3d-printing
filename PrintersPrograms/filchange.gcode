M104 S190	; set extruder temperature to 190 and continue
G28 		; home all axes
G1 Z20 F5000	; lift nozzle 20 mm
G1 X100 Y100 F15000 ; go to table center
M109 S190	; set extruder temperature to 190 and wait
G1 E-25 F100	; retract filament 25mm
M1 S60		; wait 60 seconds
G1 E10 F50	; extract filament 25+10mm
M1 S10		; wait 10 seconds
G28 		; home all axes
