#include "myMath.h"

#include <stdio.h>

int main () {
    double num;

    printf("Enter a number :");
    if (scanf("%lf",&num)!=1) {
        printf("Wrong Input");
    }

    double f1= sub(add(Exponent(num),Power(num,3)),2);
    double f2 = add(mul(num,3),mul(Power(num,2),2));
    double f3 = sub(div(mul(Power(num,3),4),5),mul(num,2));

    printf("The value of f(x)=e^x+x^3-2   , for x = %.4lf is:%.4lf\n",num,f1);
    printf("The value of f(x)=3x+2x^2     , for x = %.4lf is:%.4lf\n",num,f2);
    printf("The value of f(x)=(4x^3)/5-2x , for x = %.4lf is:%.4lf\n",num,f3);


    return 0;

}