//tloustka plastu
t = 1.5;
//presah uchyceni
p = 3;

delka = 70;
sirka = 10;

//čep
vyska_cepu = 8;
prumer_cepu = 2;

$fn = 64;


difference() {
    union(){
        cube([delka,sirka,sirka]);
        translate([0,-p,0])
        cube([7.5,sirka+2*p,10]);
    }
    union() {
        translate([0,t,t])
        cube([delka,sirka-2*t,sirka]);
        
        translate([3,-p,0])
        cube([1.5,p,sirka]);
        
        translate([3,sirka,0])
        cube([1.5,p,sirka]);
        
        translate([0,sirka,0])
        rotate([90,0,0])
        linear_extrude(sirka)
        polygon([[sirka,sirka], [delka*3/4,sirka], [delka*3/4,t]]);
        
        translate([delka*3/4,0,t])
        cube([delka/4,sirka,sirka]);
    }
}

translate([delka-sirka/2,sirka/2,0])
cylinder(h=vyska_cepu,d=prumer_cepu);
