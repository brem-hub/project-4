#ifndef PROJECT_COMPLEX_H
#define PROJECT_COMPLEX_H

#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include "utils.h"

/*
 * Описание базовой структуры комплексных чисел.
 */
typedef struct complex {
    double real;
    double imaginary;
} complex;


int InComplex(complex* c_n, FILE* input_file){
    double in_real, in_imaginary;

    int res = fscanf(input_file, "%lf %lf", &in_real, &in_imaginary);
    if (res != 2){
        printf("Could not parse complex number\n");
        return 1;
    }

    c_n->real = in_real;
    c_n->imaginary = in_imaginary;
    return 0;
}

void RandInComplex(complex* c_n){
    c_n->real = DoubleRand(-100, 100);
    c_n->imaginary = DoubleRand(-100, 100);
}

double CastToDoubleComplex(const complex* c_n){
    return sqrt(c_n->real * c_n->real + c_n->imaginary * c_n->imaginary);
}

void OutComplex(const complex* c_n, FILE* output_file){
    fprintf(output_file, "complex number: (%lf, %lf)l; double representation: %lf\n", c_n->real, c_n->imaginary,
            CastToDoubleComplex(c_n));
}

#endif //PROJECT_COMPLEX_H
