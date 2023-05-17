polomer =60;
stena = 1;
vyska = 20; //15
vyska_textu = 2;

// kolik
prumer_dira = 3;
dira_oseknuti = 2.5;
prumer_kolik = 5;
vyska_kolik = 5;

//vyrez
vyrez_sirka = 10;
vyrez_od_podlahy = 5;

//kvůli technologii FDM zvetsime diry
tolerance = .5;

$fn= 64;

difference(){
        translate([0,0,vyska-1.5]){
            cylinder(3, r = polomer);
        }
        translate([0-polomer/2,0,vyska + .7]){
            linear_extrude(height = vyska_textu){
                text( "robodílna");    
            }
        }
            
    difference() {
        cylinder(vyska, r = polomer);
            translate([0,0,stena])
                cylinder(vyska, r = polomer-stena);
    };
};