#include <stdio.h>
#include <stdlib.h>

int main() {
    int *vetor;
    int tamanho;

    scanf("%d", &tamanho);

    vetor = malloc(tamanho * sizeof(int));
    if (vetor == NULL) {
        printf("vazio");
        return 1;
    }

    for (int i = 0; i < tamanho; i++) {
        scanf("%d", &vetor[i]);
    }

    printf("[");
    printf("%d", vetor[0]);
    for (int i = 1; i < tamanho; i++) {
        printf(", %d", vetor[i]);
    }
    printf("]");

    free(vetor);
    return 0;
}

