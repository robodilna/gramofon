// todo: udelat prehledne

$fn = 64;

difference() {
union() {
    linear_extrude(14)
    difference() {
        square([24,35], true);
        union() {
            translate([0,2/2])
            square([24-2*6,35-2], true);
            translate([24/2-1,30/2])
            square([2,5], true);
            translate([-24/2+1,30/2])
            square([2,5], true);
        }
    }
    translate([0,-15.5,14/2])
    rotate([90,0,0])
    cylinder(2+2, d=7); 
}
union()
{
   translate([0,-15,14/2])
rotate([90,0,0])
cylinder(5, d=4); 

translate([0,-15,14/2+9/2])
rotate([90,0,0])
cylinder(5, d=1.6);

translate([0,-15,14/2-9/2])
rotate([90,0,0])
cylinder(5, d=1.6);    
}
}
