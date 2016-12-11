module camera() {
    module groove() {
        cylinder(d=2.5, h=1, $fn=100);  
    }
    
    cube([30, 25, 1]);
    translate([2.5, 0, 0])
    groove();
}
camera();