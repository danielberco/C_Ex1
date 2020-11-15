
#define  EXP 2.71828182

double Exponent (int x) {

    double num=0;


    if (x<0) {
        x*=(-1);
        for (int i=0; i<x;i++) {
            num=EXP*num;
        }
        num = 1.0/num;
    }
    else {
        for (int j=0;j<x;j++)
            num=EXP*num;
    }
    return num;
}

double Power (double x,int y) {
    double num=1;

    if (y<0) {
        for (int i=0;i<0;i++) {
            num=x*num;
        }
        num=1.0/num;
    }
    else {
        for (int j=0; j<y;j++)
            num=x*num;
    }
    return num;
}
