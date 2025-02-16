
; external perimeters extrusion width = 0.42mm
; perimeters extrusion width = 0.45mm
; infill extrusion width = 0.45mm
; solid infill extrusion width = 0.42mm
; top infill extrusion width = 0.42mm
; support material extrusion width = 0.42mm
; first layer extrusion width = 0.50mm

; EXECUTABLE_BLOCK_START
M73 P0 R12
M106 S0 ; disable fan
M106 P2 S0 ; disable additional fan 
; FEATURE: Custom
M190 S55
M104 S220
G90
M83
G1 Z5 F6000
G1 E-1.5 F800
G1 X110 Y-110 F6000
G1 E2 F800
G1 Y-110 X55 Z0.25 F4800
G1 X-55 E8 F2400
G1 Y-109.6 F2400
G1 X55 E5 F2400
G1 Y-110 X55 Z0.45 F4800
G1 X-55 E8 F2400
G1 Y-109.6 F2400
G1 X55 E5 F2400
G92 E0
G90
G21
M83 ; use relative distances for extrusion
; filament start gcode
;right_extruder_material: PLA
M900 K0.025 L1000 M10 ; Override pressure advance value
M981 S1 P20000 ;open spaghetti detector
M106 S0 ; disable fan
M106 P2 S0 ; disable additional fan 
; CHANGE_LAYER
; Z_HEIGHT: 0.2
; LAYER_HEIGHT: 0.2
;BEFORE_LAYER_CHANGE
;0.2
G1 E-.8 F2100 ; retract
;AFTER_LAYER_CHANGE
;0.2
;_SET_FAN_SPEED_CHANGING_LAYER
SET_VELOCITY_LIMIT ACCEL=500 ; adjust acceleration
G1 X0 Y-12.454 F30000 ; move to first skirt point travel_to_xyz
G1 Z.4 ; move to first skirt point travel_to_xyz
G1 Z.2 ; restore layer Z
G1 E.8 F2100 ;  ; unretract
; FEATURE: Skirt
; LINE_WIDTH: 0.5
G1 F3000
G1 X23.823 Y-12.454 E.88733 ; skirt
G1 X25.285 Y-12.061 E.05638 ; skirt
G1 X26.353 Y-10.988 E.05638 ; skirt
G1 X26.738 Y-9.54 E.0558 ; skirt
G1 X26.738 Y15.46 E.93115 ; skirt
G1 X26.345 Y16.922 E.05638 ; skirt
G1 X25.271 Y17.989 E.05638 ; skirt
G1 X23.823 Y18.374 E.0558 ; skirt
G1 X-16.177 Y18.374 E1.48985 ; skirt
G1 X-17.638 Y17.981 E.05638 ; skirt
G1 X-18.706 Y16.908 E.05638 ; skirt
G1 X-19.091 Y15.46 E.0558 ; skirt
G1 X-19.091 Y-9.54 E.93115 ; skirt
G1 X-18.698 Y-11.002 E.05638 ; skirt
G1 X-17.624 Y-12.069 E.05638 ; skirt
G1 X-16.177 Y-12.454 E.0558 ; skirt
G1 X-.04 Y-12.454 E.60102 ; skirt
G1 X-.04 Y-11.997 F30000
G1 F3000
G1 X23.823 Y-11.997 E.88882 ; skirt
G1 X25.155 Y-11.605 E.05169 ; skirt
G1 X26.061 Y-10.555 E.05169 ; skirt
G1 X26.281 Y-9.54 E.03866 ; skirt
G1 X26.281 Y15.46 E.93115 ; skirt
G1 X25.889 Y16.791 E.05169 ; skirt
G1 X24.838 Y17.698 E.05169 ; skirt
G1 X23.823 Y17.917 E.03866 ; skirt
G1 X-16.177 Y17.917 E1.48985 ; skirt
M73 P1 R12
G1 X-17.508 Y17.525 E.05169 ; skirt
G1 X-18.414 Y16.475 E.05169 ; skirt
G1 X-18.634 Y15.46 E.03866 ; skirt
G1 X-18.634 Y-9.54 E.93115 ; skirt
G1 X-18.242 Y-10.871 E.05169 ; skirt
G1 X-17.191 Y-11.778 E.05169 ; skirt
G1 X-16.177 Y-11.997 E.03866 ; skirt
G1 X-.08 Y-11.997 E.59953 ; skirt
G1 E-.8 F2100 ; retract
; WIPE_START
G1 F3000
G1 X1.92 Y-11.997 ; wipe and retract
; WIPE_END
; start printing object, unique label id: 81
M624 AQAAAAAAAAA=
G1 X6.423 Y-5.835 Z.6 F30000 ; move to first support material point travel_to_xyz
G1 X9.881 Y-1.103 Z.6 ; move to first support material point travel_to_xyz
G1 Z.2 ; restore layer Z
G1 E.8 F2100 ;  ; unretract
; FEATURE: Support
G1 F3000
G3 X9.18 Y-1.223 I-1.057 J4.055 E.95412 ; support material
G1 X9.814 Y-1.114 E.02397 ; support material
G1 X12.457 Y4.587 F30000
G1 F3000
G1 X12.457 Y1.919 E.09939 ; support material
G2 X11.949 Y.843 I-4.302 J1.374 E.04443 ; support material
G1 X11.949 Y5.076 E.15765 ; support material
G3 X11.441 Y5.675 I-2 J-1.182 E.02938 ; support material
G1 X11.441 Y.226 E.20294 ; support material
G2 X10.934 Y-.181 I-1.443 J1.277 E.02437 ; support material
G1 X10.934 Y6.086 E.23343 ; support material
G3 X10.426 Y6.375 I-1.096 J-1.337 E.02186 ; support material
G1 X10.426 Y-.465 E.25475 ; support material
G2 X9.918 Y-.653 I-.803 J1.387 E.02027 ; support material
G1 X9.918 Y6.572 E.26913 ; support material
G3 X9.41 Y6.695 I-.612 J-1.42 E.01956 ; support material
G1 X9.41 Y-.766 E.2779 ; support material
G2 X8.902 Y-.812 I-.387 J1.458 E.01908 ; support material
G1 X8.902 Y6.738 E.28121 ; support material
G3 X8.394 Y6.709 I-.167 J-1.496 E.01904 ; support material
G1 X8.394 Y-.793 E.27941 ; support material
G1 X7.886 Y-.706 E.01919 ; support material
G1 X7.886 Y6.613 E.27261 ; support material
G3 X7.379 Y6.446 I.234 J-1.565 E.02001 ; support material
G1 X7.379 Y-.53 E.2598 ; support material
G2 X6.871 Y-.269 I.505 J1.611 E.02136 ; support material
G1 X6.871 Y6.192 E.24067 ; support material
G3 X6.363 Y5.826 I.815 J-1.664 E.02344 ; support material
G1 X6.363 Y.099 E.21328 ; support material
G2 X5.855 Y.624 I1.277 J1.743 E.02734 ; support material
G1 X5.855 Y5.289 E.17374 ; support material
G3 X5.347 Y4.442 I2.215 J-1.904 E.03695 ; support material
G1 X5.347 Y1.02 E.12745 ; support material
G1 E-.8 F2100 ; retract
; WIPE_START
G1 F3000
G1 X5.347 Y3.02 ; wipe and retract
; WIPE_END
M73 P1 R11
G1 X12.69 Y.937 Z.6 F30000 ; move to first support material point travel_to_xyz
G1 X19.881 Y-1.103 Z.6 ; move to first support material point travel_to_xyz
G1 Z.2 ; restore layer Z
G1 E.8 F2100 ;  ; unretract
G1 F3000
G3 X19.18 Y-1.223 I-1.057 J4.055 E.95412 ; support material
G1 X19.814 Y-1.114 E.02397 ; support material
G1 X22.107 Y5.209 F30000
M73 P2 R11
G1 F3000
G1 X22.107 Y1.099 E.1531 ; support material
G2 X21.599 Y.405 I-2.278 J1.134 E.03219 ; support material
G1 X21.599 Y5.524 E.19068 ; support material
G3 X21.091 Y5.98 I-1.582 J-1.253 E.02553 ; support material
G1 X21.091 Y-.057 E.22483 ; support material
G2 X20.583 Y-.377 I-1.188 J1.321 E.02248 ; support material
G1 X20.583 Y6.304 E.24883 ; support material
G3 X20.075 Y6.531 I-.918 J-1.367 E.02083 ; support material
G1 X20.075 Y-.598 E.26553 ; support material
G2 X19.567 Y-.739 I-.666 J1.41 E.01973 ; support material
G1 X19.567 Y6.664 E.27572 ; support material
G3 X19.059 Y6.725 I-.433 J-1.45 E.01915 ; support material
G1 X19.059 Y-.812 E.28071 ; support material
G1 X18.552 Y-.812 E.01892 ; support material
G1 X18.552 Y6.722 E.2806 ; support material
G3 X18.044 Y6.654 I-.056 J-1.515 E.01918 ; support material
G1 X18.044 Y-.733 E.27514 ; support material
G2 X17.536 Y-.585 I.177 J1.555 E.0198 ; support material
G1 X17.536 Y6.517 E.26452 ; support material
G1 X17.028 Y6.287 E.02076 ; support material
G1 X17.028 Y-.357 E.24748 ; support material
G2 X16.52 Y-.028 I.707 J1.646 E.02266 ; support material
G1 X16.52 Y5.955 E.22285 ; support material
G3 X16.012 Y5.49 I1.104 J-1.714 E.02579 ; support material
G1 X16.012 Y.446 E.18787 ; support material
G2 X15.504 Y1.157 I1.821 J1.837 E.03272 ; support material
G1 X15.504 Y5.161 E.14912 ; support material
G1 E-.8 F2100 ; retract
; WIPE_START
G1 F3000
G1 X15.504 Y3.161 ; wipe and retract
; WIPE_END
G1 X8.373 Y.442 Z.6 F30000 ; move to first perimeter point travel_to_xyz
G1 X5.25 Y-.749 Z.6 ; move to first perimeter point travel_to_xyz
G1 Z.2 ; restore layer Z
G1 E.8 F2100 ;  ; unretract
; FEATURE: Outer wall
G1 F3000
G1 X5.259 Y-.759 E.00051 ; perimeter
G1 X5.939 Y-1.308 E.03254 ; perimeter
G1 X6.702 Y-1.734 E.03254 ; perimeter
G1 X7.525 Y-2.025 E.03254 ; perimeter
G1 X8.387 Y-2.173 E.03254 ; perimeter
G1 X9.26 Y-2.173 E.03254 ; perimeter
G1 X10.122 Y-2.025 E.03254 ; perimeter
G1 X10.945 Y-1.734 E.03254 ; perimeter
G1 X11.708 Y-1.308 E.03254 ; perimeter
G1 X12.388 Y-.759 E.03254 ; perimeter
G1 X12.966 Y-.102 E.03258 ; perimeter
G3 X13.413 Y.67 I-9.935 J6.268 E.03325 ; perimeter
G3 X13.784 Y2.325 I-28.336 J7.221 E.06317 ; perimeter
G1 X13.82 Y3.172 E.03159 ; perimeter
G1 X13.712 Y4.014 E.03159 ; perimeter
G2 X13.547 Y4.816 I2.078 J.846 E.03069 ; perimeter
G3 X13.211 Y5.654 I-5.346 J-1.659 E.03366 ; perimeter
G1 X12.691 Y6.363 E.03275 ; perimeter
G1 X12.06 Y6.968 E.03256 ; perimeter
G1 X11.336 Y7.457 E.03254 ; perimeter
G1 X10.54 Y7.817 E.03254 ; perimeter
G1 X9.694 Y8.037 E.03254 ; perimeter
G1 X8.823 Y8.111 E.03254 ; perimeter
G1 X7.953 Y8.037 E.03254 ; perimeter
G1 X7.107 Y7.817 E.03254 ; perimeter
G1 X6.311 Y7.457 E.03254 ; perimeter
G1 X5.587 Y6.968 E.03254 ; perimeter
G1 X4.956 Y6.363 E.03254 ; perimeter
G1 X4.437 Y5.661 E.03254 ; perimeter
G1 X4.044 Y4.881 E.03254 ; perimeter
G1 X3.788 Y4.045 E.03254 ; perimeter
G1 X3.732 Y3.612 E.01627 ; perimeter
G3 X3.674 Y2.938 I2.994 J-.598 E.02523 ; perimeter
G1 X3.715 Y2.301 E.02377 ; perimeter
G1 X3.898 Y1.452 E.03238 ; perimeter
G1 X4.224 Y.641 E.03254 ; perimeter
G1 X4.682 Y-.103 E.03254 ; perimeter
G1 X5.223 Y-.719 E.03054 ; perimeter
G1 E-.8 F2100 ; retract
; WIPE_START
G1 F3000
G1 X5.259 Y-.759 ; wipe and retract
G1 X5.939 Y-1.308 ; wipe and retract
G1 X6.702 Y-1.734 ; wipe and retract
G1 X6.889 Y-1.8 ; wipe and retract
; WIPE_END
G1 X14.506 Y-1.311 Z.6 F30000 ; move to first perimeter point travel_to_xyz
G1 X22.972 Y-.766 Z.6 ; move to first perimeter point travel_to_xyz
G1 Z.2 ; restore layer Z
G1 E.8 F2100 ;  ; unretract
; FEATURE: Inner wall
G1 F3000
G1 X22.714 Y-1.08 E.01514 ; perimeter
G1 X21.966 Y-1.688 E.03589 ; perimeter
G1 X21.134 Y-2.152 E.03548 ; perimeter
G1 X20.237 Y-2.469 E.03544 ; perimeter
G1 X19.299 Y-2.63 E.03544 ; perimeter
G1 X18.348 Y-2.63 E.03544 ; perimeter
G1 X17.41 Y-2.469 E.03544 ; perimeter
G1 X16.513 Y-2.152 E.03544 ; perimeter
G1 X15.682 Y-1.688 E.03544 ; perimeter
G1 X14.942 Y-1.09 E.03545 ; perimeter
G1 X14.311 Y-.374 E.03555 ; perimeter
G2 X13.824 Y.468 I10.817 J6.829 E.03624 ; perimeter
G2 X13.336 Y-.374 I-11.313 J5.994 E.03624 ; perimeter
G1 X12.705 Y-1.09 E.03555 ; perimeter
G1 X11.965 Y-1.688 E.03545 ; perimeter
G1 X11.134 Y-2.152 E.03544 ; perimeter
G1 X10.237 Y-2.469 E.03544 ; perimeter
G1 X9.299 Y-2.63 E.03544 ; perimeter
G1 X8.348 Y-2.63 E.03544 ; perimeter
G1 X7.41 Y-2.469 E.03544 ; perimeter
G1 X6.513 Y-2.152 E.03544 ; perimeter
G1 X6.435 Y-2.109 E.00332 ; perimeter
G1 X5.682 Y-1.688 E.03213 ; perimeter
G1 X4.942 Y-1.09 E.03544 ; perimeter
G1 X4.313 Y-.376 E.03544 ; perimeter
G1 X3.814 Y.434 E.03544 ; perimeter
G1 X3.459 Y1.317 E.03544 ; perimeter
G1 X3.261 Y2.238 E.0351 ; perimeter
G2 X3.222 Y3.223 I6.113 J.736 E.03675 ; perimeter
G1 X3.339 Y4.142 E.0345 ; perimeter
G1 X3.618 Y5.052 E.03544 ; perimeter
G1 X4.046 Y5.901 E.03544 ; perimeter
G1 X4.612 Y6.666 E.03544 ; perimeter
G1 X5.299 Y7.325 E.03544 ; perimeter
G1 X6.087 Y7.858 E.03544 ; perimeter
G1 X6.955 Y8.25 E.03544 ; perimeter
G1 X7.875 Y8.489 E.03544 ; perimeter
G1 X8.823 Y8.57 E.03544 ; perimeter
G1 X9.772 Y8.489 E.03544 ; perimeter
G1 X10.692 Y8.25 E.03544 ; perimeter
G1 X11.56 Y7.858 E.03544 ; perimeter
G1 X12.348 Y7.325 E.03544 ; perimeter
G1 X13.036 Y6.665 E.0355 ; perimeter
G1 X13.608 Y5.885 E.03603 ; perimeter
G1 X13.823 Y5.405 E.0196 ; perimeter
G1 X14.039 Y5.885 E.0196 ; perimeter
G1 X14.611 Y6.665 E.03603 ; perimeter
G1 X15.299 Y7.325 E.0355 ; perimeter
G1 X16.087 Y7.858 E.03544 ; perimeter
M73 P3 R11
G1 X16.955 Y8.25 E.03544 ; perimeter
G1 X17.875 Y8.489 E.03544 ; perimeter
G1 X18.823 Y8.57 E.03544 ; perimeter
G1 X19.772 Y8.489 E.03544 ; perimeter
G1 X20.692 Y8.25 E.03544 ; perimeter
G1 X21.56 Y7.858 E.03544 ; perimeter
G1 X22.349 Y7.324 E.0355 ; perimeter
G2 X22.972 Y6.706 I-10.979 J-11.703 E.03268 ; perimeter
G2 X22.966 Y14.603 I838.241 J4.574 E.29411 ; perimeter
G1 X-15.319 Y14.603 E1.426 ; perimeter
G1 X-15.319 Y-8.683 E.86731 ; perimeter
G1 X22.966 Y-8.683 E1.426 ; perimeter
G1 X22.966 Y-2.038 E.24749 ; perimeter
G1 X22.972 Y-.806 E.04589 ; perimeter
G1 E-.8 F2100 ; retract
; WIPE_START
G1 F3000
G1 X22.714 Y-1.08 ; wipe and retract
G1 X21.966 Y-1.688 ; wipe and retract
G1 X21.39 Y-2.01 ; wipe and retract
; WIPE_END
G1 X23.573 Y1.417 Z.6 F30000 ; move to first perimeter point travel_to_xyz
G1 Z.2 ; restore layer Z
G1 E.8 F2100 ;  ; unretract
; FEATURE: Outer wall
G1 F3000
G1 X23.29 Y.71 E.02835 ; perimeter
G3 X22.936 Y-.034 I1.875 J-1.346 E.03085 ; perimeter
G2 X22.39 Y-.755 I-4.887 J3.137 E.03372 ; perimeter
G1 X21.708 Y-1.308 E.0327 ; perimeter
G1 X20.945 Y-1.734 E.03256 ; perimeter
G1 X20.122 Y-2.025 E.03254 ; perimeter
G1 X19.26 Y-2.173 E.03254 ; perimeter
G1 X18.387 Y-2.173 E.03254 ; perimeter
G1 X17.525 Y-2.025 E.03254 ; perimeter
G1 X16.702 Y-1.734 E.03254 ; perimeter
G1 X15.939 Y-1.308 E.03254 ; perimeter
G1 X15.259 Y-.759 E.03255 ; perimeter
G1 X14.681 Y-.102 E.03258 ; perimeter
G2 X14.22 Y.716 I6.622 J4.276 E.03502 ; perimeter
G2 X13.864 Y2.322 I33.244 J8.208 E.06128 ; perimeter
G2 X13.828 Y3.18 I5.321 J.651 E.032 ; perimeter
G1 X13.935 Y4.014 E.03132 ; perimeter
G3 X14.1 Y4.816 I-2.078 J.846 E.03069 ; perimeter
G2 X14.436 Y5.654 I5.346 J-1.659 E.03366 ; perimeter
G1 X14.956 Y6.363 E.03275 ; perimeter
G1 X15.587 Y6.968 E.03256 ; perimeter
G1 X16.311 Y7.457 E.03254 ; perimeter
G1 X17.107 Y7.817 E.03254 ; perimeter
G1 X17.953 Y8.037 E.03254 ; perimeter
G1 X18.823 Y8.111 E.03254 ; perimeter
G1 X19.694 Y8.037 E.03254 ; perimeter
G1 X20.54 Y7.817 E.03254 ; perimeter
G1 X21.336 Y7.457 E.03254 ; perimeter
G1 X22.06 Y6.968 E.03256 ; perimeter
G2 X22.691 Y6.34 I-11.159 J-11.856 E.03316 ; perimeter
G2 X23.094 Y5.558 I-3.588 J-2.342 E.03282 ; perimeter
G1 X23.464 Y4.825 E.03059 ; perimeter
G1 X23.573 Y4.466 E.01396 ; perimeter
G1 X23.573 Y5.445 E.03645 ; perimeter
G2 X23.423 Y7.959 I13.535 J2.069 E.09395 ; perimeter
G1 X23.423 Y15.06 E.26447 ; perimeter
G1 X-15.777 Y15.06 E1.46005 ; perimeter
G1 X-15.777 Y-9.14 E.90136 ; perimeter
G1 X23.423 Y-9.14 E1.46005 ; perimeter
G1 X23.423 Y-2.04 E.26447 ; perimeter
G2 X23.573 Y.477 I13.741 J.444 E.09403 ; perimeter
G1 X23.573 Y1.377 E.03351 ; perimeter
G1 E-.8 F2100 ; retract
; WIPE_START
G1 F3000
G1 X23.29 Y.71 ; wipe and retract
G1 X23.086 Y.367 ; wipe and retract
G1 X22.936 Y-.034 ; wipe and retract
G1 X22.679 Y-.402 ; wipe and retract
; WIPE_END
G1 X22.784 Y-7.573 Z.6 F30000 ; move to first infill point travel_to_xyz
G1 Z.2 ; restore layer Z
G1 E.8 F2100 ;  ; unretract
; FEATURE: Bottom surface
; LINE_WIDTH: 0.501273
G1 F4800
G1 X22.063 Y-8.294 E.03808 ; infill
G1 X21.414 Y-8.294 E.02421 ; infill
G1 X22.578 Y-7.131 E.06146 ; infill
G1 X22.578 Y-6.483 E.02421 ; infill
G1 X20.766 Y-8.294 E.0957 ; infill
G1 X20.118 Y-8.294 E.02421 ; infill
G1 X22.578 Y-5.835 E.12994 ; infill
G1 X22.578 Y-5.186 E.02421 ; infill
G1 X19.47 Y-8.294 E.16417 ; infill
G1 X18.822 Y-8.294 E.02421 ; infill
G1 X22.578 Y-4.538 E.19841 ; infill
G1 X22.578 Y-3.89 E.02421 ; infill
G1 X18.173 Y-8.294 E.23265 ; infill
M73 P4 R11
G1 X17.525 Y-8.294 E.02421 ; infill
G1 X22.578 Y-3.242 E.26689 ; infill
G1 X22.578 Y-2.593 E.02421 ; infill
G1 X16.877 Y-8.294 E.30113 ; infill
G1 X16.229 Y-8.294 E.02421 ; infill
G1 X22.578 Y-1.945 E.33539 ; infill
G1 X22.579 Y-1.69 E.00952 ; infill
G1 X22.185 Y-2.01 E.01899 ; infill
G1 X21.459 Y-2.416 E.03104 ; infill
G1 X15.58 Y-8.294 E.31052 ; infill
G1 X14.932 Y-8.294 E.02421 ; infill
G1 X20.405 Y-2.822 E.28906 ; infill
G1 X19.607 Y-2.971 E.03031 ; infill
G1 X14.284 Y-8.294 E.28117 ; infill
G1 X13.636 Y-8.294 E.02421 ; infill
G1 X18.912 Y-3.019 E.27868 ; infill
G1 X18.271 Y-3.011 E.02393 ; infill
G1 X12.988 Y-8.294 E.27907 ; infill
G1 X12.339 Y-8.294 E.02421 ; infill
G1 X17.718 Y-2.916 E.28408 ; infill
G1 X17.312 Y-2.847 E.01539 ; infill
G1 X17.184 Y-2.802 E.00505 ; infill
G1 X11.691 Y-8.294 E.29014 ; infill
G1 X11.043 Y-8.294 E.02421 ; infill
G1 X16.705 Y-2.632 E.29908 ; infill
G2 X16.243 Y-2.446 I.311 J1.441 E.0187 ; infill
G1 X10.395 Y-8.294 E.30889 ; infill
G1 X9.747 Y-8.294 E.02421 ; infill
G1 X15.827 Y-2.214 E.32117 ; infill
G1 X15.418 Y-1.975 E.01769 ; infill
G1 X9.098 Y-8.294 E.33382 ; infill
G1 X8.45 Y-8.294 E.02421 ; infill
G1 X15.06 Y-1.685 E.34912 ; infill
G1 X14.701 Y-1.395 E.01722 ; infill
G1 X7.802 Y-8.294 E.36441 ; infill
G1 X7.154 Y-8.294 E.02421 ; infill
G1 X14.393 Y-1.055 E.38239 ; infill
G1 X14.09 Y-.71 E.01715 ; infill
G1 X6.506 Y-8.294 E.4006 ; infill
G1 X5.857 Y-8.294 E.02421 ; infill
G1 X13.982 Y-.17 E.42914 ; infill
G1 E-.8 F2100 ; retract
; WIPE_START
G1 F4800
G1 X12.568 Y-1.584 ; wipe and retract
; WIPE_END
G1 X11.17 Y-2.333 Z.6 F30000 ; move to first infill point travel_to_xyz
G1 Z.2 ; restore layer Z
G1 E.8 F2100 ;  ; unretract
G1 F4800
G1 X5.209 Y-8.294 E.31487 ; infill
G1 X4.561 Y-8.294 E.02421 ; infill
G1 X9.941 Y-2.914 E.28419 ; infill
G1 X9.332 Y-3.019 E.02308 ; infill
G1 X9.189 Y-3.019 E.00537 ; infill
G1 X3.913 Y-8.294 E.27868 ; infill
G1 X3.265 Y-8.294 E.02421 ; infill
G1 X8.54 Y-3.019 E.27868 ; infill
G2 X7.954 Y-2.957 I-.113 J1.741 E.02213 ; infill
G1 X2.616 Y-8.294 E.28194 ; infill
G1 X1.968 Y-8.294 E.02421 ; infill
G1 X7.401 Y-2.862 E.28696 ; infill
G1 X7.312 Y-2.847 E.00338 ; infill
M73 P5 R11
