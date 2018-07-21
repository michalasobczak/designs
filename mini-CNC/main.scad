$fn=21;

r1=3.1;
r2=3.3;

// OUTER
union() {
    difference() { 
        cube([75, 70, 8]);   
        translate([3,3,-1])
            cube([69, 64, 12]);    
        #translate([-0.1, 11, 5])
            rotate([0,90,0])
            cylinder(r=r1/2, h=75.2);    
        #translate([-0.1, 59, 5])
            rotate([0,90,0])
            cylinder(r=r1/2, h=75.2);
    }
    translate([0,-12,6])
        cube([65, 12, 2]);
    translate([0,-12,0])
        cube([65, 3, 6]);
    translate([0,-9,0])
        cube([3, 9, 6]);
    translate([62,-9,0])
        cube([3, 9, 6]);
}

//INNER
union() {
    difference() { 
        translate([6,6,2])
            cube([30, 58, 15]);   
        translate([9,9,1])
            cube([24, 52, 17]);    
        #translate([15.8, 64.9, 11])
            rotate([90,0,0])
            cylinder(r=r1/2, h=59.0);    
        #translate([26.2, 64.9, 11])
            rotate([90,0,0])
            cylinder(r=r1/2, h=59.0);
        translate([-0.1, 11, 5])
            rotate([0,90,0])
            cylinder(r=r2/2, h=75.2);    
        translate([-0.1, 59, 5])
            rotate([0,90,0])
            cylinder(r=r2/2, h=75.2);
    }
    translate([-6,11,15])
        cube([12, 53, 2]);
    #translate([-6,11,10])
        cube([12, 3, 5]);
    #translate([-6,21,10])
        cube([12, 3, 5]);
    #translate([-6,31,10])
        cube([12, 3, 5]);
    #translate([-6,41,10])
        cube([12, 3, 5]);
    #translate([-6,51,10])
        cube([12, 3, 5]);
    #translate([-6,61,10])
        cube([12, 3, 5]);
}


difference() { 
    translate([11,12,8])
        cube([20, 15, 15]);   
    translate([14, 15,-1])
        cube([14, 9, 37]);    
    translate([15.8, 64.9, 11])
        rotate([90,0,0])
        cylinder(r=r2/2, h=59.0);    
    translate([26.2, 64.9, 11])
        rotate([90,0,0])
        cylinder(r=r2/2, h=59.0);
}