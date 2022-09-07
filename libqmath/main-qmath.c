#include "qmath.h"
#include <stdio.h>

int main()
{   
    fixedp fix1 = float2q(5.33);
    fixedp fix2 = float2q(6.33);
    fixedp res = fix1;
    for( int i = 0; i < 100; i++)
    {
        res = qadd(res,fix2);
        res = qsub(res,fix2);
    }
    for( int i = 0; i < 100; i++)
    {
        res = qmul(res,fix2);
        res = qdiv(res,fix2);
    }
}
