#include <stdio.h>
#include <time.h>

long factorialForLoop(int number) {
    long fact = 1;
    for (int i = 1; i <= number; i++) {
        fact *= i;
    }
    return fact;
}

long factorialRecursion(int number) {
    if (number == 0) {
        return 1;
    } else {
        return (number * factorialRecursion(number - 1));
    }
}

long factorialDoWhile(int number) {
    int i = 1;
    long fact = 1;
    do {
        fact *= i;
        i++;
    } while (i <= number);
    return fact;
}

int main() {
    int number;
    printf("Enter a number: ");
    scanf("%d", &number);

    clock_t start_time, end_time;
    double execution_time;

    // Using for loop
    start_time = clock();
    long factForLoop = factorialForLoop(number);
    end_time = clock();
    execution_time = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("\nProcess Returned: 0x0, Execution time for for loop: %.6f s\n", execution_time);
    printf("Factorial using for loop: %ld\n", factForLoop);

    // Using recursion
    start_time = clock();
    long factRecursion = factorialRecursion(number);
    end_time = clock();
    execution_time = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("\nProcess Returned: 0x0, Execution time for recursion: %.6f s\n", execution_time);
    printf("Factorial using recursion: %ld\n", factRecursion);

    // Using do-while loop
    start_time = clock();
    long factDoWhile = factorialDoWhile(number);
    end_time = clock();
    execution_time = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("\nProcess Returned: 0x0, Execution time for do-while loop: %.6f s\n", execution_time);
    printf("Factorial using do-while loop: %ld\n", factDoWhile);

    return 0;
}

