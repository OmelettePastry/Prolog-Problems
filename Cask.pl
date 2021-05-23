:- lib(lists).
:- lib(fd).
:- lib(fd_search).

wine(Casks):- solve(Casks).

solve(Casks):- 

	Casks = [F1, F2, F3, F4, F5, TQ1, TQ2, TQ3, TQ4, TQ5, H1, H2, H3, H4, H5, Q1, Q2, Q3, Q4, Q5, E1, E2, E3, E4, E5],
	
	Casks :: 1..9,
	
	Nephew1 = [F1, TQ1, H1, Q1, E1],
	Nephew2 = [F2, TQ2, H2, Q2, E2],
	Nephew3 = [F3, TQ3, H3, Q3, E3],
	Nephew4 = [F4, TQ4, H4, Q4, E4],
	Nephew5 = [F5, TQ5, H5, Q5, E5],
	
	45 #= F1 + F2 + F3 + F4 + F5 + TQ1 + TQ2 + TQ3 + TQ4 + TQ5 + H1 + H2 + H3 + H4 + H5 + Q1 + Q2 + Q3 + Q4 + Q5 + E1 + E2 + E3 + E4 + E5,
	
	F1 + TQ1 + H1 + Q1 + E1 #= F2 + TQ2 + H2 + Q2 + E2,
	F3 + TQ3 + H3 + Q3 + E3 #= F2 + TQ2 + H2 + Q2 + E2,
	F4 + TQ4 + H4 + Q4 + E4 #= F2 + TQ2 + H2 + Q2 + E2,
	F5 + TQ5 + H5 + Q5 + E5 #= F2 + TQ2 + H2 + Q2 + E2,
	
	(F1 * 4) + (TQ1 * 3) + (H1 * 2) + Q1 #= (F2 * 4) + (TQ2 * 3) + (H2 * 2) + Q2,
	(F3 * 4) + (TQ3 * 3) + (H3 * 2) + Q3 #= (F2 * 4) + (TQ2 * 3) + (H2 * 2) + Q2,
	(F4 * 4) + (TQ4 * 3) + (H4 * 2) + Q4 #= (F2 * 4) + (TQ2 * 3) + (H2 * 2) + Q2,
	(F5 * 4) + (TQ5 * 3) + (H5 * 2) + Q5 #= (F2 * 4) + (TQ2 * 3) + (H2 * 2) + Q2,

	labeling(Casks),
	
	Nephew1 \= Nephew2,
	Nephew1 \= Nephew3,
	Nephew1 \= Nephew4,
	Nephew1 \= Nephew5,
	Nephew2 \= Nephew3,
	Nephew2 \= Nephew4,
	Nephew2 \= Nephew5,
	Nephew3 \= Nephew4,
	Nephew3 \= Nephew5,
	Nephew4 \= Nephew5,

	print("Nephew #  |  Full  |  3/4  |  Half  |  1/4  |  Empty\n"),
	printf("   #1     |   %3d  |  %3d  |  %3d   |  %3d  |  %3d\n", [F1, TQ1, H1, Q1, E1]),
	printf("   #2     |   %3d  |  %3d  |  %3d   |  %3d  |  %3d\n", [F2, TQ2, H2, Q2, E2]),
	printf("   #3     |   %3d  |  %3d  |  %3d   |  %3d  |  %3d\n", [F3, TQ3, H3, Q3, E3]),
	printf("   #4     |   %3d  |  %3d  |  %3d   |  %3d  |  %3d\n", [F4, TQ4, H4, Q4, E4]),
	printf("   #5     |   %3d  |  %3d  |  %3d   |  %3d  |  %3d\n", [F5, TQ5, H5, Q5, E5]).
    
	