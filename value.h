#ifndef clox_value_h
#define clox_value_h

#include "common.h"

// this way we can change the internal representation of Value without having to change existing code
typedef double Value;

typedef struct {
    int capacity;
    int count;
    Value* values;
} ValueArrray;

void initValueArray(ValueArrray* array);
void writeValueArray(ValueArrray* array, Value value);
void freeValueArray(ValueArrray* array);

void printValue(Value value);

#endif
