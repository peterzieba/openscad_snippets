//Very simple way of making a rounded square without invoking minkowski
//Unlike other methods, x and y square dimensions will stay the same regardless of the corner radius value
//(unless the radius value exceed either x or y, which is probably not what you want)
module rounded_square(x,y,r,center=false) {
    translate( center ? [-x/2,-y/2,0]:[0,0,0] ) {
        translate([r,r,0])
            circle(r);
        translate([x-r,r,0])
            circle(r);
        translate([r,y-r,0])
            circle(r);      
        translate([x-r,y-r,0])
            circle(r);

        translate([0,r,0])
            square([x,y-r*2]);
        translate([r,0,0])
            square([x-r*2,y]);
    }
}
