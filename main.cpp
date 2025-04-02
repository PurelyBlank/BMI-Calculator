#include "bmi.h"
#include "io.h"
#include <iostream>

int main() {
    std::cout << "Please type in your weight (kg): ";
    double weight_kg = read_double();
    
    std::cout << "Please type in your height (meters): ";
    double height_m = read_double();

    double bmi = calculate_bmi(weight_kg, height_m);
    std::cout << "Your BMI is: " << bmi << '\n';
    return 0;
}
