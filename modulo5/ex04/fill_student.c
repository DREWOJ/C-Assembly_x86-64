#include "function.h"

void fill_student(Student *s, char age, short number, char *name, char* address) {

  s->age = age;
  s->number = number;

  int i = 0;
  for (i = 0; name[i] != '\0'; i++) {
    
    s->name[i] = name[i];
  }

  s->name[i] = 0;

  for (i = 0; address[i] != '\0'; i++) {
    s->address[i] = address[i];
  }

  s->address[i] = 0;

}
