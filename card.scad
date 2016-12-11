module card() {
    cardX = 86;
    cardY = 54;
    
    module roundedcube(x, y, z){
        cube([x, y, z]);
    }
    module chip() {
        color([0,0,0])
        translate([9, cardY - 18, 0])
        roundedcube(10, 9, 1);
    }
    module qrCode() {
        width = 40;
        height = 40;
        color([0, 0, 0])
        translate([cardX - width - 7, (cardY - height) / 2, 0])
        cube([width, height, 1]);
    }
    difference() {
        difference() {
            roundedcube(cardX, cardY, 1);
            translate([0, 0, -0.5]) resize([0, 0, 2]) chip();      
        }
        translate([0, 0, -0.5]) resize([0, 0, 2]) qrCode();
    } 
    
    chip();
    
    qrCode();
}

card();