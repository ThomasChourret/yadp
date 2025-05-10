# Fichier de contraintes pour Basys 3 - LEDs
# Connecte le signal leds[7:0] aux 8 LEDs de la carte

## Horloge
set_property -dict { PACKAGE_PIN W5   IOSTANDARD LVCMOS33 } [get_ports { clk_external }]; # Horloge 100MHz

## Bouton Reset
set_property -dict { PACKAGE_PIN U18  IOSTANDARD LVCMOS33 } [get_ports { rst }]; # Bouton Reset (BTNU)

## LEDs
set_property -dict { PACKAGE_PIN U16  IOSTANDARD LVCMOS33 } [get_ports { leds[0] }]; # LED0
set_property -dict { PACKAGE_PIN E19  IOSTANDARD LVCMOS33 } [get_ports { leds[1] }]; # LED1
set_property -dict { PACKAGE_PIN U19  IOSTANDARD LVCMOS33 } [get_ports { leds[2] }]; # LED2
set_property -dict { PACKAGE_PIN V19  IOSTANDARD LVCMOS33 } [get_ports { leds[3] }]; # LED3
set_property -dict { PACKAGE_PIN W18  IOSTANDARD LVCMOS33 } [get_ports { leds[4] }]; # LED4
set_property -dict { PACKAGE_PIN U15  IOSTANDARD LVCMOS33 } [get_ports { leds[5] }]; # LED5
set_property -dict { PACKAGE_PIN U14  IOSTANDARD LVCMOS33 } [get_ports { leds[6] }]; # LED6
set_property -dict { PACKAGE_PIN V14  IOSTANDARD LVCMOS33 } [get_ports { leds[7] }]; # LED7