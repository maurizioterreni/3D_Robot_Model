use <../Library/M3.scad>;
$fn=200;
difference(){
union(){
    
    difference(){
        translate([9,0,7]){
            cube([32,80,20],true);
        }
        translate([0,0,-5]){
            cylinder(h=30, d=50);
        }
    }
    difference(){
        cylinder(h=14, d=50);
        cylinder(h=14, d=40);
    }
    translate([0,0,-3]){
        difference(){
            cylinder(h=3, d=50);
            cylinder(h=3, d=30);
        }
    }
    translate([0,0,14]){
        difference(){
            cylinder(h=3, d=50);
            cylinder(h=3, d=30);
        }
    }
   
}

 rotate([0,270,0]){
        translate([6, 32, 7]){
            BoltM3(l=32, inset=1);
        }
    }
    
    rotate([0,270,0]){
        translate([6, -32, 7]){
            BoltM3(l=32, inset=1);
        }
    }
}
  
