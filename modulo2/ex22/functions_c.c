extern int i,j;
int h = 0, g = 0, r = 0;

int f(){
    if (i == j)
        h = i - j + 1;
    else
        h = i + j -1;
    return h;
}


//-------------------

int f2(){
    if (i > j)
        i = i - 1;
    else
        j = j + 1;
    h = j * i;
    return h;
}



//-------------------

int f3(){
    if (i >= j) {
        h = i * j;
        g = i + 1;
    }
    else {
        h = i + j;
        g = i + j + 2;
    }
        r = g / h;
    return r;
}



//-------------------

int f4(){
    if (i + j < 10)
        h = 4 * i * i;
    else
        h = j * j / 3;
    return h;
}
