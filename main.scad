use <mirror.scad>;
use <card.scad>;
use <chip_card_reader.scad>;

mirror();
translate([0, 100, 0])
    card();
    
translate([0, 50, 0])
    chip_card_reader();