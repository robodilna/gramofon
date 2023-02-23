polomer = 55;
stena = 1;
vyska = 15;

// kolik
prumer_dira = 3;
dira_oseknuti = 2.5;
prumer_kolik = 5;
vyska_kolik = 5;

//vyrez
vyrez_sirka = 10;

$fn= 64;

difference() {
    union () {
        difference() {
            cylinder(vyska, r = polomer);
            translate([0,0,stena])
                cylinder(vyska, r = polomer-stena);
        };
        cylinder(vyska_kolik, d = prumer_kolik);
    }
    union()
    {
        difference()
        {
            cylinder(vyska, d = prumer_dira);
            translate([-prumer_dira/2,dira_oseknuti-prumer_dira/2,0])
                cube([prumer_dira,prumer_dira,vyska_kolik]);
            
        }
        translate([0,0,10])
        cube([polomer*2,10,10], true);
    }
};

