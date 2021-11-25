#ifndef PROJECT_FRACTION_H
#define PROJECT_FRACTION_H

#include <stdio.h>
#include "utils.h"

/*
 * Описание базовой структуры дробных чисел.
 */
typedef struct fraction {
    int numerator;
    int denominator;
} fraction;

int InFraction(fraction *frac, FILE* input_file){
    int numerator, denominator;

    int res = fscanf(input_file, "%d %d", &numerator, &denominator);

    if (res != 2){
        printf("Could not parse fraction\n");
        return 1;
    }

    if (denominator == 0){
        printf("Denominator cannot be 0\n");
        return 1;
    }

    frac->numerator = numerator;
    frac->denominator = denominator;

    return 0;
}

void RandInFraction(fraction* frac){
    frac->numerator = Random(-100, 100);
    do{
        frac->denominator = Random(-100, 100);
    } while (frac->denominator == 0);
}

double CastToDoubleFraction(const fraction* frac){
    return (frac->numerator + 0.0) / frac->denominator;
}

void OutFraction(const fraction* frac, FILE* output_file){
    fprintf(output_file, "fraction: %d/%d; double representation: %lf\n", frac->numerator, frac->denominator,
            CastToDoubleFraction(frac));
}

#endif //PROJECT_FRACTION_H
