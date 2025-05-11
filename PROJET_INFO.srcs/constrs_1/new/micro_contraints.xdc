# Fichier de contraintes pour Basys 3 - LEDs
# Connecte le signal leds[7:0] aux 8 LEDs de la carte

## Horloge
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports { clk_external }]; # Horloge 100MHz

## Bouton Reset
set_property -dict { PACKAGE_PIN R2  IOSTANDARD LVCMOS33 } [get_ports { rst }]; # Bouton Reset (BTNU)

## LEDs
set_property -dict { PACKAGE_PIN U16  IOSTANDARD LVCMOS33 } [get_ports { leds[0] }]; # LED0
set_property -dict { PACKAGE_PIN E19  IOSTANDARD LVCMOS33 } [get_ports { leds[1] }]; # LED1
set_property -dict { PACKAGE_PIN U19  IOSTANDARD LVCMOS33 } [get_ports { leds[2] }]; # LED2
set_property -dict { PACKAGE_PIN V19  IOSTANDARD LVCMOS33 } [get_ports { leds[3] }]; # LED3
set_property -dict { PACKAGE_PIN W18  IOSTANDARD LVCMOS33 } [get_ports { leds[4] }]; # LED4
set_property -dict { PACKAGE_PIN U15  IOSTANDARD LVCMOS33 } [get_ports { leds[5] }]; # LED5
set_property -dict { PACKAGE_PIN U14  IOSTANDARD LVCMOS33 } [get_ports { leds[6] }]; # LED6
set_property -dict { PACKAGE_PIN V14  IOSTANDARD LVCMOS33 } [get_ports { leds[7] }]; # LED7

## PC LEDS
set_property -dict { PACKAGE_PIN P1  IOSTANDARD LVCMOS33 } [get_ports { pc_leds[0] }]; # LED0
set_property -dict { PACKAGE_PIN N3  IOSTANDARD LVCMOS33 } [get_ports { pc_leds[1] }]; # LED1
set_property -dict { PACKAGE_PIN P3  IOSTANDARD LVCMOS33 } [get_ports { pc_leds[2] }]; # LED2
set_property -dict { PACKAGE_PIN U3  IOSTANDARD LVCMOS33 } [get_ports { pc_leds[3] }]; # LED3
set_property -dict { PACKAGE_PIN W3  IOSTANDARD LVCMOS33 } [get_ports { pc_leds[4] }]; # LED4
set_property -dict { PACKAGE_PIN V3  IOSTANDARD LVCMOS33 } [get_ports { pc_leds[5] }]; # LED5
set_property -dict { PACKAGE_PIN V13  IOSTANDARD LVCMOS33 } [get_ports { pc_leds[6] }]; # LED6
#set_property -dict { PACKAGE_PIN V13  IOSTANDARD LVCMOS33 } [get_ports { pc_leds[7] }]; # LED7

## CLK LED
set_property -dict { PACKAGE_PIN L1  IOSTANDARD LVCMOS33 } [get_ports { clk_led }]; # LED7

## Afficheurs 7 segments (seg[6:0] = {a,b,c,d,e,f,g})
set_property -dict { PACKAGE_PIN W7   IOSTANDARD LVCMOS33 } [get_ports { seg[6] }]; # a
set_property -dict { PACKAGE_PIN W6   IOSTANDARD LVCMOS33 } [get_ports { seg[5] }]; # b
set_property -dict { PACKAGE_PIN U8   IOSTANDARD LVCMOS33 } [get_ports { seg[4] }]; # c
set_property -dict { PACKAGE_PIN V8   IOSTANDARD LVCMOS33 } [get_ports { seg[3] }]; # d
set_property -dict { PACKAGE_PIN U5   IOSTANDARD LVCMOS33 } [get_ports { seg[2] }]; # e
set_property -dict { PACKAGE_PIN V5   IOSTANDARD LVCMOS33 } [get_ports { seg[1] }]; # f
set_property -dict { PACKAGE_PIN U7   IOSTANDARD LVCMOS33 } [get_ports { seg[0] }]; # g

## Anodes des afficheurs 7 segments
set_property -dict { PACKAGE_PIN U2   IOSTANDARD LVCMOS33 } [get_ports { an[0] }]; # AN0 (droit)
set_property -dict { PACKAGE_PIN U4   IOSTANDARD LVCMOS33 } [get_ports { an[1] }]; # AN1
set_property -dict { PACKAGE_PIN V4   IOSTANDARD LVCMOS33 } [get_ports { an[2] }]; # AN2
set_property -dict { PACKAGE_PIN W4   IOSTANDARD LVCMOS33 } [get_ports { an[3] }]; # AN3 (gauche)