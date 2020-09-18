////These are used to shorten the names of the constantly called primative actions, since most primitives are translated, they combine the translate action in one declaration.

////INTERSECTION MODULE////
//http://forum.openscad.org/intersection-children-0-children-1-does-a-union-instead-of-an-intersection-td8998.html
module i(){
    intersection_for(i=[0:$children-1]){
        children(i);
    }
}

////UNION MODULE////
module u(){
    union(){
        children([0:$children-1]);
    }
}
///DIFFERENCE MODULE////
module d(){
    difference(){
        children(0);
        children([1:$children-1]);
    }
}
////HULL MODULE////
module h(){
    hull(){
        children([0:$children-1]);
    }
}
////LINEAR_EXRTRUDE MODULE////
module e(z){
    linear_extrude(z)children();
}
////TRANSLATE MODULE////
module t(x,y,z){
//many of the primatives are not translated these operations allow leaving off the x,y,z in the cube, cylinder, square, circle, and torus modules below  
    if(x==undef){children();}
    else{
        //if x is defined (we assume y is too) but not z we translate in 2D
        if(z==undef)translate([x,y])children();
        //If z is defined we translate in 3D
        else translate([x,y,z])children();
        }
}

////CIRCLE MODULE////
module c(r,x,y){
    t(x,y)circle(r=r,$fn=64);
}

////SQUARE MODULE////
module s(h,w,x,y){
    t(x,y)square([h,w]);
}

////ROTATE MODULE////
module r(x){
    rotate(x)children();
}

////TORRUS MODULE////
module o(i,o,x,y,z){
    t(x,y,z) rotate_extrude($fn=64)
    t(i+(o-i)/2,0,0)c((o-i)/2);
    //t(i+(o-i)/2,0,0)c((o-i+.001)/2);
    //"+.001" in the line fixes "Object may not be a valid 2-manifold and may need repair!" error in Frame, but the STL seems fine according to Meshlab and Cura and 5 characters is 5 characters.
}

////COPY-MIRROR MODULE////
module m(v){
    children();
    mirror(v)children();
}
////CUBE MODULE////
module q(h,w,l,x,y,z){
    t(x,y,z)cube([h,w,l]);
}

////CYLINDER MODULE////
module l(r,h,x,y,z){
    t(x,y,z)cylinder(r=r,h=h,$fn=64);
}

////MINKOWSKI MODULE////
module w(r,f){
    minkowski(){
        children();
        sphere(r=r,$fn=f);
    }
}


