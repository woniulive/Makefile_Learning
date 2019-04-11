#include "defs.h"
#include "show.h"

void main_print(void)
{
    printf("this is main.c\n");
}

int main(void)
{
    printf("this is main entry\n");
    show_print();
    return 0;
}
