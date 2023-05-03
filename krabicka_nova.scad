
vyska_podlahy = 2;
vyska = 30 + vyska_podlahy;
stena = 2;

oval_x = 20;
oval_y = 10;

useknuti = 20;
$fn = 500;

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

    
}

translate([oval_x*5 - useknuti,-oval_y*5,0]){
        cube([stena,oval_y*10,vyska]);
    }



cube([4,14,50],center=true);