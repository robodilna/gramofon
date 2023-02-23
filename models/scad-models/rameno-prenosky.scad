x = 8;
x2 = 20;
y = 9;
z = 20;
d = 91.2;
prumer = 3.5;
$fn = 64;

linear_extrude(1.5)
difference() {
    union() {
        polygon(
        [
           [x,0],
           [0,0],
           [-(x2-x)/2,d],
           [x2-(x2-x)/2,d]
        ]
        );
        
    }
    
    union() {
        
        translate([x / 2, x /2])
            circle(d = prumer);
        
        
        translate([x / 2 - y/2, d-z])
            square([y, z]);
    }
}