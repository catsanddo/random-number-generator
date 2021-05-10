# Psuedo-Random Number Generator
## A very bare-bones implementation of C's RNG functions
This library is very basic and was not extensively tested.
It should probably not be used over the functions in `stdlib.h`.
### Usage
#### `unsigned int my_rand()`
Returns a number within `0` and `MY_RAND_MAX`
#### `void my_srand(unsigned int seed)`
Sets the current seed used in `my_rand()` to `seed`
#### `MY_RAND_MAX`
The maximum number returned by `my_rand()`. It is `32767` by default.
