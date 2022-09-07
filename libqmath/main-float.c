#include <stdio.h>

int main()
{   
    float float1 = 5.33;
    float float2 = 6.33;
    float res = float1;
    for( int i = 0; i < 100; i++)
    {
        res = res + float2;
        res = res - float2;
    }
    for( int i = 0; i < 100; i++)
    {
        res = res * float2;
        res = res / float2;
    }
}
