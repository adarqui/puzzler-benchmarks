<?php

define("XX", 20);
define("V", 50);


error_reporting(E_STRICT);

function create_matrix($xx) {
	$arr = array_fill(0, $xx, array_fill(0, $xx, 0));
	return $arr;
}


function create_companion($xx, $m, $len) {
	$cm = array_fill(0, $xx, 0);
	for($i = 0; $i < $xx; $i++) {
		for($j = 0; $j < $xx; $j++) {
			if($m[$i][$j] > 0) {
				if(!is_array($cm[$i])) {
					$cm[$i] = array();
				}
				array_push($cm[$i], $j);
			}
		}
	}
	return $cm;
}


function solve3c($xx, $m, $len, &$succ) {
	$vs = array_fill(0, V, 0);
	$cm = create_companion($xx, $m, $len);
	for ($i = 1; $i < $xx; $i++) {
		if(isset($cm[$i])) {
			solveV3c($xx, $m, $cm, $i, $vs, $succ, $len, 0);
		}
	}
}


function solveV3c(&$xx, &$m, &$cm, $v, &$vs, &$succ, &$len, $l) {
	$i; $j; $k; $a; $b; $c; $d;

	$vs[$l] = $v;

	if ($len == 0) {
		$succ += 1;
		return;
	}

	for ($i = $v, $j = 0; $j < count($cm[$i]); $j++)  {
		$k = $cm[$i][$j];
		$a = $m[$i][$k];
		if ($a > 0) {
			$m[$i][$k] = $a - 1;
			$b = $m[$k][$i];
			$c = ($b > 0 ? $b - 1 : 0);

			if ($c >= 0) {
				$d = $len;
				$m[$k][$i] = $c;
				if ($b > 0) $len -= 2;
				else $len -= 1;
				solveV3c($xx, $m, $cm, $k, $vs, $succ, $len, $l+1);
				$m[$k][$i] = $b;
				$len = $d;
				$l -= 1;
			}
			$m[$i][$k] = $a;
		}
	}
}




function solve3d($xx, $m, $len, &$succ) {
	$cm = create_companion($xx, $m, $len);
	for ($i = 1; $i < $xx; $i++) {
		$l = 0;
		if(isset($cm[$i])) {
			solveV3d($xx, $m, $cm, $i, $succ, $len, $l);
		}
	}
}

function solveV3d(&$xx, &$m, &$cm, &$v, &$succ, &$len, &$l) {

	if ($len == 0) {
		$succ += 1;
		return;
	}

	$zv = $v;
	for ($i = $zv, $j = 0; $j < count($cm[$i]); $j++)  {
		$k = $cm[$i][$j];
		$a = $m[$i][$k];
		if ($a > 0) {
			$m[$i][$k] = $a - 1;
			$b = $m[$k][$i];
			$c = ($b > 0 ? $b - 1 : 0);

			if ($c >= 0) {
				$d = $len;
				$m[$k][$i] = $c;
				if ($b > 0) { $len -= 2; }
				else { --$len; }
				$zl = $l+1;
				solveV3d($xx, $m, $cm, $k, $succ, $len, $zl);
				$zl = $l;
				$m[$k][$i] = $b;
				$len = $d;
			}
			$m[$i][$k] = $a;
		}
	}
	return;
}







function solve9000($xx, $m, $len, &$succ) {
	$i = $j = $depth = 0;
	$a = array_fill(0, V, 0);
	$b = array_fill(0, V, 0);
	$c = array_fill(0, V, 0);
	$d = array_fill(0, V, 0);
	$k = array_fill(0, V, 0);
	$cm = create_companion($xx, $m, $len);
	for ($i = 1; $i < $xx; $i++) {
		if(isset($cm[$i])) {
			solveV9000($xx, $m, $cm, $i, $succ, $len, 0, $depth, $i, 0, $a, $b, $c, $d, $k);
		}
	}
}

function solveV9000(&$xx, &$m, &$cm, $v, &$succ, &$len, $l, &$depth, $i, $j, &$a, &$b, &$c, &$d, &$k) {

	if ($len == 0) {
		$succ += 1;
		return;
	}

	++$depth;

	for (; $j < count($cm[$i]); $j++)  {
		$k[$depth] = $cm[$i][$j];
		$a[$depth] = $m[$i][$k[$depth]];
		if ($a[$depth] > 0) {
			$m[$i][$k[$depth]] = $a[$depth] - 1;
			$b[$depth] = $m[$k[$depth]][$i];
			$c[$depth] = ($b[$depth] > 0 ? $b[$depth] - 1 : 0);

			if ($c[$depth] >= 0) {
				$d[$depth] = $len;
				$m[$k[$depth]][$i] = $c[$depth];
				if ($b[$depth] > 0) { $len -= 2; }
				else { --$len; }
				solveV9000($xx, $m, $cm, $k[$depth], $succ, $len, $l+1, $depth, $k[$depth], 0, $a, $b, $c, $d, $k);
				$m[$k[$depth]][$i] = $b[$depth];
				$len = $d[$depth];
			}
			$m[$i][$k[$depth]] = $a[$depth];
		}
	}

	--$depth;

	return;
}



function solve9001($xx, $m, $len, &$succ) {
	$i = $j = $depth = $a = $b = $c = $d = $k = 0;
	$cm = create_companion($xx, $m, $len);
	for ($i = 1; $i < $xx; $i++) {
		if(isset($cm[$i])) {
			solveV9001($xx, $m, $cm, $i, $succ, $len, 0, $i, $j, $a, $b, $c, $d, $k);
		}
	}
}

function solveV9001(&$xx, &$m, &$cm, $v, &$succ, &$len, $l, $i, $j, $a, $b, $c, $d, $k) {

	if ($len == 0) {
		$succ += 1;
		return;
	}

	for (; $j < count($cm[$i]); $j++)  {
		$k = $cm[$i][$j];
		$a = $m[$i][$k];
		if ($a > 0) {
			$m[$i][$k] = $a - 1;
			$b = $m[$k][$i];
			$c = ($b > 0 ? $b - 1 : 0);

			if ($c >= 0) {
				$d = $len;
				$m[$k][$i] = $c;
				if ($b > 0) { $len -= 2; }
				else { --$len; }
				solveV9001($xx, $m, $cm, $k, $succ, $len, $l+1, $k, 0, $a, $b, $c, $d, $k);
				$m[$k][$i] = $b;
				$len = $d;
			}
			$m[$i][$k] = $a;
		}
	}

	return;
}


global $zi;
global $zj;
global $za;
global $zb;
global $zc;
global $zd;
global $zk;
global $zsuc;
global $zi;
global $zj;
global $zl;
global $zv;
global $zm;
global $zcm;
global $zlen;
global $zxx;

function solve9002($xx, $m, $len, &$succ) {

global $zi;
global $zj;
global $za;
global $zb;
global $zc;
global $zd;
global $zk;
global $zsuc;
global $zv;
global $zm;
global $zcm;
global $zlen;
global $zxx;
global $zdepth;
global $zsuc;

	$za = array_fill(0, V, 0);
	$zb = array_fill(0, V, 0);
	$zc = array_fill(0, V, 0);
	$zd = array_fill(0, V, 0);
	$zk = array_fill(0, V, 0);
	$zi = array_fill(0, V, 0);
	$zj = array_fill(0, V, 0);

	$cm = create_companion($xx, $m, $len);
	$zlen = $len;
	$zcm = $cm;
	$zm = $m;
	$zxx = $xx;
	$zsuc = 0;
	for ($i = 1; $i < $xx; $i++) {
		if(isset($cm[$i])) {
			$zdepth = 0;
			$zi[$zdepth] = $i;
			$zlen = $len;
			$zv = $i;
			solveV9002();
		}
	}

	$succ = $zsuc;
}

function solveV9002() {

global $zi;
global $zj;
global $za;
global $zb;
global $zc;
global $zd;
global $zk;
global $zsuc;
global $zv;
global $zm;
global $zcm;
global $zlen;
global $zxx;
global $zsuc;
global $zdepth;

	if ($zlen == 0) {
		$zsuc += 1;
		return;
	}

	++$zdepth;

	for ($zi[$zdepth] = $zv, $zj[$zdepth] = 0; $zj[$zdepth] < count($zcm[$zi[$zdepth]]); $zj[$zdepth]++)  {
		$zk[$zdepth] = $zcm[$zi[$zdepth]][$zj[$zdepth]];
		$za[$zdepth] = $zm[$zi[$zdepth]][$zk[$zdepth]];
		if ($za[$zdepth] > 0) {
			$zm[$zi[$zdepth]][$zk[$zdepth]] = $za[$zdepth] - 1;
			$zb[$zdepth] = $zm[$zk[$zdepth]][$zi[$zdepth]];
			$zc[$zdepth] = ($zb[$zdepth] > 0 ? $zb[$zdepth] - 1 : 0);

			if ($zc[$zdepth] >= 0) {
				$zd[$zdepth] = $zlen;
				$zm[$zk[$zdepth]][$zi[$zdepth]] = $zc[$zdepth];
				if ($zb[$zdepth] > 0) { $zlen -= 2; }
				else { $zlen -= 1; }
				$zv = $zk[$zdepth];
				solveV9002();
				$zm[$zk[$zdepth]][$zi[$zdepth]] = $zb[$zdepth];
				$zlen = $zd[$zdepth];
			}
			$zm[$zi[$zdepth]][$zk[$zdepth]] = $za[$zdepth];
		}
	}

	$zdepth--;

	return;
}







global $zza;

function solve9003($xx, $m, $len, &$succ) {

	$cm = create_companion($xx, $m, $len);

	global $zdepth;
	global $zza;
	$ttt = array (
		'zi' => 0,
		'zj' => 0,
		'za' => 0,
		'zb' => 0,
		'zc' => 0,
		'zd' => 0,
		'zk' => 0,
		'zsuc' => 0,
		'zv' => 0,
		'zm' => $m,
		'zcm' => $cm,
		'zlen' => $len,
		'zxx' => $xx,
		'zdepth' => 0,
	);
	$zza = array_fill(0, 50, $ttt);
	for ($i = 1; $i < $xx; $i++) {
		if(isset($cm[$i])) {
			$zdepth = 0;
			$zza[0]['$zi'] = $i;
			$zza[0]['$zv'] = $i;
			solveV9003();
		}
	}

	$succ = $zsuc;
}

function solveV9003() {

	global $zza;
	global $zdepth;

	echo "hi $zdepth\n";
	if ($zza[0]['zlen'] == 0) {
		$zza[0]['zsuc'] += 1;
		return;
	}

	++$zdepth;

	// all this to try and avoid a large memset each call.. so lame. i give up, php is crap.
	
	for ($zza[$zdepth]['i'] = $zza[$zdepth]['zv'], $zj[$zdepth] = 0; $zj[$zdepth] < count($zcm[$zi[$zdepth]]); $zj[$zdepth]++)  {
		$zk[$zdepth] = $zcm[$zi[$zdepth]][$zj[$zdepth]];
		$za[$zdepth] = $zm[$zi[$zdepth]][$zk[$zdepth]];
		if ($za[$zdepth] > 0) {
			$zm[$zi[$zdepth]][$zk[$zdepth]] = $za[$zdepth] - 1;
			$zb[$zdepth] = $zm[$zk[$zdepth]][$zi[$zdepth]];
			$zc[$zdepth] = ($zb[$zdepth] > 0 ? $zb[$zdepth] - 1 : 0);

			if ($zc[$zdepth] >= 0) {
				$zd[$zdepth] = $zlen;
				$zm[$zk[$zdepth]][$zi[$zdepth]] = $zc[$zdepth];
				if ($zb[$zdepth] > 0) { $zlen -= 2; }
				else { $zlen -= 1; }
				$zv = $zk[$zdepth];
				solveV9003();
				$zm[$zk[$zdepth]][$zi[$zdepth]] = $zb[$zdepth];
				$zlen = $zd[$zdepth];
			}
			$zm[$zi[$zdepth]][$zk[$zdepth]] = $za[$zdepth];
		}
	}

	$zdepth--;

	return;
}




function solve81($xx, $m, $len, &$succ) {
	$vs = array_fill(0, V, 0);
	$cm = create_companion($xx, $m, $len);
	for ($i = 1; $i < $xx; $i++) {
		if(isset($cm[$i])) {
			solveV81($xx, $m, $cm, $i, $vs, $succ, $len);
		}
	}
}



function solveV81($xx, $m, $cm, $v, $vs, &$succ, $len) {
	$i = $j = $k = $r = $s = $l = 0;
	$a = $b = $c = $d = $e = 0;
	$x = $y = $inv = $vi = $cmi = $t = $z = $g_i = 0;

	$x = array_fill(0, V, 0);
	$y = array_fill(0, V, 0);
	$inv = array_fill(0, V, 0);
	$vs = array_fill(0, V, 0);
	$vi = array_fill(0, V, 0);

	$l = $len;

	while(true) {
		$a = $cm[$v][$i];
		$b = $m[$v][$a];
		if ($b > 0) {
			$c = $m[$a][$v];
			if ($c > 0) {
				$t = true;
				$m[$a][$v] -= 1;
				$l = $l - 2;
			} else {
				$t = false;
				$l = $l - 1;
			}
			$m[$v][$a] -= 1;
			$x[$g_i] = $v;
			$y[$g_i] = $a;
			$inv[$g_i] = $t;
			$vi[$g_i] = $i;
			$vs[$g_i] = $v;
			$g_i+=1;

			$z = $cm[$v][$i];
			$i = $i + 1;
			$v = $cm[$v][$i-1];
			$i = 0;
		} else if(sizeof($cm[$v]) > $i) {
			$i += 1;
			continue;
		} else {
			if ($l == 0) {
				$succ += 1;
			}
			$g_i -= 1;
			$a = $x[$g_i];
			$b = $y[$g_i];
			if(!isset($a) || !isset($b)) break;
			$m[$a][$b] += 1;
			$c = $inv[$g_i];
			$l += 1;
			if ($c == true) {
				$m[$b][$a] += 1;
				$l += 1;
			}
			$v = $x[$g_i];
			$i = $vi[$g_i] + 1;
		}
	}
}


/* ------------------------------------------------------------------- */

$idx = $argv[1];
$m = create_matrix(XX);
$len = 0;
$succ = 0;

for ($i = 2; $i < $argc; $i++) {
	$arg = $argv[$i];
	$sa = split(" ", $arg);
	$x = $sa[0];
	$y = $sa[1];
	$e = $m[$x][$y];
	$e = $e + 1;
	$m[$x][$y] = $e;
	$len = $len + 1;
}

switch ($idx) {
	case "3c": {
		solve3c(XX, $m, $len, $succ);
		break;
	}
	case "3d" : {
		solve3d(XX, $m, $len, $succ);
		break;
	}
	case "81": {
		solve81(XX, $m, $len, $succ);
		break;
	}
	case "9000" : {
		solve9000(XX, $m, $len, $succ);
		break;
	}
	case "9001" : {
		solve9001(XX, $m, $len, $succ);
		break;
	}
	case "9002" : {
		solve9002(XX, $m, $len, $succ);
		break;
	}
	case "9003" : {
		solve9003(XX, $m, $len, $succ);
		break;
	}
	default: {
		echo "Invalid index";
		exit (0);
	}
}

echo "successes: " . $succ . "\n";
