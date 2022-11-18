int distance(char* a, char *b) {
  int i = 0;
  int differences = 0;

  while(*(a+i) != 0 && *(b+i) != 0)
  {
    if(*(a+i) != *(b+i)) 
      differences++;
    
    i++;
  }

  if(*(a+i) == 0 && *(b+i) == 0) 
    return differences;
  

  return -1;
}
