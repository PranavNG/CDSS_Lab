#include<stdio.h> //using for loop
int main()
{
int fact=1,number;
printf("Enter a number: ");
scanf("%d",&number);
for(int i=1;i<=number;i++)
{
fact=fact*i;
}
printf("Factorial of %d is: %d\n",number,fact);
return 0;
}
