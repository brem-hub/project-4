#ifndef PROJECT_POLAR_H
#define PROJECT_POLAR_H

#include "point.h"
#include "utils.h"
#include <math.h>

/*
 * Описание базовой структуры полярных чисел.
 */
typedef struct polar {
    double angle;
    point coords;
} polar;

int InPolar(polar* pol, FILE* input_file){
    double angle;

    int res = fscanf(input_file, "%lf", &angle);

    if (res != 1){
        printf("Could not parse polar number angle\n");
        return 1;
    }

    pol->angle = angle;

    res = InPoint(&pol->coords, input_file);

    return res;
}

void RandInPolar(polar* pol){
    pol->angle = DoubleRand(0, 10);
    pol->coords.x = Random(-100, 100);
    pol->coords.y = Random(-100, 100);
}


double CastToDoublePolar(const polar* pol){
    return sqrt(pol->coords.x * pol->coords.x + pol->coords.y * pol->coords.y);
}

void OutPolar(const polar* pol, FILE* output_file){
    fprintf(output_file, "polar: w=%lf; coords=", pol->angle);
    OutPoint(&pol->coords, output_file);
    fprintf(output_file, " ; double representation: %lf\n", CastToDoublePolar(pol));
}

#endif //PROJECT_POLAR_H
