#include <stdlib.h>

char *new_str(char str[80]) {


  int cont = 0;
  while(str[cont] != '\0'){
    cont++;
  }

  char* ptr =( char *) calloc (cont + 1 , sizeof (char ));
  
  for(int i = 0; i<cont; i++){
    ptr[i] = str[i];
  }

  return ptr;

}
