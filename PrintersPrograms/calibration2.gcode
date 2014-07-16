M140 S70		; set bed temperature to 70 and continue
M104 S190		; set extruder temperature to 190 and continue
M83			; set extruder to relative mode
G28 			; home all axes
G1 Z2 F5000		; lift nozzle 2 mm
M109 S190		; set extruder temperature to 190 and wait
G1 E-2 F50		; retract filament 2mm
M190 S70		; set bed temperature to 70 and wait

; Cycle 1
G28
M0 			; wait

G1 Z2 F5000		; lift nozzle 2 mm
G1 X200 Y200 F15000 	; move nozzle to [200:200]
G1 Z0 F5000		; lower nozzle
M0 			; wait

G1 Z2 F5000
G1 X200 Y0 F15000
G1 Z0 F5000
M0

G1 Z2 F5000
G1 X0 Y0 F15000
G1 Z0 F5000
M0

; Cycle 2
G1 Z2 F5000
G1 X0 Y200 F15000
G1 Z0 F5000
M0 		

G1 Z2 F5000	
G1 X200 Y200 F15000
G1 Z0 F5000	
M0 		

G1 Z2 F5000
G1 X200 Y0 F15000
G1 Z0 F5000
M0

G1 Z2 F5000
G1 X0 Y0 F15000
G1 Z0 F5000
M0

; Ending
G1 Z2 F5000
G1 X0 Y200 F15000
G1 Z10 F5000
G1 E15 F50	; extract filament 15mm

