//use <DXTyre.scad>;
//use <SXTyre.scad>;
//use <Base.scad>;
translate([100,100,100]){
import ("stl/DXTyre.stl", convexity = 4);
import ("stl/SXTyre.stl", convexity = 4);
import ("stl/Base.stl", convexity = 4);
}

//$fn=200;

x = 0;
y = 0;
z = 0;

//Base(x - 150,y - 200,z - 40);
//DXTyre(x + 80,y + 200,z + 0);
//SXTyre(x + 80,y - 200,z + 0);



