package main

import (
	"log"
	"os"
	"fmt"
)

const (
	XX = 20
	YY = 20
)

type Matrix struct {
	Len int8
	E[XX][YY] int8
	VLen int8
}

type Edge struct {
	X int8
	Y int8
}

type Results struct {
	Succ int
}

type VertexString [50]int8

func Print_Matrix(A *Matrix) {
	for i := 0; i < XX; i++ {
		for j := 0; j < YY; j++ {
			fmt.Printf("%.2d ", A.E[i][j])
		}
		fmt.Println()
	}
}


func S2Edge(S string) (*Edge) {
	e := new(Edge)

	_, err := fmt.Sscanf(S, "%d %d", &e.X, &e.Y)
	if err != nil {
		log.Fatal("S2Edge: Error")
	}

	return e
}

func Build_Matrix(S []string) (*Matrix) {
	m := new(Matrix)

	for i := range(S) {
		if i < 2 {
			continue
		}
		e := S2Edge(S[i])
		m.E[e.X][e.Y] += 1
		m.Len += 1
	}

	return m
}



func Solve0(A *Matrix, Suc *int) {
	var i int8
	*Suc = 0
	vs := VertexString{}
	r := Results{}
	for i = 1; i < XX ; i++ {
		*Suc = *Suc + SolveV0(*A, i, vs, r)
	}
}


func SolveV0(m Matrix, V int8, VS VertexString, R Results) (int) {
	var i, j int8
	var a, b, c, d int8
	r := 0

	VS[m.VLen] = V;

	if m.Len == 0 {
		R.Succ += 1;
		return 1;
	}

	j = 1
	for i = V; j < YY; j++ {
		a = m.E[i][j];
		if a > 0 {

			m.E[i][j] = a - 1
			b = m.E[j][i]

			if b > 0 {
				c = b - 1
			} else {
				c = 0
			}

			d = m.Len;
			m.E[j][i] = c
			if b > 0 {
				 m.Len -= 2
			} else {
				m.Len -= 1
			}

			m.VLen += 1
			r = r + SolveV0(m, j, VS, R)
			m.VLen -= 1
			m.E[j][i] = b
			m.Len = d
			m.E[i][j] = a
		}
	}
	return r
}




func Solve1(A *Matrix, Suc *int) {
	var i int8
	vs := new(VertexString)
	r := new(Results)
	for i = 1 ; i < XX ; i++ {
		SolveV1(A, i, vs, r)
	}
	*Suc = r.Succ;
}


func Solve2b(A *Matrix, Suc *int) {
	var i, j int8
	var succ int
		
	w := make(chan Results, 50)
	for i = 1 ; i < XX ; i++ {
		go func(c chan Results, z int8) {
			a := *A
			vs := new(VertexString)
			r := new(Results)
			SolveV1(&a, z, vs, r)
			w <- *r
		}(w,i)
	}
	j = 1
	for r := range w {
		succ += r.Succ
		if j == XX - 1 {
			break
		}
		j++
	}
	*Suc = succ
}


func SolveV1(m *Matrix, V int8, VS *VertexString, R *Results) {
	var i, j int8
	var a, b, c, d int8

	VS[m.VLen] = V;

	if m.Len == 0 {
		R.Succ += 1;
		return;
	}

	j = 1
	for i = V; j < YY; j++ {
		a = m.E[i][j];
		if a > 0 {

			m.E[i][j] = a - 1
			b = m.E[j][i]

			if b > 0 {
				c = b - 1
			} else {
				c = 0
			}

			d = m.Len;
			m.E[j][i] = c
			if b > 0 {
				 m.Len -= 2
			} else {
				m.Len -= 1
			}

			m.VLen += 1
			SolveV1(m, j, VS, R)
			m.VLen -= 1
			m.E[j][i] = b
			m.Len = d
			m.E[i][j] = a
		}
	}
}

func main() {
	r := 0

	log.Printf("puzzler-go");

	idx := os.Args[1]
	m := new(Matrix)

	if len(os.Args) > 2 {
		m = Build_Matrix(os.Args);
	} else {
		log.Fatal("./puzzler-go {0..} <EDGES>");
	}

	switch(idx) {
		case "0": {
			Solve0(m, &r);
		}
		case "1": {
			Solve1(m, &r);
		}
		case "2b": {
			Solve2b(m, &r);
		}
		default : {
			log.Fatal("idx not supported")
		}
	}

	log.Printf("successes: %d\n", r)

}
