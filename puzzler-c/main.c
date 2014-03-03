#include "puzzler.h"

int main(int argc, char *argv[]) {
	dmatrix_t *dm=NULL;
	matrix_t * m;
	int succ = 0, ix;

	if(argc < 3) {
		err(1, "./puzzler {0..} <EDGES>");
	}

	ix = atoi(argv[1]);

	if(ix == 40 || ix == 4000 || ix == 4001) {
		dm = edges2DMatrix(argv);
		if(!dm) {
			err(1, "edges error");
		}
	} else {
		m = edges2Matrix(argv);
		if(!m) {
			err(1, "edges error");
		}
	}

	switch(ix) {
		case 0: {
			succ = solve0(m);
			break;
		}
		case 1: {
			solve1(m, &succ);
			break;
		}
		case 2: {
			solve2(m, &succ);
			break;
		}
		case 3: {
			solve3(m, &succ);
			break;
		}
		case 4: {
			solve4(m, &succ);
			break;
		}
		case 40: {
			solve40(dm, &succ);
			break;
		}
		case 400: {
			solve400(m, &succ);
			break;
		}
		case 4001: {
			print_dmatrix(dm);
			solve4001(dm, &succ);
			break;
		}
		case 4000: {
			solve4000(dm, &succ);
			break;
		}
		case 80: {
			solve80(m, &succ);
			break;
		}
		case 800: {
			solve800(m, &succ);
			break;
		}
		case 8000: {
			solve8000(m, &succ);
			break;
		}
		case 9: {
			solve9(m, &succ);
			break;
		}
		case 90: {
			solve90(m, &succ);
			break;
		}
		case 900: {
			solve900(m, &succ);
			break;
		}
		case 9000: {
			solve9000(m, &succ);
			break;
		}
		case 90000: {
			solve90000(m, &succ);
			break;
		}
		default : {
			err(1, "index doesn't exist");
		}
	}

	printf("successes: %i\n", succ);

	return 0;
}
