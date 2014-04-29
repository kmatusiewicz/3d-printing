M140 S60	; set bed temperature to 60 and continue
M104 S190	; set extruder temperature to 190 and continue
G28 		; home all axes
G1 Z5 F5000	; lift nozzle 5 mm
M109 S190	; set extruder temperature to 190 and wait
G1 E-3 F50	; retract filament 3mm
M190 S60	; set bed temperature to 60 and wait

G28 
M1 S30		; wait 30 seconds

G1 Z5 F5000	; lift nozzle 5 mm
G1 X200 Y200 F15000 ; move nozzle to [200:200]
G1 Z0 F5000	; lower nozzle
M1 S30		; wait 30 seconds

G1 Z5 F5000
G1 X200 Y0 F15000
G1 Z0 F5000
M1 S30

G1 Z5 F5000
G1 X0 Y0 F15000
G1 Z0 F5000
M1 S30

G1 Z5 F5000
G1 X0 Y200 F15000
G1 E15 F50	; extract filament 3+15mm
M1 S10		; wait 10 seconds
G1 Z0 F5000	; lower nozzle
