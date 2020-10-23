//
//  vectorClass.cpp
//  vectorClass
//
//  Created by Fedor on 23/10/2020.
//

#include "vectorClass.hpp"

Vector::Vector(double x, double y, double z){
    this->x = x;
    this->y = y;
    this->z = z;
}

double Vector::vectorLength(){
    return pow((pow(this->x, 2) + pow(this->y, 2) + pow(this->z, 2)), 0.5);
}

double Vector::get_x(){
    return this->x;
}

double Vector::get_y(){
    return this->y;
}

double Vector::get_z(){
    return this->z;
}

double Vector::operator^(Vector a){
    double result_cos;
    result_cos = (this->x * a.x + this->y * a.y + this->z * a.z)/(this->vectorLength() * a.vectorLength());
    return result_cos;
}

Vector Vector::operator+(Vector a){
    Vector rezult_vector;
    rezult_vector.x = a.x + this->x;
    rezult_vector.y = a.y + this->y;
    rezult_vector.z = a.z + this->z;
    return rezult_vector;
}

Vector Vector::operator-(Vector a){
    Vector rezult_vector;
    rezult_vector.x = this->x - a.x;
    rezult_vector.y = this->y - a.y;
    rezult_vector.z = this->z - a.z;
    return rezult_vector;
}

Vector Vector::operator*(Vector a){
    Vector rezult_vector;
    rezult_vector.x = this->y * a.z - this->z * a.y;
    rezult_vector.y = this->z * a.x - this->x * a.z;
    rezult_vector.z = this->x * a.y - this->y * a.x;
    return rezult_vector;
}

Vector Vector::operator*(double a){
    Vector rezult_vector;
    rezult_vector.x = this->x * a;
    rezult_vector.y = this->y * a;
    rezult_vector.z = this->z * a;
    return rezult_vector;
}

Vector Vector::operator/(Vector a){
    Vector rezult_vector;
    rezult_vector.x = this->y / a.z - this->z / a.y;
    rezult_vector.y = this->z / a.x - this->x / a.z;
    rezult_vector.z = this->x / a.y - this->y / a.x;
    return rezult_vector;
}

void Vector::operator=(Vector a){
    this->x = a.x;
    this->y = a.y;
    this->z = a.z;
}

void Vector::operator+=(Vector a){
    this->x = this->x + a.x;
    this->y = this->y + a.y;
    this->z = this->z + a.z;
}

void Vector::operator-=(Vector a){
    this->x = this->x - a.x;
    this->y = this->y - a.y;
    this->z = this->z - a.z;
}

void Vector::operator*=(Vector a){
    this->x = this->y * a.z - this->z * a.y;
    this->y = this->z * a.x - this->x * a.z;
    this->z = this->x * a.y - this->y * a.x;
}

void Vector::operator*=(double a){
    Vector rezult_vector;
    this->x = this->x * a;
    this->y = this->y * a;
    this->z = this->z * a;
}

void Vector::operator/=(Vector a){
    this->x = this->y / a.z - this->z / a.y;
    this->y = this->z / a.x - this->x / a.z;
    this->z = this->x / a.y - this->y / a.x;
}

bool Vector::operator>(Vector a){
    bool bigger;
    (this->vectorLength() > a.vectorLength()) ? bigger = 1 : bigger = 0;
    return bigger;
}

bool Vector::operator<(Vector a){
    bool smaller;
    (this->vectorLength() < a.vectorLength()) ? smaller = 1 : smaller = 0;
    return smaller;
}

bool Vector::operator>=(Vector a){
    bool bigger_equal;
    (this->vectorLength() >= a.vectorLength()) ? bigger_equal = 1 : bigger_equal = 0;
    return bigger_equal;
}

bool Vector::operator<=(Vector a){
    bool smaller_equal;
    (this->vectorLength() <= a.vectorLength()) ? smaller_equal = 1 : smaller_equal = 0;
    return smaller_equal;
}

bool Vector::operator==(Vector a){
    bool equal;
    (this->vectorLength() == a.vectorLength()) ? equal = 1 : equal = 0;
    return equal;
}

bool Vector::operator!=(Vector a){
    bool not_equal;
    (this->vectorLength() != a.vectorLength()) ? not_equal = 1 : not_equal = 0;
    return not_equal;
}
