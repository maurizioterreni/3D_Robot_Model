use <M2.scad>;
use <M3.scad>;

difference() {
    cube([10,10,5]);
    translate([5,5,5]){
        translate([0,0,-5]){
            cylinder(h=5, r=1.5,$fn=100);
        }
        NutM2(tolerance=0);
    }
}