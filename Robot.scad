x = 0;
y = 0;
z = 0;

translate([x + 80,y + 150,z -5]){
  #  import ("stl/SupportoCuscinetto_sup.stl", convexity = 4);
   color("Navy") import ("stl/SupportoCuscinetto_inf.stl", convexity = 4);
}

translate([x + 80,y - 135,z - 5]){
    #  import ("stl/SupportoCuscinetto_sup.stl", convexity = 4);
    color("Navy") import ("stl/SupportoCuscinetto_inf.stl", convexity = 4);
}

translate([x + 80,y + 200,z - 5]){
   color("Green") import ("stl/DXTyre.stl", convexity = 4);
}

translate([x + 80,y - 200,z - 5]){
    color("Green") import ("stl/SXTyre.stl", convexity = 4);
}
    
translate([x - 150,y - 200,z - 40]){
    import ("stl/Base.stl", convexity = 4);
}





