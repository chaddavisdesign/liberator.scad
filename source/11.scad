include<header.scad>

//This script for an archimedean spiral has variables for the values measurable on the STEP model(rotaions, radius_max, thickness) and experiment with the unkowns until everthing lined up with the other placed elements. Then it was simplified below.
//
//module archimedean_spiral(){
//    rotations = 3;
//    start_angle = 415;
//    finish_angle = rotations*360+(start_angle-360);
//    thickness = 2.54;
//    radius_max = 17.526;
//    a = sqrt(pow(radius_max,2)/(pow(finish_angle,2)*(pow(cos(finish_angle),2) + pow(sin(finish_angle),2))));
//    points=[
//        for(x = [start_angle:2:finish_angle]) [
//            (x*a)*cos(x),
//            (x*a)*sin(x)
//        ]
//    ];
//    points_inner=[
//        for(x = [finish_angle:-2:start_angle]) [
//            (((x*a)+thickness)*cos(x)),
//            (((x*a)+thickness)*sin(x))
//        ]
//    ];
//    rotate([0,0,360-start_angle])polygon(concat(points,points_inner));
//}

e(5.08){
    d(){
        u(){
            //sprial
            r([0,0,305]){polygon(concat([for(x = [415:2:1135])[
                        (x*.01544)*cos(x),
                        (x*.01544)*sin(x)
                    ]
                ],[
                    for(x = [1135:-2:415]) [
                        (((x*.01544)+2.54)*cos(x)),
                        (((x*.01544)+2.54)*sin(x))
                    ]
                ]));
                }
            //
            c(3.56,21.08,0);
            c(3.81+2.54);
            i(){
                c(7.6,1.3,0);
                s(16,8,-6.5,-8);             
            }
            s(2.9,3.4,18.8,-5.5);
        }
        c(1.65,21.08,0);
        c(3.81);
        c(3.18,22,-6.67);//21.99
    }
    s(2,8,2.45,-4); 
}
    

