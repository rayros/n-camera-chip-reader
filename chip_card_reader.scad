module chip_card_reader() {
    module switch() {
        cube([6, 10, 1]);
    }
    module reader() {
        width = 11.5;
        height = 21.5;
        translate([10, 35 - height, 0])
        cube([11.5, height, 1]);
    }
    color([1,0,1])
        translate([10, 35, 0])
        cube([34, 5, 1]);
    
    color([1,0,1])
    cube([60, 35, 1]);
    switch();
    reader();
}
chip_card_reader();