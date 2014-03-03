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

edges_t * parse_str2edges(char **, int);
void print_edges(edges_t *);
adjMatrix_t *edges2adjMatrix(edges_t *, int);
void print_adjMatrix(adjMatrix_t *);
void solve(adjMatrix_t *);
void solveV(adjMatrix_t, vertex_t, vertex_t [], int);
vertex_t adjmLookup(adjMatrix_t *, int *, vertex_t);
void print_vResult(vertex_t, vertex_t [], int);
void print_vDupd(vertex_t *);
vertex_t * dup_vResult(vertex_t v, vertex_t [], int);

void solveZ(adjMatrix_t *, int *);
void solveZV(adjMatrix_t *, vertex_t, vertex_t [], int, int *);

void solveP(adjMatrix_t *, int *);

/* OLD STUFF ^^^ NEW STUFF vvv */

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

int solve0(matrix_t *);
void solve1(matrix_t *, int *);
void solve2(matrix_t *, int *);
void solve3(matrix_t *, int *);
void solve4(matrix_t *, int *);
void solve400(matrix_t *, int *);
void solve80(matrix_t *, int *);
void solve800(matrix_t *, int *);
void solve8000(matrix_t *, int *);
void solve9(matrix_t *, int *);
void solve90(matrix_t *, int *);
void solve900(matrix_t *, int *);
void solve9000(matrix_t *, int *);
void solve90000(matrix_t *, int *);

int solveV0(matrix_t, vertex_t, vertex_t [], int);
void solveV1(matrix_t *, vertex_t, vertex_t [], int, int *);
void solveV3(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int, int *);
void solveV400(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int, int *);
void solveV80(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int *);
void solveV8000(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int *);
void solveV9(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int, int *, int *, int [], int [], vertex_t [], vertex_t [], vertex_t [], vertex_t [], vertex_t []);
void solveV90(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int, int *, int, int [], int [], vertex_t [], vertex_t [], vertex_t [], vertex_t [], vertex_t []);
void solveV9000(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int, int *, int, int [], int [], vertex_t [], vertex_t [], vertex_t [], vertex_t [], vertex_t []);
void solveV90000(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int, int *, int, int, int, vertex_t [], vertex_t [], vertex_t [], vertex_t [], vertex_t []);
void solveV900(matrix_t *, cmatrix_t *, vertex_t, vertex_t [], int, int *, int *, int [], int [], vertex_t [], vertex_t [], vertex_t [], vertex_t [], vertex_t []);

typedef struct dmatrix {
	int len;
	int maxx;
	int maxy;
	int maxv;
	vertex_t **e;
} dmatrix_t ;

typedef struct companion_dmatrix {
	int len;
	int vlen;
	int maxx;
	vertex_t **v;
} dcmatrix_t;

typedef struct list {
	void *d;
	struct list *n;
} list_t;

list_t * list_ins(list_t *, void *);

dmatrix_t * edges2DMatrix(char **);
dcmatrix_t * create_dcompanion(dmatrix_t *);
dmatrix_t * dmatrix_dup(dmatrix_t *);
void print_dmatrix(dmatrix_t *);
void solve40(dmatrix_t *, int *);
void solveV40(dmatrix_t *, dcmatrix_t *, vertex_t, vertex_t [], int, int *);

void solve4000(dmatrix_t *, int *);
void solveV4000(dmatrix_t *, dcmatrix_t *, vertex_t, vertex_t [], int, int *);

void solve4001(dmatrix_t *, int *);
void solveV4001(dmatrix_t *, dcmatrix_t *, vertex_t, vertex_t [], int, int *, list_t **, int);


#endif
