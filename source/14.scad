include<header.scad>;
d(){
    m([0,1,0]){
        r([90,0,0]){
            i(){
                q(7.53,6.73,3.18,-42.93,0,.51);
                o(3.18,9.53,-36.58,6.73,.51);
            }
            i(){
                q(2.65,1.59,3.3,-39.96,15.94,0);
                o(1.59,1.59+6.35,-38.16,15.95,.51);
            }

            e(5.33)
            d(){
                u(){
                    s(5.04,5,-3,-11);
                    s(7.62,2.28,0,-2.28);
                    s(1.83,14,-4.28,-21.48);
                    h(){
                        c(.76,-3.78,-20.89);
                        c(.76,-3.09,-20.89);
                    }
                    i(){
                        s(5,13.87,-9.28,-21.48);
                        c(11.81,3.48,-12.57);
                    }
                    i(){
                        u(){
                            s(7.45,5,0,-5);
                            c(7.71,0,-10.25);
                            c(.76,6.89,-2.28);
                        }
                        u(){
                            c(13.24,-2.9,5.5);
                            s(3,1,-7.25,-7.62);
                        }
                    }
                    h(){
                        c(3.18,-42.29,20.07);
                        c(3.18,-35.31,20.07);
                    }
                    s(4,4,-36.13,16.07);
                    c(1.59,-43.88,1.59);
                    s(2.54,6.8,-45.47,1.59);
                    s(54.44,3.56,-35.4,0);
                    s(5.5,4.13,-45.47,15.94);
                    s(1,1,-43.88,0);
                    
                    
                }
                s(7.84,1.59,-39.94,15.94);
                c(9.17,5.19,-15.41);   
            }
        }
        l(3.18,9.21,-42.93,-.51,6.73);
        h(){
            l(1.65,8.13,-22.6,0,0);
            l(1.65,8.13,-20.57,0,0);
        }
        q(2,4,1,-36.58,-2,3.56);
        q(8.49,.51,6.73,-43.9,0,0);
    }
    m([0,1,0])d(){
        q(67,9,46,-46,-9-1.65,-22);
        q(7.17,2.03,4.57,-45.47,-2.03-1.65,3.81);
    }
    q(2,4,21,-47.47,-2,0);
    q(2,4,1,-36.58,-2,3.56);
    q(2,4,1,-38.16,-2,16.53);
    r([90,0,0])l(3.18,4,-36.58,6.73,-2);
}


