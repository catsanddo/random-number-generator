#include "random.h"

#define CONSTANT1 263
#define CONSTANT2 71

unsigned int current_seed = 627183;

void srand(unsigned int seed)
{
    current_seed = seed;
}

unsigned int rand(void)
{
    current_seed = (unsigned int) (current_seed * CONSTANT1 + CONSTANT2) % MY_RAND_MAX;
    return current_seed;
}
