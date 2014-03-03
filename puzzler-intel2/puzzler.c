#include "puzzler.h"

matrix_t * edges2Matrix(char **argv) {
	matrix_t * m;
	int i, l, r;
	char *ptr_l, *ptr_r, *arg;

	m = (matrix_t *) calloc(1,sizeof(matrix_t));
	/*
	if(!m) {
		return NULL;
	}
	*/

	for(i=2;argv[i]!=NULL;i++) {
		arg = argv[i];
		ptr_l = strtok(arg, " ");
		if(!ptr_l) { err(1, "parse error"); }
		ptr_r = strtok(NULL, "");
		if(!ptr_r) { err(1, "parse_error"); }
		l = atoi(ptr_l);
		r = atoi(ptr_r);
		if(l > MAX_X || r > MAX_Y) { err(1, "too big"); }
		m->e[l][r] += 1;
		m->len += 1;
	}
	
	return m;
}


cmatrix_t * create_companion(matrix_t *m) {
	cmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (cmatrix_t *) calloc(1,sizeof(cmatrix_t));
	/*
	if(!cm) {
		return NULL;
	}
	*/

	for(i = 0; i < MAX_X; i++) {
		cnt = 0;
		for(j = 0; j < MAX_Y; j++) {
			if(m->e[i][j] > 0) {
				cnt++;
			}
		}
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < MAX_Y; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
					k++;
				}
			}
		}
	}

	return cm;
}


void solve3(matrix_t *m, int *succ) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV3(m, cm, i, vs, 0, succ);
		}
	}
}


void solveV3(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
		return;
	}

	for(i = v, j = 0; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
		k = cm->v[i][j];
		a = m->e[i][k];
		if(a > 0) {

			m->e[i][k] = a - 1;
			b = m->e[k][i];

			c = (b > 0 ? b - 1 : 0);

			if(c >= 0) {
				d = m->len;
				m->e[k][i] = c;
				if(b > 0) m->len -= 2;
				else m->len -= 1;

				solveV3(m, cm, k, vs, l+1, suc);
				m->e[k][i] = b;
				m->len = d;
			}
			m->e[i][k] = a;
		}
	}

	return;
}




void solve4(matrix_t *m, int *suc) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
//#pragma omp parallel for private(i) schedule(static,1)
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
			memcpy(&mp,m,sizeof(matrix_t));
			memcpy(&vsp,vs,sizeof(vs));
			solveV3(&mp, cm, i, vsp, 0, &results[i]);
		}
	}

	for(i = 0; i < MAX_X; i++) {
		*(suc)+=results[i];
	}

	return;
}
