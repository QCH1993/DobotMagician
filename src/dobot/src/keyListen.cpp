#include<stdio.h>
#include<unistd.h>
#include<stdlib.h>
#include<sys/ioctl.h>
#include <iostream>
#include <cstdlib>
int kbhit();
int main(int argc, char *argv[])
{
  int i=0;
  int c=' ';
  system("stty raw -echo");
//  printf("enter q to quit\n");
  for (;  c!='q';i++)
  {

    //printf("=%f\n",a);
    std::cout<<"==";
    if (kbhit())
    {
      c=getchar();
//      printf("\n got %c, on iteration %d",c,i);
    }
  }

  system("stty cooked echo");
  return 0;
}
int kbhit()
{
  int i;
  ioctl(0,FIONREAD,&i);
  return i;
}
