#include "puzzler.h"

edges_t * parse_str2edges(char *argv[], int argc) {
	edges_t * es = NULL;
	int i;

	es = (edges_t *) calloc(1,sizeof(edges_t));
	es->len = argc+1;

	es->e = (edge_t *) calloc(es->len, sizeof(edge_t));

	for(i = 0; i < es->len; i++) {
		edge_t * e = &es->e[i];
		char * a , * b, * c, * l, * r;
		a = argv[i];
		b = a + 1;
		if(!a || !b) break;
		c = strchr(b, ',');
		if(!c) break;
		l = b;
		r = c+1;
		e->x = atoi(l);
		e->y = atoi(r);
	}

	return es;
}

void print_edges (edges_t *es) {
	int i;
	for (i=0; i<es->len; i++) {
		edge_t * e = &es->e[i];
		printf("%i %i\n", e->x, e->y);
	}
	return;
}


adjMatrix_t * edges2adjMatrix(edges_t *es, int depth) {
	adjMatrix_t * am;
	int i;

	if(!es) return NULL;

	if(!depth) depth = 20;

	am = (adjMatrix_t *) calloc(1,sizeof(adjMatrix_t));

	for(i = 0; i < es->len; i++) {
		edge_t * e = &es->e[i];
		am->e[e->x][e->y] += 1;
	}

	am->len = es->len;

	return am;
}


matrix_t * edges2Matrix(char **argv) {
	matrix_t * m;
	int i, l, r;
	char *ptr_l, *ptr_r, *arg;

	m = (matrix_t *) calloc(1,sizeof(matrix_t));

	for(i=2;argv[i]!=NULL;i++) {
		arg = argv[i];
		ptr_l = strtok(arg, " ");
		if(!ptr_l) { err(1, "parse error"); }
		ptr_r = strtok(NULL, "");
		if(!ptr_r) { err(1, "parse_error"); }
		l = atoi(ptr_l);
		r = atoi(ptr_r);
		if(l <= 0 || r <= 0) {
			errx(1, "vertices must be > 0");
		}
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




dmatrix_t * edges2DMatrix(char **argv) {
	dmatrix_t * m;
	int h, i, l, r;
	char *arg;

	m = (dmatrix_t *) calloc(1,sizeof(dmatrix_t));

	for(h=0;h<2;h++) {
		for(i=2;argv[i]!=NULL;i++) {
			arg = argv[i];
			l = r = 0;
			sscanf(arg, "%d %d", &l, &r);
			if (l <= 0 || r <= 0) {
				errx(1, "vertices must be > 0");
			}
			if(h == 0) {
				if(l > m->maxx) m->maxx = l;
				if(r > m->maxy) m->maxy = r;
			} else {
				if(l > m->maxx || r > m->maxy) { err(1, "too big"); }
				m->e[l][r] += 1;
				m->len += 1;
			}
		}
		if(h == 0) {
			m->maxx+=2;
			m->maxy+=2;

			if(m->maxx < m->maxy) {
				m->maxx = m->maxy;
			} else {
				m->maxy = m->maxx;
			}

			m->e =(vertex_t **) calloc(m->maxx+1,sizeof(vertex_t *));
			for(i=0;i<m->maxx;i++) {
				m->e[i] = (vertex_t *) calloc(m->maxy+1,sizeof(vertex_t));
			}
		}
	}
	m->maxv = m->maxx + 1;
//	print_dmatrix(m);
	
	return m;
}


dcmatrix_t * create_dcompanion(dmatrix_t *m) {
	dcmatrix_t * cm;
	vertex_t *vs;
	int i, j, k, cnt;

	cm = (dcmatrix_t *) calloc(1,sizeof(dcmatrix_t));

	cm->maxx = m->maxx;
	cm->v = (vertex_t **) calloc(m->maxx+1, sizeof(vertex_t *));

	for(i = 0; i < m->maxx; i++) {
		cnt = 0;
		for(j = 0; j < m->maxy; j++) {
			if(m->e[i][j] > 0) {
				cnt++;
			}
		}
		if(cnt > 0) {
			cm->vlen ++;
			vs = (vertex_t *) calloc(cnt+1, sizeof(vertex_t));
			cm->v[i]=vs;
			for(k = 0, j = 0; j < m->maxy; j++) {
				if(m->e[i][j] > 0) {
					vs[k] = j;
					k++;
				}
			}
		}
	}

	return cm;
}



void print_adjMatrix(adjMatrix_t *am) {
	int i, j;
	if(!am) return;

	printf("   ");
	for(i = 0; i < MAX_X; i++) {
		printf("%.2i ", i);
	}
	puts("");

	for(i = 0; i < MAX_X; i++) {
		printf("%.2i ", i);
		for(j = 0; j < MAX_Y; j++) {
			printf("%.2i ", am->e[i][j]);
		}
		puts("");
	}

	return;
}



void print_dmatrix(dmatrix_t *m) {
	int i, j;
	if(!m) return;

	printf("   ");
	for(i = 0; i < m->maxx; i++) {
		printf("%.2i ", i);
	}
	puts("");

	for(i = 0; i < m->maxx; i++) {
		printf("%.2i ", i);
		for(j = 0; j < m->maxy; j++) {
			printf("%.2i ", m->e[i][j]);
		}
		puts("");
	}

	return;
}



void solve(adjMatrix_t *am) {
	vertex_t vs[MAX_V];
	int i;

	if(!am) return;

	for(i = 1; i < MAX_X; i++) {
		solveV(*am, i, vs, 0);
	}
}

void solveV(adjMatrix_t am, vertex_t v, vertex_t vs[], int l) {

	int i, j;
	vertex_t a,b,c,d;

	if(am.len < 0) return;

	if(am.len == 0) {
		return;
	}

	vs[l] = v;

	for(i = v, j = 1; j < MAX_Y; j++) {
		a = am.e[i][j];
		if(a > 0) {

			am.e[i][j] = a - 1;
			b = am.e[j][i];

			c = (b > 0 ? b - 1 : 0);

			d = am.len;
			am.e[j][i] = c;
			if(b > 0) am.len -= 2;
			else am.len -= 1;

			solveV(am, j, vs, l+1);
			am.e[j][i] = b;
			am.len = d;
			am.e[i][j] = a;
		}
	}

	return;
}


void print_vResult(vertex_t v, vertex_t vl[], int l) {
	int i;
	for(i = 0; i < l; i ++) {
		printf("%i ", vl[i]);
	}
	printf("%i\n", v);
}

vertex_t * dup_vResult(vertex_t v, vertex_t vl[], int l) {
	int i;
	vertex_t *vp;
	vp = calloc(1,l+5);
	vp[0]=l;
	for (i = 0; i < l; i++) {
		vp[i+1] = vl[i];
	}
	vp[i+1] = v;
	return vp;
}

void print_vDupd(vertex_t *vp) {
	int i, l;
	if(!vp) return;
	l = vp[0];
	for(i=0; i <= l; i++) {
		printf("%i ", vp[i+1]);
	}
	puts("");
	return;
}


void solveZ(adjMatrix_t *am, int *suc) {
	vertex_t vs[MAX_V];
	int i;

	if(!am) return;

	for(i = 1; i < MAX_X; i++) {
		solveZV(am, i, vs, 0, suc);
	}
}

void solveZV(adjMatrix_t *am, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d;

	if(am->len < 0) return;

	if(am->len == 0) {
		(*suc)++;
		return;
	}

	vs[l] = v;

	for(i = v, j = 1; j < MAX_Y; j++) {
		a = am->e[i][j];
		if(a > 0) {

			am->e[i][j] = a - 1;
			b = am->e[j][i];

			c = (b > 0 ? b - 1 : 0);

			d = am->len;
			am->e[j][i] = c;
			if(b > 0) am->len -= 2;
			else am->len -= 1;

			solveZV(am, j, vs, l+1, suc);
			am->e[j][i] = b;
			am->len = d;
			am->e[i][j] = a;
		}
	}

	return;
}


void solveP(adjMatrix_t *am, int *suc) {
	vertex_t vs[MAX_V];
	int i;

	if(!am) return;

	int results[20];
#pragma omp parallel for private(i)
	for(i = 1; i < MAX_X; i++) {
		adjMatrix_t amp;
		memcpy(&amp,am,sizeof(adjMatrix_t));
		results[i]=0;
		solveZV(&amp, i, vs, 0, &results[i]);
	}

	for(i = 0; i < 20; i++) {
		*(suc)+=results[i];
	}
}




int solve0(matrix_t *m) {
	vertex_t vs[MAX_V];
	int i, r = 0;

	if(!m) return 0;

	for(i = 1; i < MAX_X; i++) {
		r = r + solveV0(*m, i, vs, 0);
	}
	return r;
}

int solveV0(matrix_t m, vertex_t v, vertex_t vs[], int l) {

	int i, j, r = 0;
	vertex_t a,b,c,d;

	vs[l] = v;

	if(m.len == 0) {
		return 1;
	}

	for(i = v, j = 1; j < MAX_Y; j++) {
		a = m.e[i][j];
		if(a > 0) {

			m.e[i][j] = a - 1;
			b = m.e[j][i];

			c = (b > 0 ? b - 1 : 0);

			d = m.len;
			m.e[j][i] = c;
			if(b > 0) m.len -= 2;
			else m.len -= 1;

			r = r + solveV0(m, j, vs, l+1);
			m.e[j][i] = b;
			m.len = d;
			m.e[i][j] = a;
		}
	}

	return r;
}






void solve1(matrix_t *m, int *succ) {
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;

	for(i = 1; i < MAX_X; i++) {
		solveV1(m, i, vs, 0, succ);
	}
}


void solveV1(matrix_t *m, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
		return;
	}

	for(i = v, j = 1; j < MAX_Y; j++) {
		a = m->e[i][j];
		if(a > 0) {

			m->e[i][j] = a - 1;
			b = m->e[j][i];

			c = (b > 0 ? b - 1 : 0);

			d = m->len;
			m->e[j][i] = c;
			if(b > 0) m->len -= 2;
			else m->len -= 1;

			solveV1(m, j, vs, l+1, suc);
			m->e[j][i] = b;
			m->len = d;
			m->e[i][j] = a;
		}
	}

	return;
}


void solve2(matrix_t *m, int *suc) {
	cmatrix_t * cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	int results[MAX_X];
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		memcpy(&mp,m,sizeof(matrix_t));
		results[i]=0;
		solveV1(&mp, i, vs, 0, &results[i]);
	}

	for(i = 0; i < MAX_X; i++) {
		*(suc)+=results[i];
	}

	return;
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

			d = m->len;
			m->e[k][i] = c;
			if(b > 0) m->len -= 2;
			else m->len -= 1;

			solveV3(m, cm, k, vs, l+1, suc);
			m->e[k][i] = b;
			m->len = d;
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



void solve400(matrix_t *m, int *suc) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	cm = create_companion(m);

	int results[MAX_X];
	results[0] = 0;
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
			memcpy(&mp,m,sizeof(matrix_t));
			memcpy(&vsp,vs,sizeof(vs));
			solveV400(&mp, cm, i, vsp, 0, &results[i]);
		}
	}

	for(i = 0; i < MAX_X; i++) {
		*(suc)+=results[i];
	}

	return;
}


void solveV400(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
		return;
	}

	for(i = v, j = 0; cm->v[i][j] != 0; j++) {
		k = cm->v[i][j];
		a = m->e[i][k];
		if(a > 0) {

			m->e[i][k] = a - 1;
			b = m->e[k][i];

			c = (b > 0 ? b - 1 : 0);

			d = m->len;
			m->e[k][i] = c;
			if(b > 0) m->len -= 2;
			else m->len -= 1;

			solveV400(m, cm, k, vs, l+1, suc);
			m->e[k][i] = b;
			m->len = d;
			m->e[i][k] = a;
		}
	}

	return;
}


dmatrix_t * dmatrix_dup(dmatrix_t *m) {
	dmatrix_t * dm;
	int x, y;


	dm = (dmatrix_t *) calloc(1,sizeof(dmatrix_t));

	dm->len = m->len;
	dm->maxx = m->maxx;
	dm->maxy = m->maxy;
	dm->maxv = m->maxv;

	dm->e = (vertex_t **) calloc(dm->maxx+1, sizeof(vertex_t *));
	for(x = 0; x < dm->maxx; x++) {
		dm->e[x] = (vertex_t *) calloc(dm->maxy+1, sizeof(vertex_t));
		for(y=0;y<dm->maxy;y++) {
			dm->e[x][y] = m->e[x][y];
		}
	}

	return dm;
}

void solve40(dmatrix_t *m, int *suc) {
	dcmatrix_t *cm;
	vertex_t vs[m->maxv+1];
	int i;

	if(!m) return;

	cm = create_dcompanion(m);
	if(!cm) return;

	int results[m->maxx];
	results[0] = 0;
#pragma omp parallel for private(i,vs) schedule(dynamic)
	for(i = 1; i < m->maxx; i++) {
		dmatrix_t *mp;
		vertex_t vsp[m->maxv+1];

		mp = dmatrix_dup(m);
		if(!mp) errx(1, "wtf?");

		results[i] = 0;

		if(cm->v[i] != NULL) {
			memcpy(&vsp,vs,sizeof(vs));
			solveV40(mp, cm, i, vsp, 0, &results[i]);
		}
	}

	for(i = 0; i < m->maxx; i++) {
		*(suc)+=results[i];
	}

	return;
}




void solveV40(dmatrix_t *m, dcmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
//		print_vResult(v,vs,l);
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

			d = m->len;
			m->e[k][i] = c;
			if(b > 0) m->len -= 2;
			else m->len -= 1;

			solveV40(m, cm, k, vs, l+1, suc);
			m->e[k][i] = b;
			m->len = d;
			m->e[i][k] = a;
		}
	}

	return;
}




void solve4000(dmatrix_t *m, int *suc) {
	dcmatrix_t *cm;
	vertex_t vs[m->maxv+1];
	int i;

	cm = create_dcompanion(m);
	if(!cm) return;

	int results[m->maxx];
	results[0] = 0;
#pragma omp parallel for private(i,vs) schedule(dynamic)
	for(i = 1; i < m->maxx; i++) {
		dmatrix_t *mp;
		vertex_t vsp[m->maxv+1];

		mp = dmatrix_dup(m);
		if(!mp) errx(1, "eh");

		results[i] = 0;

		if(cm->v[i] != NULL) {
			memcpy(&vsp,vs,sizeof(vs));
			solveV4000(mp, cm, i, vsp, 0, &results[i]);
		}
	}

	for(i = 0; i < m->maxx; i++) {
		*(suc)+=results[i];
	}

	return;
}




void solveV4000(dmatrix_t *m, dcmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
//		print_vResult(v,vs,l);
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

			d = m->len;
			m->e[k][i] = c;
			if(b > 0) m->len -= 2;
			else m->len -= 1;

			solveV4000(m, cm, k, vs, l+1, suc);
			m->e[k][i] = b;
			m->len = d;
			m->e[i][k] = a;
		}
	}

	return;
}





list_t * list_ins(list_t *h, void * d) {
	list_t * l;
	l = calloc(1,sizeof(list_t));
	l->d = d;
	if(h) {
		l->n = h;
	}
	return l;
}


void solve4001(dmatrix_t *m, int *suc) {
	dcmatrix_t *cm;
	vertex_t vs[m->maxv+1];
	int i;
	list_t *li[m->maxv+1], *ln = NULL;

	cm = create_dcompanion(m);
	if(!cm) return;

	memset(li,0,sizeof(li));
	int results[m->maxx];
#pragma omp parallel for private(i,vs) schedule(dynamic)
	for(i = 1; i < m->maxx; i++) {
		dmatrix_t *mp;
		vertex_t vsp[m->maxv+1];

		mp = dmatrix_dup(m);
		if(!mp) errx(1, "eh");

		results[i] = 0;

		if(cm->v[i] != NULL) {
			memcpy(vsp,vs,sizeof(vsp));
			solveV4001(mp, cm, i, vsp, 0, &results[i], li, i);
		}
	}

	for(i = 1; i < m->maxx; i++) {
		*(suc)+=results[i];
	}

	for(i = 1; i < m->maxx; i++) {
		if(li[i] != NULL) {
			for(ln = li[i]; ln != NULL; ln = ln->n) {
				if(ln->d != NULL) {
					print_vDupd(ln->d);
				}
			}
		}
	}

	return;
}




void solveV4001(dmatrix_t *m, dcmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc, list_t **li, int lid) {

	int i, j;
	vertex_t a,b,c,d,k;

	vs[l] = v;

	if(m->len == 0) {
		list_t *ln;
		ln = list_ins(li[lid], dup_vResult(v, vs, l));
		li[lid] = ln;
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

			d = m->len;
			m->e[k][i] = c;
			if(b > 0) m->len -= 2;
			else m->len -= 1;

			solveV4001(m, cm, k, vs, l+1, suc, li, lid);
			m->e[k][i] = b;
			m->len = d;
			m->e[i][k] = a;
		}
	}

	return;
}





void solve4_orig(matrix_t *m, int *suc) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
#pragma omp parallel for private(i)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;

		results[i] = 0;
		if(cm->v[i] == NULL) continue;

		memcpy(&mp,m,sizeof(matrix_t));
		solveV3(&mp, cm, i, vs, 0, &results[i]);
	}

	for(i = 0; i < MAX_X; i++) {
		*(suc)+=results[i];
	}

	return;
}






void solve80(matrix_t *m, int *succ) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(i = 1; i < MAX_X; i++) {
		if(cm->v[i] != NULL) {
			solveV80(m, cm, i, vs, succ);
		}
	}
}



void solve800(matrix_t *m, int *suc) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	int results[MAX_X];
	results[0] = 0;
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
			memcpy(&mp,m,sizeof(matrix_t));
			memcpy(&vsp,vs,sizeof(vs));
			solveV80(&mp, cm, i, vsp, &results[i]);
		}
	}

	for(i = 0; i < MAX_X; i++) {
		*(suc)+=results[i];
	}

	return;
}


void solveV80(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int *succ) {
	int i, l;
	int a, b, c, d, e, t, z;
	int x[MAX_V], y[MAX_V], inv[MAX_V], vi[MAX_V];
	int x_i, y_i, inv_i, vi_i, vs_i;

	x_i = y_i = inv_i = vi_i = vs_i = 0;

	z = i = 0;
	l = m->len;

	while(1) {

		a = cm->v[v][i];
		b = m->e[v][a];
		if (b > 0) {
			c = m->e[a][v];
			if (c > 0) {
				t = 1;
				m->e[a][v] -= 1;
				l = l - 2;
			} else {
				t = 0;
				l = l - 1;
			}
			m->e[v][a] -= 1;
			x[x_i] = v;
			x_i++;
			y[y_i] = a;
			y_i++;
			inv[inv_i] = t;
			inv_i++;
			vi[vi_i] = i;
			vi_i++;
			vs[vs_i] = v;
			vs_i++;

			z = cm->v[v][i];
			i = i + 1;
			if(!cm->v[v] && cm->v[v][i] != 0) {
				// FIXME
//				puts("FIXME");
			}
			else {
				v = cm->v[v][i - 1];
			}
			i = 0;
		} else if(cm->v[v] && cm->v[v][i] != 0) {
			// FIXME
			i++;
			continue;
		} else {
			if (l == 0) {
				*succ += 1;
			}
			if(!x_i || !y_i) break;
			x_i--;
			a = x[x_i];
			y_i--;
			b = y[y_i];
			m->e[a][b] += 1;
			inv_i--;
			c = inv[inv_i];
			l += 1;
			if (c == 1) {
				m->e[b][a] += 1;
				l += 1;
			}
			vs_i--;
			d = vs[vs_i];
			vi_i--;
			e = vi[vi_i];
			v = d;
			i = e + 1;
		}
	}

	return;
}







void solve8000(matrix_t *m, int *suc) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int i;

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	int results[MAX_X];
#pragma omp parallel for private(i) schedule(dynamic)
	for(i = 1; i < MAX_X; i++) {
		matrix_t mp;
		vertex_t vsp[MAX_V];

		results[i] = 0;
		if(cm->v[i] != NULL) {
			memcpy(&mp,m,sizeof(matrix_t));
			memcpy(&vsp,vs,sizeof(vs));
			solveV8000(&mp, cm, i, vsp, &results[i]);
		}
	}

	for(i = 0; i < MAX_X; i++) {
		*(suc)+=results[i];
	}

	return;
}



void solveV8000(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int *succ) {
	unsigned char i, l;
	unsigned char a, b, c, z;
	unsigned char x[MAX_V], y[MAX_V], inv[MAX_V], vi[MAX_V];
	unsigned char g_i;
	unsigned char t;

	g_i = 0;

	z = i = 0;
	l = m->len;

	while(1) {

		a = cm->v[v][i];
		b = m->e[v][a];
		if (b > 0) {
			c = m->e[a][v];
			if (c > 0) {
				t = 1;
				m->e[a][v] -= 1;
				l = l - 2;
			} else {
				t = 0;
				l = l - 1;
			}
			m->e[v][a] -= 1;
			x[g_i] = v;
			y[g_i] = a;
			inv[g_i] = t;
			vi[g_i] = i;

			g_i++;

			z = cm->v[v][i];
			i = i + 1;
			v = cm->v[v][i - 1];
			i = 0;
		} else if(cm->v[v] && cm->v[v][i] != 0) {
			// FIXME
			i++;
			continue;
		} else {
			if (l == 0) {
				*succ += 1;
			}

			if(!g_i) break;

			g_i--;
			a = x[g_i];
			b = y[g_i];
			m->e[a][b] += 1;
			c = inv[g_i];
			l += 1;
			if (c == 1) {
				m->e[b][a] += 1;
				l += 1;
			}
			v = x[g_i];
			i = vi[g_i] + 1;
		}
	}

	return;
}







void solve9(matrix_t *m, int *succ) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int z;

	int i[MAX_V], j[MAX_V], depth=0;
	vertex_t a[MAX_V],b[MAX_V],c[MAX_V],d[MAX_V],k[MAX_V];

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(z = 1; z < MAX_X; z++) {
		if(cm->v[z] != NULL) {
			solveV9(m, cm, z, vs, 0, succ, &depth, i, j, a, b, c, d, k);
		}
	}
}


void solveV9(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc, int *depth, int i[], int j[], vertex_t a[], vertex_t b[], vertex_t c[], vertex_t d[], vertex_t k[]) {

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
		return;
	}

	(*depth)++;

	for(i[*depth] = v, j[*depth] = 0; cm->v[i[*depth]] != NULL && cm->v[i[*depth]][j[*depth]] != 0; j[*depth]++) {
		k[*depth] = cm->v[i[*depth]][j[*depth]];
		a[*depth] = m->e[i[*depth]][k[*depth]];
		if(a[*depth] > 0) {

			m->e[i[*depth]][k[*depth]] = a[*depth] - 1;
			b[*depth] = m->e[k[*depth]][i[*depth]];

			c[*depth] = (b[*depth] > 0 ? b[*depth] - 1 : 0);

			d[*depth] = m->len;
			m->e[k[*depth]][i[*depth]] = c[*depth];
			if(b[*depth] > 0) m->len -= 2;
			else m->len -= 1;

			solveV9(m, cm, k[*depth], vs, l+1, suc, depth, i, j, a, b, c, d, k);
			m->e[k[*depth]][i[*depth]] = b[*depth];
			m->len = d[*depth];
			m->e[i[*depth]][k[*depth]] = a[*depth];
		}
	}

	(*depth)--;

	return;
}






void solve90(matrix_t *m, int *succ) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int z;

	int i[MAX_V], j[MAX_V], depth=0;
	vertex_t a[MAX_V],b[MAX_V],c[MAX_V],d[MAX_V],k[MAX_V];

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(z = 1; z < MAX_X; z++) {
		if(cm->v[z] != NULL) {
			solveV90(m, cm, z, vs, 0, succ, depth, i, j, a, b, c, d, k);
		}
	}
}


void solveV90(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc, int depth, int i[], int j[], vertex_t a[], vertex_t b[], vertex_t c[], vertex_t d[], vertex_t k[]) {

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
		return;
	}

	depth++;

	for(i[depth] = v, j[depth] = 0; cm->v[i[depth]] != NULL && cm->v[i[depth]][j[depth]] != 0; j[depth]++) {
		k[depth] = cm->v[i[depth]][j[depth]];
		a[depth] = m->e[i[depth]][k[depth]];
		if(a[depth] > 0) {

			m->e[i[depth]][k[depth]] = a[depth] - 1;
			b[depth] = m->e[k[depth]][i[depth]];

			c[depth] = (b[depth] > 0 ? b[depth] - 1 : 0);

			d[depth] = m->len;
			m->e[k[depth]][i[depth]] = c[depth];
			if(b[depth] > 0) m->len -= 2;
			else m->len -= 1;

			solveV90(m, cm, k[depth], vs, l+1, suc, depth, i, j, a, b, c, d, k);
			m->e[k[depth]][i[depth]] = b[depth];
			m->len = d[depth];
			m->e[i[depth]][k[depth]] = a[depth];
		}
	}

	depth--;

	return;
}








void solve900(matrix_t *m, int *succ) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int z;

	int i[MAX_V], j[MAX_V], depth=0;
	vertex_t a[MAX_V],b[MAX_V],c[MAX_V],d[MAX_V],k[MAX_V];

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(z = 1; z < MAX_X; z++) {
		if(cm->v[z] != NULL) {
			solveV900(m, cm, z, vs, 0, succ, &depth, i, j, a, b, c, d, k);
		}
	}
}


void solveV900(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc, int *depth, int i[], int j[], vertex_t a[], vertex_t b[], vertex_t c[], vertex_t d[], vertex_t k[]) {
	// BROKEN

	vs[l] = v;

printf("DEPTH: %i, V: %i, L=%i, i=%i, j=%i\n", *depth, v, l, i[*depth], j[*depth]);

	if(m->len == 0) {
		printf("LEN=0: DEPTH=%i, SUC=%i\n", *depth, *suc);
		(*depth)--;
		(*suc)++;
		return;
	}

i[*depth] = v;
j[*depth] = 0;
if(cm->v[i[*depth]] != NULL && cm->v[i[*depth]][j[*depth]] != 0) {

		k[*depth] = cm->v[i[*depth]][j[*depth]];
		a[*depth] = m->e[i[*depth]][k[*depth]];
		if(a[*depth] > 0) {

			m->e[i[*depth]][k[*depth]] = a[*depth] - 1;
			b[*depth] = m->e[k[*depth]][i[*depth]];

			c[*depth] = (b[*depth] > 0 ? b[*depth] - 1 : 0);

			if(c[*depth] >= 0) {
				(*depth)++;
				d[*depth] = m->len;
				m->e[k[*depth]][i[*depth]] = c[*depth];
				if(b[*depth] > 0) m->len -= 2;
				else m->len -= 1;

				//solveV900(m, cm, k[*depth], vs, l+1, suc, depth, i, j, a, b, c, d, k);
				m->e[k[*depth]][i[*depth]] = b[*depth];
				m->len = d[*depth];
			} else {
				m->e[i[*depth]][k[*depth]] = a[*depth];
			}
//			m->e[i[*depth]][k[*depth]] = a[*depth];
		}
} else {
	i[*depth]++;
}

	solveV900(m, cm, k[*depth], vs, l, suc, depth, i, j, a, b, c, d, k);
}








void solve9000(matrix_t *m, int *succ) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int z;

	int i[MAX_V], j[MAX_V], depth=0;
	vertex_t a[MAX_V],b[MAX_V],c[MAX_V],d[MAX_V],k[MAX_V];

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(z = 1; z < MAX_X; z++) {
		if(cm->v[z] != NULL) {
			solveV9000(m, cm, z, vs, 0, succ, depth, i, j, a, b, c, d, k);
		}
	}
}




void solveV9000(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc, register int depth, register int i[], register int j[], register vertex_t a[], register vertex_t b[], register vertex_t c[], register vertex_t d[], register vertex_t k[]) {

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
		return;
	}

	depth++;

	for(i[depth] = v, j[depth] = 0; cm->v[i[depth]] != NULL && cm->v[i[depth]][j[depth]] != 0; j[depth]++) {
		k[depth] = cm->v[i[depth]][j[depth]];
		a[depth] = m->e[i[depth]][k[depth]];
		if(a[depth] > 0) {

			m->e[i[depth]][k[depth]] = a[depth] - 1;
			b[depth] = m->e[k[depth]][i[depth]];

			c[depth] = (b[depth] > 0 ? b[depth] - 1 : 0);

			d[depth] = m->len;
			m->e[k[depth]][i[depth]] = c[depth];
			if(b[depth] > 0) m->len -= 2;
			else m->len -= 1;

			solveV9000(m, cm, k[depth], vs, l+1, suc, depth, i, j, a, b, c, d, k);
			m->e[k[depth]][i[depth]] = b[depth];
			m->len = d[depth];
			m->e[i[depth]][k[depth]] = a[depth];
		}
	}

	depth--;

	return;
}








void solve90000(matrix_t *m, int *succ) {
	cmatrix_t *cm;
	vertex_t vs[MAX_V];
	int z;

	int depth=0;
	vertex_t a[MAX_V],b[MAX_V],c[MAX_V],d[MAX_V],k[MAX_V];

	if(!m) return;

	cm = create_companion(m);
	if(!cm) return;

	for(z = 1; z < MAX_X; z++) {
		if(cm->v[z] != NULL) {
			solveV90000(m, cm, z, vs, 0, succ, depth, z, 0, a, b, c, d, k);
		}
	}
}




void solveV90000(matrix_t *m, cmatrix_t *cm, vertex_t v, vertex_t vs[], int l, int *suc, register int depth, int i, int j, register vertex_t a[], register vertex_t b[], register vertex_t c[], register vertex_t d[], register vertex_t k[]) {

	vs[l] = v;

	if(m->len == 0) {
		(*suc)++;
		return;
	}

	depth++;

	for(; cm->v[i] != NULL && cm->v[i][j] != 0; j++) {
		k[depth] = cm->v[i][j];
		a[depth] = m->e[i][k[depth]];
		if(a[depth] > 0) {

			m->e[i][k[depth]] = a[depth] - 1;
			b[depth] = m->e[k[depth]][i];

			c[depth] = (b[depth] > 0 ? b[depth] - 1 : 0);

			d[depth] = m->len;
			m->e[k[depth]][i] = c[depth];
			if(b[depth] > 0) m->len -= 2;
			else m->len -= 1;

			solveV90000(m, cm, k[depth], vs, l+1, suc, depth, k[depth], 0, a, b, c, d, k);
			m->e[k[depth]][i] = b[depth];
			m->len = d[depth];
			m->e[i][k[depth]] = a[depth];
		}
	}

	depth--;

	return;
}

