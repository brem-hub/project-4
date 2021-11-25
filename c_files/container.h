#ifndef PROJECT_CONTAINER_H
#define PROJECT_CONTAINER_H

#include "number.h"

#define MAX_CONTAINER_SIZE 10000

/*
 * Контейнер, хранящий разные виды чисел: комплексные, дроби и радиальные.
 */
typedef struct container {
    int length;
    number* numbers[MAX_CONTAINER_SIZE+1];
} container;

container* Ctor(){
    container* ct = (container*) malloc(sizeof(container));
    ct->length = 0;
    for(int i =0; i < MAX_CONTAINER_SIZE; ++i){
        ct->numbers[i] = NULL;
    }
    return ct;
}

void Dtor(container* ct){
    for (int i = 0; i < ct->length; ++i) {
        free(ct->numbers[i]);
    }
    ct->length = 0;
    free(ct);
}

int Add(container* ct, const number* num){
    if (ct->length < MAX_CONTAINER_SIZE){
        if (ct->numbers[ct->length] == NULL)
            ct->numbers[ct->length] = (number*) malloc(sizeof(number));

        ct->numbers[ct->length]->number_type = num->number_type;

        ct->numbers[ct->length]->com = num->com;
        ct->numbers[ct->length]->frac = num->frac;
        ct->numbers[ct->length]->pol = num->pol;

        ct->length++;
        return 0;
    }else{
        printf("Could not add to container\n");
        return 1;
    }
}

int Fill(container* ct, FILE* input_file){
    int number_of_elements;
    int res = fscanf(input_file, "%d\n", &number_of_elements);
    if (res != 1){
        printf("Could not parse number of elements\n");
        return 1;
    }

    if (number_of_elements > MAX_CONTAINER_SIZE){
        printf("Number of elements > max_container_size: %d\n", MAX_CONTAINER_SIZE);
        return 1;
    }

    if (number_of_elements <= 0){
        printf("Number of elements cannot be <= 0\n");
        return 1;
    }

    for(int i = 0; i < number_of_elements; ++i){
        number num;
        res = InNumber(&num, input_file);
        if (res){
            printf("Could not parse %d number\n", i + 1);
            return res;
        }
        Add(ct, &num);
    }
    return 0;
}

int RandomFill(container* ct, int size, FILE* generator_output_file){

    if (size > MAX_CONTAINER_SIZE){
        printf("Number of elements > max_container_size: %d\n", MAX_CONTAINER_SIZE);
        return 1;
    }

    if (generator_output_file){
        fprintf(generator_output_file, "%d\n", size);
    }

    for(int i = 0; i < size; ++i){
        number num;

        // generate type
        int type = Random(0, 3);

        if (generator_output_file) {
            fprintf(generator_output_file, "%d\n", type);
        }

        switch (type) {
            case COMPLEX:
                num.number_type = COMPLEX;
                RandInComplex(&num.com);
                if (generator_output_file)
                    fprintf(generator_output_file, "%lf %lf\n", num.com.real, num.com.imaginary);
                break;
            case FRACTION:
                num.number_type = FRACTION;
                RandInFraction(&num.frac);
                if (generator_output_file)
                    fprintf(generator_output_file, "%d %d\n", num.frac.numerator, num.frac.denominator);
                break;
            case POLAR:
                num.number_type = POLAR;
                RandInPolar(&num.pol);
                if (generator_output_file)
                    fprintf(generator_output_file, "%lf %d %d\n", num.pol.angle, num.pol.coords.x, num.pol.coords.y);
                break;
        }
        Add(ct, &num);
    }
    return 0;
}

void Out(const container* ct, FILE* output_file){
    for(int i = 0; i < ct->length; ++i){
        fprintf(output_file, "%d: ", i);
        OutNumber(ct->numbers[i], output_file);
    }
}

void StraightSort(container* ct){
    for(int i = 0; i < ct->length; ++i){
        number* temp = ct->numbers[i];
        int j = i;
        while(j > 0 && CastNumberToDouble(ct->numbers[j - 1]) > CastNumberToDouble(temp)){
            ct->numbers[j] = ct->numbers[j-1];
            j--;
        }
        ct->numbers[j] = temp;
    }
}

#endif //PROJECT_CONTAINER_H
