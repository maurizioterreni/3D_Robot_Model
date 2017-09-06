x = 0;
y = 0;
z = 0;

translate([x + 80,y + 150,z -5]){
    import ("stl/SupportoCuscinetto.stl", convexity = 4);
}

translate([x + 80,y - 135,z - 5]){
    import ("stl/SupportoCuscinetto.stl", convexity = 4);
}

translate([x + 80,y + 200,z - 5]){
    import ("stl/DXTyre.stl", convexity = 4);
}

translate([x + 80,y - 200,z - 5]){
    import ("stl/SXTyre.stl", convexity = 4);
}
    
translate([x - 150,y - 200,z - 40]){
    import ("stl/Base.stl", convexity = 4);
}





