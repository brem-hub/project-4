#ifndef PROJECT_POINT_H
#define PROJECT_POINT_H

#include <stdio.h>

/*
 * Описание базовой структуры точки.
 */
typedef struct point{
    int x;
    int y;
} point;

int InPoint(point* pt, FILE* input_file){
    int x, y;

    int res = fscanf(input_file, "%d %d\n", &x, &y);

    if (res != 2){
        printf("Could not parse point coordinates\n");
        return 1;
    }

    pt->x = x;
    pt->y = y;

    return 0;
}

void OutPoint(const point* pt, FILE* output_file){
    fprintf(output_file, "(%d, %d)", pt->x, pt->y);
}

#endif //PROJECT_POINT_H
