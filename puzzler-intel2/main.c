#include "puzzler.h"

int main(int argc, char *argv[]) {
	matrix_t * m;
	int succ = 0, ix;

	if(argc < 3) {
		err(1, "./puzzler {0..} <EDGES>");
	}

	ix = atoi(argv[1]);

	m = edges2Matrix(argv);
	if(!m) {
		err(1, "edges error");
	}

	switch(ix) {
		case 3: {
			solve3(m, &succ);
			break;
		}
		case 4: {
			solve4(m, &succ);
			break;
		}
		default : {
			err(1, "index doesn't exist");
		}
	}

	printf("successes: %i\n", succ);

	return 0;
}
