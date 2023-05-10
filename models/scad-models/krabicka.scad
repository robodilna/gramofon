
vyska_podlahy = 2;
vyska = 30 + vyska_podlahy;
stena = 2;

oval_x = 20;
oval_y = 10;

useknuti = 21.5;
$fn = 100   ;

// drzak baterky
delka = 57;
sirka = 32;
vystupek = 8;

difference(){
    difference(){
        difference(){

            linear_extrude(vyska) {
                scale([oval_x,oval_y])circle(d=10);
            }



            translate([0,0,vyska_podlahy]) {
                linear_extrude(vyska) {
                    scale([oval_x+stena/5,oval_y])circle(d=10-stena/5);
                }
            }

        }
    
        translate([oval_x*5 - useknuti,-oval_y*5,0]){
            cube([oval_y*10,oval_y*10,vyska]);
        }

        
        translate([-50,-14/2,35/2]){
            rotate(a=[270,0,0]) {
                include <uchyt-motoru.scad>;
            }
        }
//    translate([-45,0,0]){
//        cube([4,14,30],center=true);
//    }
//   translate([-33,0,0]){
//        cube([4,14,30],center=true);
        
    } 
    
    
    
}    

translate([oval_x*5 - useknuti-2,-oval_y*5+20,0]){
    cube([stena,oval_y*10-oval_x-20,vyska]);
}

translate([-20,-sirka/2,0]){
    difference() {
        cube([delka,sirka,vystupek]);
        translate([stena,stena,0])
        cube([delka-stena*2,sirka-stena*2,vystupek]);
    }
}

translate([oval_x*3,10,vyska/2])
        rotate([0,90,0])
        cylinder(oval_x, d=4); 

