use <M2.scad>;
use <M3.scad>;
$fn=200;

cuscinetto(0,0,0);

module cuscinetto(x,y,z){
  rotate([90,90,0]){
    difference(){
      union(){
        difference(){
          translate([x+9,y,z+7]){
              cube([32,80,20],true);
          }
          translate([x,y,z-5]){
              cylinder(h=30, d=50);
          }
        }
        difference(){
          cylinder(h=14, d=50);
          cylinder(h=14, d=40);
        }
        translate([x,y,z-3]){
          difference(){
              cylinder(h=3, d=50);
              cylinder(h=3, d=30);
          }
        }
        translate([x,y,z+14]){
          difference(){
              cylinder(h=3, d=50);
              cylinder(h=3, d=30);
          }
        }
      }
      rotate([0,270,0]){
        translate([x+6, y+32, z+7]){
           //BoltM3(l=32, inset=1);
              translate([0,0,-40]){
                    cylinder(h=40, r=1.5,$fn=100);
              }
              NutM2(tolerance=0);
        }
      }
      rotate([0,270,0]){
          translate([z+6, y-32, z+7]){
              //BoltM3(l=32, inset=1);
              translate([0,0,-40]){
                    cylinder(h=40, r=1.5,$fn=100);
              }
              NutM2(tolerance=0);
          }
      }
    }
  }
}
