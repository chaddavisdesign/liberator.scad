include<header.scad>

d(){
    
///Body
    u(){
        w(2.54,64){
            u(){
                r([90,0,0])
                l(7.62,35.56,-7.24,10.16,-17.78);
                q(76.61,35.56,7.62,-7.24,-17.78,2.54);
                q(84.23,35.56,22.21,-14.86,-17.78,10.16);
                i(){
                    r([90,0,0])
                    l(48.26,35.56,33.4,32.37,-17.78);
                    q(5.16,35.56,21.72,-14.9,-17.78,32.37);
                }
                h(){
                    q(48.58,35.56,21.72,-9.7,-17.78,32.37);
                    i(){
                        r([0,-90,0])
                        l(17.78,30,111.89,0,-38.89);
                        t(-9.7,-21,54.09)r([0,26.795,0])q(30,42,99);
                    }
                }
                q(30.48,35.56,.65,38.89,-17.78,32.37);
                q(30.48,10.92,55.37,38.89,-5.46,33.02);
            }
        }
        q(23.98,22.35,4.45,47.93,-11.18,88.39);
        q(6.5,35.35,14.12,41.43,-17.68,78.72);
        q(5.08,35.56,5.08,41.43,-17.78,35.56);
        m([0,1,0])r([0,90,0])
        l(3.18,23.98,-88.39,8,47.93);
        h(){
            q(22.86,9.65,7.76,41.43,-4.83,92.84);
            q(7.62,9.65,33.02,41.43,-4.83,92.84);
        }
        m([0,1,0])i(){
            q(7.62,2.54,7.62,38.89,17.78,33.02);
            r([90,0,0])scale([1,1,.446])o(5.08,16.46,46.51,40.64,-39.87);
        }
    }
//end Body
//Barrel Slot
    h(){
        o(12.57,17.91,0,0,22.73);
        l(15.24,1,0,0,17.51);
    }
    l(15.24,17.51);
    h(){
        r([0,-90,0])
            m([0,1,0])l(2.67,18,22.73,15.24,0);
        q(18,30.48,1,-18,-15.24,17.51);
    }
    q(18,30.48,17.51,-18,-15.24,0);
    d(){
        t(0,0,2.03){
            d(){
                m([0,1,0]){
                    q(17.15,7.68,13.21,0,0,-.51);
                    h(){
                        q(25.91,.1,12.19,0,-.1,0);
                        l(3.18,12.19,22.4,4.72,0);
                    }
                }
                t(0,0,6.1)m([0,0,1])t(0,0,-6.61){
                    i(){
                        o(15.24,21.84,0,0,-.51);
                        l(19.3,4);
                    }
                    d(){
                        l(20.57,1.52);
                        l(19.3,1.52);
                    }
                    d(){
                        l(19.3,2.79);
                        l(18.54,2.79);
                    }
                    o(18.03,20.57,0,0,1.52);
                }

            }
            h(){
                l(3.18,12.19,22.24,-4.72,0);
                q(6.22,5.23,12.19,14.36,-5.23,0);
            }
        }
        m([0,1,0])l(3.3,16,16.02,9.34,0);
    }
//end Barrel Slot
//Trigger Guard Cavity
    r([90,0,0])h(){
        l(10.16,16,57.94,75.06,-8);
        l(10.16,16,57.94,45.72,-8);
        l(6.5,35.56,47.93,78.72,-17.78);
        l(5.08,40.64,46.51,40.64,-20.32);
    }
    m([0,1,0])u(){
        i(){
            r([0,90,0])o(3.13,16.13,-88.39,8,47.93);
            q(6.5,9.75,9.68,41.43,8,78.72);
        }
        d(){
            q(6.5,9.68,9.68,41.43,8,78.72);
            r([0,90,0])l(9.63,11,-88.39,8,37);
        }
        l(6.5,4.45,47.93,17.68,88.39);
    }
    r([90,0,0])l(2.54,40.64,51.59,103,-20.32); 
    q(30.48,30.48,25.4,41.43,-15.24,5.08);
//end TriggerGuard Cavity
//Hammer Cavity
    q(38.96,35.56,65.73,-16.5,-17.78,41.87);
    r([90,0,0])l(25.15,15.5,9.93,50.55,-7.75);
    q(27.33,15.45,25.4,-17.4,-7.75,25.3);
    h(){
        r([90,0,0])l(12.7,29.21,22.37,57.15,-14.61);
        q(12.7,29.21,1,22.38,-14.61,102);
    }
    q(2.54,3.81,15.24,38.89,-1.91,55.63);
    q(38.89,3.81,74.94,0,-1.91,42.96);
    q(5.08,8.89,13.34,30,-4.45,103);
    r([90,0,0]){
        l(2.54,40.64,24.66,40.64,-20.32);
        l(2.54,40.64,9.42,35.56,-20.32);
        l(2.54,40.64,-10.03,35.56,-20.32);
    }
//end Hammer Cavity
}
//Hammer Cavity Walls
    m([0,1,0])i(){
        q(38.96,35.56,65.73,-16.5,-17.78,41.87);
        u(){
            h(){
                r([90,0,0])
                l(3.13,15.88,17.26,106.17,-17.78);
                q(1,15.88,5,21.46,1.91,103);
            }    
            h(){
                r([90,0,0])l(3.13,10.03,-13.39,41.87,-17.78);
                q(1,10.03,3.13,22.38,7.75,41.33);
            }
            h(){
                t(22.38,14.61,44.45)q(1,3.13,64);
                t(-11.96,17.78,55.24)r([0,26.795,0])l(3.13,59,3.13,0,0);
                i(){
                    r([90,0,0])o(44.55,50.8,33.4,32.37,-17.78);
                    q(18,21,13.37,-16.5,0,41.87);
                }
            }
        }
    }
//end Hammer Cavity Walls


        
        
