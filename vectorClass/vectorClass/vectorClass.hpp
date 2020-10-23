//
//  vectorClass.hpp
//  vectorClass
//
//  Created by Fedor on 23/10/2020.
//

#ifndef vectorClass_hpp
#define vectorClass_hpp

#include <stdio.h>
#include <math.h>

class Vector {
private:
    double x, y, z;
public:
    Vector(double x = 0.0, double y = 0.0, double z = 0.0);
    
    double vectorLength();
    
    double get_x();
    double get_y();
    double get_z();
    
    double operator^(Vector a);
    Vector operator+ (Vector a);
    Vector operator- (Vector a);
    Vector operator* (Vector a);
    Vector operator* (double a);
    Vector operator/ (Vector a);
    
    void operator=(Vector a);
    void operator+=(Vector a);
    void operator-=(Vector a);
    void operator*=(Vector a);
    void operator*= (double a);
    void operator/=(Vector a);
    
    bool operator>(Vector a);
    bool operator<(Vector a);
    bool operator<=(Vector a);
    bool operator>=(Vector a);
    bool operator==(Vector a);
    bool operator!=(Vector a);
};

#endif /* vectorClass_hpp */
