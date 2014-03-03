#ifndef PUZZLER_H
#define PUZZLER_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <err.h>

#define SAFE_DEC (z) (0)
#define MAX_X 20
#define MAX_Y 20
#define MAX_V 50

typedef unsigned char vertex_t;

typedef struct edge {
	vertex_t x;
	vertex_t y;
} edge_t;

typedef struct edges {
	int len;
	edge_t *e;
} edges_t;

typedef struct adjMatrix {
	int len;
	vertex_t e[MAX_X][MAX_Y];
} adjMatrix_t;

typedef struct matrix {
	int len;
	vertex_t e[MAX_X+1][MAX_Y+1];
} matrix_t ;

typedef struct companion_matrix {
	int len;
	int vlen;
	vertex_t *v[MAX_X+1];
} cmatrix_t;

matrix_t * edges2Matrix(char **);
cmatrix_t * create_companion(matrix_t *);

void solve3(matrix_t *, int *);
void solve4(matrix_t *, int *);

void solveV3(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int, int *);

#endif
