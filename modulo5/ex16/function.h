#ifndef FUNCTION_H
#define FUNCTION_H
  typedef struct{
    short n_students;
    unsigned short *individual_grades;
  }group;
  int approved_semester(group *g);
#endif