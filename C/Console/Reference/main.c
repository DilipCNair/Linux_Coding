#include <stdio.h>
#include <stdlib.h>

int Add (int,int);
int Subtract (int,int);
float Multiply (float*, float*);
float Divide (float*, float*);


void main()
{
    int a, b, sum, difference;
    float c, d, product, quotient;
    int choice;

    do{
        printf("\nWhat you want to do please select from the below menu"
               " :-\n1.Addition\n2.Subtract\n3.Multiply\n4.Divide\n5.Exit"
               "\nEnter your Choice : ");
        scanf("%d",&choice);
        switch(choice)
        {
            case 1 :
                printf("Enter two number to find the sum : ");
                scanf("%d%d", &a, &b);
                sum = Add(a, b);
                printf("The sum is %d", sum);
                break;
            case 2:
                printf("Enter two number to find the difference : ");
                scanf("%i%i", &a, &b);
                difference = Subtract(a, b);
                printf("The difference is %d", difference);
                break;
            case 3:
                printf("Enter two numbers to multiply : ");
                scanf("%e%e", &c, &d);
                product = Multiply(&c,&d);
                printf("The Product is %f", product);
                break;
            case 4:printf("Enter two numbers to Divide : ");
                scanf("%f%f", &c, &d);
                quotient = Divide(&c,&d);
                printf("The Quotient is %f", quotient);
                break;
            case 5:exit(0);
            default:printf("Wrong option");
                    break;
        }

    }while(choice!=5);
}


int Add(int a, int b)
{
    int sum;
    sum = a+b;
    return sum;
}

int Subtract(int a, int b)
{
    int difference;
    difference = a - b;
    return difference;

}

float Multiply(float *a, float *b)
{
    float product;
    product = *a * *b;
    return product;
}

float Divide(float *a, float *b)
{
    float quotient;
    quotient = *a / *b;
    return quotient;
}