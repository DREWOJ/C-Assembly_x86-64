#ifndef FUNCTION_H
#define FUNCTION_H
  
  typedef struct {
  short number;
  char age;
  int grades[5];
  char name[60];
  char address[100];
  } Student;
  
  void update_grades(Student *s,  int *new_grades);
  int locate_greater(Student *s, int minimum, int *greater_grades);
#endif
