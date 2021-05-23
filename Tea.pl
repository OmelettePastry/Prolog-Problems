:- lib(lists).
:- lib(fd).
:- lib(fd_search).

tea(Teas):- solve(Teas).
	
solve(Teas):-
	Teas = [E,I,C],
	
	Teas :: 0..20,
	
	20 #= E + I + C,
	
	% 20 lbs of tea at 28.5 pence per pound = 570 total pence
	570 #= Teas*[30,27,21],

	minimize(labeling(Teas),E),
	
	printf("Excellent Tea         : %d lbs.\n", [E]),
	printf("Slightly Inferior Tea : %d lbs.\n", [I]),
	printf("Cheap Tea             : %d lbs.", [C]).