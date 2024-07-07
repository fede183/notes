.de title
.	nf
.	ps 25
.	B "\\$1"
..

.de subtitle
.	nf
.	SH
.	ps 18
.	B "\\$1"
.	SH
..

.de option
.	IP \[bu]
.	B "\\$1"
..

.de string
.PS
line 6i at 1,2
.PE
..

.de finger_on_string
.PS
circle "\\$1"
.PE
..

.de chord
.PS
for i = 1 to 3 do {
	for j = 1 to 6 do {
		circle rad 0.01 at (i - 1, j/2)
	}
	line from last circle to 6rd last circle
}
for i = 1 to 6 do {
	line 6i at (0, i/2)
}

define draw_finger
{
	x = $1
	y = $2

	for i = 1 to 3 do {
		for j = 1 to 6 do {
			if ( x == i && y == j ) then {
				circle rad 0.1 at (i - 0.5, j/2) "\\$3"
			}
		}
	}
}

draw_finger(1, 4, 1);
draw_finger(2, 3, 3);
draw_finger(2, 2, 2);
.PE
..
