:- lib(lists).
:- lib(fd).
:- lib(fd_search).

hay(Trusses):- solve(Trusses).
	
solve(Trusses):-
	Trusses = [T1,T2,T3,T4,T5],
	TrussDouble = [T1+T2, T1+T3, T1+T4, T1+T5, T2+T3, T2+T4, T2+T5, T3+T4, T3+T5, T4+T5],
	
	Trusses :: 1..120,
	T1+T2 #>= 110,
	T1+T2 #=< 121,
	T1+T2 #\= 119,
	T1+T2 #\= 111,

	T1+T3 #>= 110,
	T1+T3 #=< 121,
	T1+T3 #\= 119,
	T1+T3 #\= 111,
	
	T1+T4 #>= 110,
	T1+T4 #=< 121,
	T1+T4 #\= 119,
	T1+T4 #\= 111,


	T1+T5 #>= 110,
	T1+T5 #=< 121,
	T1+T5 #\= 119,
	T1+T5 #\= 111,

	T2+T3 #>= 110,
	T2+T3 #=< 121,
	T2+T3 #\= 119,
	T2+T3 #\= 111,

	T2+T4 #>= 110,
	T2+T4 #=< 121,
	T2+T4 #\= 119,
	T2+T4 #\= 111,

	T2+T5 #>= 110,
	T2+T5 #=< 121,
	T2+T5 #\= 119,
	T2+T5 #\= 111,

	T3+T4 #>= 110,
	T3+T4 #=< 121,
	T3+T4 #\= 119,
	T3+T4 #\= 111,

	T3+T5 #>= 110,
	T3+T5 #=< 121,
	T3+T5 #\= 119,
	T3+T5 #\= 111,

	T4+T5 #>= 110,
	T4+T5 #=< 121,	
	T4+T5 #\= 119,
	T4+T5 #\= 111,

	1156 #=T1+T2+T1+T3+T1+T4+T1+T5+T2+T3+T2+T4+T2+T5+T3+T4+T3+T5+T4+T5,
	
	alldifferent(TrussDouble),
	
	labeling(Trusses),
	
	printf("Truss 1: %d lbs.\n", [T1]),
	printf("Truss 2: %d lbs.\n", [T2]),
	printf("Truss 3: %d lbs.\n", [T3]),
	printf("Truss 4: %d lbs.\n", [T4]),
	printf("Truss 5: %d lbs.\n", [T5]).