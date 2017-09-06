$fn=200;
DXTyre(0,0,0);
module DXTyre(x,y,z){
	translate([x,y,z]){
		union(){
			rotate([270,90,180]){
				difference() {
					cylinder(h=40, r=100);
					cylinder(h=40, r=85);
				}
				color("blue") cylinder(h=100, d=20);
				translate(v=[0,0,10]) {
					cylinder(h=5, r=100);
				}
				for(i=[0:30]) {
					rotate([0,0,i*360/31]){
						translate([97,-10,35]){
							rotate([0,90,0]){
								color("red") freccia(4,4,10);
							}
						}
					}
				}
			}
		}
	}
}



module freccia(w,h,z){
    scale([8,4,0.5]){
		difference() {
			difference() {
				cube([w,h,z]);
				translate([0,1,0]){
					rotate([0,0,55]){
						cube([w,h,z]);
					}
				}
				translate([4,1,0]){
					rotate([0,0,35]){
					cube([w,h,z]);
					}
				}
			}
			translate([0,-1,0]){
				difference() {
					cube([w,h,z]);
					translate([0,1,0]){
						rotate([0,0,55]){
							cube([w,h,z]);
						}
					}
					translate([4,1,0]){
						rotate([0,0,35]){
							cube([w,h,z]);
						}
					}
				}
			}
		}
	}
}