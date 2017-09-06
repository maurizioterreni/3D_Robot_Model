use<Library/M2.scad>

$fn=200;

Base(-150,-200,-40);

module Base(x,y,z){
    difference() {
        Fondo(x,y,z);
        translate([x-195,y+200,z+10]){
            BoltM2(tolerance=0,$fn=100);
        }
        translate([x-150,y+300,z+10]){
            BoltM2(tolerance=0,$fn=100);
        }
        translate([x-150,y+100,z+10]){
            BoltM2(tolerance=0,$fn=100);
        }
    }
}
    
    
 module Fondo(x,y,z){  
	translate([x,y,z]){
		 difference() {
			union(){
				cube([400,400,10]);
				translate([0,200,0]){
					cylinder(h=10, r=200);
				}
			}
			translate([260,45,0]){
				rotate([90,0,0]){
					cylinder(h=45, r=140);
				}
			}
			translate([260,400,0]){
				rotate([90,0,0]){
					cylinder(h=45, r=140);
				}
			}
		}
		translate([-58,200,0]){
			difference() {
				translate([0,0,0]){
					cylinder(h=10, r=500);
				}
				translate([-600,-500,0]){
					cube([1000,1000,30]);
				}
				translate([0,-700,0]){
					color("red") cube([500,500,30]);
				}
				translate([0,200,0]){
					color("black") cube([500,500,30]);
				}
			}
		}
	}
}