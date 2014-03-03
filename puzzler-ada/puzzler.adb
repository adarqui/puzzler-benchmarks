with Ada.Command_Line;
with Ada.Text_IO;
with Ada.Strings.Unbounded;
with Ada.Characters.Latin_1;
with Ada.Task_Identification;
with GNAT.String_Split;
use Ada;
use GNAT;


procedure Puzzler is

	type Vertex is range 1 .. 20;
	type VertexResults is array (Natural range <>) of Integer;
	subtype VertexLength is Integer;
	type Matrix is array (Natural range 0 .. 20, Natural range 0 .. 20) of Integer;


	function SolveV0 (M : in Matrix; V : in Integer; L : in Integer; VR : in VertexResults; VL : VertexLength) return Integer is
		M2 : Matrix;
		VR2 : VertexResults := VR;
		VL2 : VertexLength := VL;
		L2 : Integer;
		A, B, C, D, I : Integer;
		R : Integer := 0;
	begin

		L2 := L;

		VR2(VL2) := V;
		if (L = 0) then
			return 1;
		end if;

		M2 := M;

		I := V;
		For J in 1 .. 20 loop
			A := M2(I,J);
			if (A > 0) then
				M2(I,J) := A - 1;
				B := M2(J,I);
				C := B - 1;
				D := L;
				M2(J,I) := C;

				if (B > 0) then
					L2 := L2 - 2;
				else
					L2 := L2 - 1;
				end if;

				R := R + SolveV0(M2, J, L2, VR2, VL2 + 1);
				M2(J,I) := B;
				L2 := D;
				M2(I,J) := A;
			end if;
		end loop;
		return R;
	end SolveV0;


	procedure Solve0 (M : in Matrix; L : in Integer; R : in out Integer) is
		VR : VertexResults (0 .. 30) := (others => 0);
		VL : VertexLength := 0;
	begin
		For I in 1 .. 20 loop
			R := R + SolveV0 (M, I, L, VR, VL);
		end loop;
	end Solve0;


	procedure SolveV1 (M : in out Matrix; V : in Integer; L : in out Integer; R : in out Integer; VR : in out VertexResults; VL : in out VertexLength) is
		A, B, C, D, I : Integer;
	begin

		VR(VL) := V;

		if (L = 0) then
			R := R + 1;
			return;
		end if;

		I := V;
		For J in 1 .. 20 loop
			A := M(I,J);
			if (A > 0) then
				M(I,J) := A - 1;
				B := M(J,I);
				C := B - 1;
				D := L;
				M(J,I) := C;

				if (B > 0) then
					L := L - 2;
				else
					L := L - 1;
				end if;

				SolveV1(M, J, L, R, VR, VL);
				M(J,I) := B;
				L := D;
				M(I,J) := A;
			end if;
		end loop;
	end SolveV1;

	procedure Solve1 (M : in out Matrix; L : in out Integer; R : in out Integer) is
		VR : VertexResults (0 .. 30) := (others => 0);
		VL : VertexLength := 0;
	begin
		For I in 1 .. 20 loop
			SolveV1 (M, I, L, R, VR, VL);
		end loop;
	end Solve1;

	function Parse_Args (Len : in out Integer) return Matrix is
		SU : Strings.Unbounded.Unbounded_String;
		X, Y : Vertex;
		Z : Integer;
		Subs : String_Split.Slice_Set;
		Seps : constant String := " " & Characters.Latin_1.HT;
		AdjM : Matrix := (others => (others => 0));
	begin
		for Arg in 2..Command_Line.Argument_Count loop
			SU := Strings.Unbounded.To_Unbounded_String (Command_Line.Argument(Arg));
			String_Split.Create(S => Subs,
				From => Strings.Unbounded.To_String(SU),
				Separators => Seps,
				Mode => String_Split.Multiple);

			X := Vertex'Value(String_Split.Slice(Subs, 1));
			Y := Vertex'Value(String_Split.Slice(Subs, 2));

			Z := AdjM(Standard.Integer'Val(X),Standard.Integer'Val(Y));
			AdjM(Standard.Integer'Val(X),Standard.Integer'Val(Y)) := Z + 1;

			Len := Len + 1;

		end loop;
		return AdjM;
	end Parse_Args;

	X : Matrix;

	L, R : Integer := 0;

begin
	X := Parse_Args(L);
	
	case Integer'Value(Command_Line.Argument(1)) is
		when 0 => Solve0 (X, L, R);
		when 1 => Solve1 (X, L, R);
		when others => Task_Identification.Abort_Task(Task_Identification.Current_Task);
	end case;
	Text_IO.Put_Line("Successes: " & Integer'Image(R));
end Puzzler;
