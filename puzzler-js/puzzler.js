
'use strict';

var u = require('util');


var xx = 20;
var yy = 20;


var clog = u.format;
var c = u.print


var create_matrix_old = function(x, y) {
	var m = {};
	var a = new Array();

	var count = 0;
	for(var i = 0 ; i <= x; i++) {
		a[i] = new Array();
		for(var j = 0; j <= y; j++) {
			a[i][j] = 0;
		}
	}
	m.e = a;
	m.len = 0;

	return m;
}

var create_matrix = function(x, y) {
	var m = {};
	var a = new Array(xx);
	var z = new Array(xx);

	var count = 0;

	for(var i = 0; i <= xx; i++) {
		z[i] = 0;
	}

	for(var i = 0; i <= xx; i++) {
		a[i] = z.map(function(e) { return 0;});
	}
	m.e = a;
	m.len = 0;

	return m;
}

var create_companion = function(m) {
	var cm = new Array();
	for(var i = 0; i <= xx; i++) {
		for (var j = 0; j <= yy; j++) {
			if (m.e[i][j] > 0) {
				if(cm[i] == undefined) {
					cm[i] = new Array();
				}
				cm[i].push(j);
			}
		}
	}
	return cm;
}


var print_matrix = function(m) {

	c(clog("   "));
	for(var i = 0; i <= xx; i++) {
		c(clog("%d ", i));
	}
	c(clog("\n"));

	for(var i = 0; i <= xx; i++) {
		for(var j = 0; j <= yy; j++) {
			c(clog("%d ", m.e[i][j]));
		}
		c(clog("\n"));
	}
}


var solve0 = function(m, suc) {
	var v = [];
	var s = 0;
	for(var i = 1; i < xx; i++) {
		v.push(i);
		s = s + solveV0(m, i, v);
		v.pop();
	}
	suc.succ = s;
}



var solveV0 = function(m, v, vs) {
	var i = 0, j = 0;
	var a = 0,b = 0,c = 0,d = 0, s = 0;

	if(m.len == 0) {
		return 1;
	}

	for(var i = v, j = 1; j < yy; j++) {
		a = m.e[i][j];
		if(a > 0) {

			m.e[i][j] = a - 1;
			b = m.e[j][i];

			c = (b > 0 ? b - 1 : 0);

			d = m.len;
			m.e[j][i] = c;
			if(b > 0) m.len -= 2;
			else m.len -= 1;

			vs.push(j);
			s = s + solveV0(m, j, vs);
			vs.pop();
			m.e[j][i] = b;
			m.len = d;
			m.e[i][j] = a;
		}
	}
	return s;
}



var solve1 = function(m, suc) {
	var v = []
	for(var i = 1; i < xx; i++) {
		v.push(i);
		solveV1(m, i, v, suc);
		v.pop();
	}
}


var solveV1 = function(m, v, vs, suc) {
	var i, j;
	var a, b, c, d;

	if(m.len == 0) {
		suc.succ+=1;
		return;
	}

	for(var i = v, j = 1; j < yy; j++) {
		a = m.e[i][j];
		if(a > 0) {

			m.e[i][j] = a - 1;
			b = m.e[j][i];

			c = (b > 0 ? b - 1 : 0);

			d = m.len;
			m.e[j][i] = c;
			if(b > 0) m.len -= 2;
			else m.len -= 1;

			vs.push(j);
			solveV1(m, j, vs, suc);
			vs.pop();
			m.e[j][i] = b;
			m.len = d;
			m.e[i][j] = a;
		}
	}
}


var solve3 = function(m, suc) {
	var v = []
	var cm = create_companion(m);
	for(var i = 1; i < xx; i++) {
		if(cm[i] == undefined) continue;
		v.push(i);
		solveV3(m, cm, i, v, suc);
		v.pop();
	}
}


var solveV3 = function(m, cm, v, vs, suc) {
	var i, j, k;
	var a, b, c, d;

	if(m.len == 0) {
		suc.succ+=1;
		return;
	}

	for(var i = v, j = 0; j < cm[i].length; j++) {
		k = cm[i][j];
		a = m.e[i][k];
		if(a > 0) {

			m.e[i][k] = a - 1;
			b = m.e[k][i];

			c = (b > 0 ? b - 1 : 0);

			d = m.len;
			m.e[k][i] = c;
			if(b > 0) m.len -= 2;
			else m.len -= 1;

			vs.push(k);
			solveV3(m, cm, k, vs, suc);
			vs.pop();
			m.e[k][i] = b;
			m.len = d;
			m.e[i][k] = a;
		}
	}
}




var solve3b = function(m, suc) {
	var vs = [];
	var cm = create_companion(m);
	for(var i = 0; i < xx; i++) {
		if(cm[i] == undefined) continue;
		solveV3b(m, cm, i, vs, suc, 0);
	}
}


var solve3c = function(m, suc) {
	var vs = new Array(50);
	var cm = create_companion(m);
	for(var i = 1; i < xx; i++) {
		if(cm[i] == undefined) continue;
		solveV3b(m, cm, i, vs, suc, 0);
	}
}

var solveV3b = function(m, cm, v, vs, suc, l) {
	var i, j, k;
	var a, b, c, d;

	vs[l] = v;

	if(m.len == 0) {
		suc.succ+=1;
		return;
	}

	for(var i = v, j = 0; j < cm[i].length; j++) {
		k = cm[i][j];
		a = m.e[i][k];
		if(a > 0) {

			m.e[i][k] = a - 1;
			b = m.e[k][i];

			c = (b > 0 ? b - 1 : 0);

			d = m.len;
			m.e[k][i] = c;
			if(b > 0) m.len -= 2;
			else m.len -= 1;

			solveV3b(m, cm, k, vs, suc, l+1);
			m.e[k][i] = b;
			m.len = d;
			m.e[i][k] = a;
		}
	}
}



var solve8 = function(m, suc) {
	var vs = [];
	var cm = create_companion(m);
	for(var i = 1; i < xx; i++) {
		if(cm[i] != undefined) {
			solveV8(m, cm, i, vs, suc);
		}
	}
}

var solveV8 = function(m, cm, v, vs, suc) {
	var i, j, k, r, s, l;
	var a, b, c, d, e;

	var x = [], y = [], inv = [], vi = [], cmi = [], t, o_l, z = 0;

	i = 0;
	o_l = l = m.len;

	while(true) {
		a = cm[v][i];
		b = m.e[v][a];
		if (b > 0) {

			c = m.e[a][v];
			if (c > 0) {
				t = true;
				m.e[a][v] -= 1;
				l = l - 2;
			} else {
				t = false;
				l = l - 1;
			}
			m.e[v][a] -= 1;
			x.push(v);
			y.push(a);
			inv.push(t);
			vi.push(i);
			vs.push(v);
			z = cm[v][i];
			i = i + 1;
			if(i > cm[v].length) {
			} else {
				v = cm[v][i-1];
			}
			i = 0;
		} else if(cm[v].length > i) {
			i++;
			continue;
		} else {

			if(l == 0) {
				suc.succ += 1;
			}
			a = x.pop();
			b = y.pop();
			if(a == undefined || b == undefined) break;
			m.e[a][b] += 1;
			c = inv.pop();
			l += 1;
			if(c == true) {
				m.e[b][a] += 1;
				l += 1;
			}
			d = vs.pop();
			e = vi.pop();
			v = d;
			i = e+1;
		}
	}

}


var solve80 = function(m, suc) {
	var vs = [];
	var cm = create_companion(m);
	for(var i = 1; i < xx; i++) {
		if(cm[i] != undefined) {
			solveV80(m, cm, i, vs, suc);
		}
	}
}

var solveV80 = function(m, cm, v, vs, suc) {
	var i, j, k, r, s, l;
	var a, b, c, d, e;

	var x, y, inv, vi, cmi, t, z;
	var x_i, y_i, inv_i, vi_i, vs_i;

	x_i = y_i = inv_i = vi_i = vs_i = 0;
	x = new Array(50);
	y = new Array(50);
	inv = new Array(50);
	vs = new Array(50);
	vi = new Array(50);

	i = z = 0;
	l = m.len;

	while(true) {
		a = cm[v][i];
		b = m.e[v][a];
		if (b > 0) {

			c = m.e[a][v];
			if (c > 0) {
				t = true;
				m.e[a][v] -= 1;
				l = l - 2;
			} else {
				t = false;
				l = l - 1;
			}
			m.e[v][a] -= 1;
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

			z = cm[v][i];
			i = i + 1;
			v = cm[v][i-1];
			i = 0;
		} else if(cm[v].length > i) {
			i++;
			continue;
		} else {

			if(l == 0) {
				suc.succ += 1;
			}
			x_i--;
			a = x[x_i];
			y_i--;
			b = y[y_i];
			if(a == undefined || b == undefined) break;
			m.e[a][b] += 1;
			inv_i--;
			c = inv[inv_i];
			l += 1;
			if(c == true) {
				m.e[b][a] += 1;
				l += 1;
			}
			vs_i--;
			d = vs[vs_i];
			vi_i--;
			e = vi[vi_i];
			v = d;
			i = e+1;
		}
	}

}






var solve81 = function(m, suc) {
	var vs = [];
	var cm = create_companion(m);
	for(var i = 1; i < xx; i++) {
		if(cm[i] != undefined) {
			solveV81(m, cm, i, vs, suc);
		}
	}
}

var solveV81 = function(m, cm, v, vs, suc) {
	var i, j, k, r, s, l;
	var a, b, c, d, e;

	var x, y, inv, vi, cmi, t, z;
	var g_i;

	g_i = 0;
	x = new Array(50);
	y = new Array(50);
	inv = new Array(50);
	vs = new Array(50);
	vi = new Array(50);

	i = z = 0;
	l = m.len;

	while(true) {
		a = cm[v][i];
		b = m.e[v][a];
		if (b > 0) {

			c = m.e[a][v];
			if (c > 0) {
				t = true;
				m.e[a][v] -= 1;
				l = l - 2;
			} else {
				t = false;
				l = l - 1;
			}
			m.e[v][a] -= 1;
			x[g_i] = v;
			y[g_i] = a;
			inv[g_i] = t;
			vi[g_i] = i;
			vs[g_i] = v;
			g_i++;

			z = cm[v][i];
			i = i + 1;
			v = cm[v][i-1];
			i = 0;
		} else if(cm[v].length > i) {
			i++;
			continue;
		} else {

			if(l == 0) {
				suc.succ += 1;
			}
			g_i--;
			a = x[g_i];
			b = y[g_i];
			if(a == undefined || b == undefined) break;
			m.e[a][b] += 1;
			c = inv[g_i];
			l += 1;
			if(c == true) {
				m.e[b][a] += 1;
				l += 1;
			}
			v = x[g_i];
			i = vi[g_i] + 1;
		}
	}

}



var init_cli = function(argv) {
	var m = create_matrix(xx,yy);

	for (var v in argv) {
		if(v < 3) continue;

		var arg = argv[v];
		var s = /(.*) (.*)/.exec(arg);
		var x = parseInt(s[1],10);
		var y = parseInt(s[2],10);
		var e = m.e[x][y];
		e = e + 1;
		m.e[x][y] = e;
		m.len+=1;
	}

	var suc = {
		succ : 0
	}

	switch(argv[2]) {
		case "0": {
			solve0(m, suc);
			break;
		}
		case "1": {
			solve1(m, suc);
			break;
		}
		case "3": {
			solve3(m, suc);
			break;
		}
		case "3b": {
			solve3b(m, suc);
			break;
		}
		case "3c": {
			solve3c(m, suc);
			break;
		}
		case "8": {
			solve8(m, suc);
			break;
		}
		case "80": {
			solve80(m, suc);
			break;
		}
		case "81": {
			solve81(m, suc);
			break;
		}
		default: {
			c(clog("invalid index"));
			process.exit();
		}
	}

	c(clog("successes: %d\n", suc.succ));
}

var init = function() {
	if(process.argv.length > 2) {
		init_cli(process.argv);
	}
}

init();
