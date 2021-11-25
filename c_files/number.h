#ifndef PROJECT_NUMBER_H
#define PROJECT_NUMBER_H

#include <stdio.h>
#include "fraction.h"
#include "complex.h"
#include "polar.h"

#define COMPLEX 0
#define FRACTION 1
#define POLAR 2

/*
 * Структура, обобщающая комплексные, дробные и полярные числа.
 */
typedef struct number {
    int number_type;
    union {
        complex com;
        fraction frac;
        polar pol;
    };
} number;

int InNumber(number* num, FILE* input_file){
    int type = -1;
    fscanf(input_file, "%d\n", &type);

    switch (type) {
        case COMPLEX:
            num->number_type = COMPLEX;
            return InComplex(&num->com, input_file);
        case FRACTION:
            num->number_type = FRACTION;
            return InFraction(&num->frac, input_file);
        case POLAR:
            num->number_type = POLAR;
            return InPolar(&num->pol, input_file);
        default:
            printf("Could not parse number type\n");
            return 1;
    }
}

void OutNumber(const number* num, FILE* output_file){
    switch (num->number_type) {
        case FRACTION:
            OutFraction(&num->frac, output_file);
            return;
        case COMPLEX:
            OutComplex(&num->com, output_file);
            return;
        case POLAR:
            OutPolar(&num->pol, output_file);
            return;
    }
}

double CastNumberToDouble(const number* num){
    switch (num->number_type) {
        case COMPLEX:
            return CastToDoubleComplex(&num->com);
        case FRACTION:
            return CastToDoubleFraction(&num->frac);
        default:
            return CastToDoublePolar(&num->pol);
    }
}

#endif //PROJECT_NUMBER_H
