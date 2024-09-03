module actuatorHole() {
    h = 5;
    r = 8;
    translate([0, 0, 7]){
        cylinder(h,r,r, $fn=50);
    };
};

module orig() {
translate([0,0,0]) {
    import( "/home/tom/Downloads/self_balancing_cube/files/cubli_reaction_wheel_3x.stl");
    };
}

if (true) { 
    difference() {
        orig();
        actuatorHole();
    };
} else {
    orig();
}

