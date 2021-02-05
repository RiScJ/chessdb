import QtQuick 2.0

Item {

	width: 512
	height: 512

	property color light: "#d1c4b5"
	property color dark: "#75634e"

	property var squareArray: [a1, b1, c1, d1, e1, f1, g1, h1, a2, b2, c2, d2, e2, f2, g2, h2, a3, b3, c3, d3, e3, f3, g3, h3, a4, b4, c4, d4, e4, f4, g4, h4, a5, b5, c5, d5, e5, f5, g5, h5, a6, b6, c6, d6, e6, f6, g6, h6, a7, b7, c7, d7, e7, f7, g7, h7, a8, b8, c8, d8, e8, f8, g8, h8]
	signal boardEvent(int f, int r)

	// First rank
	Square {
		id: a1

		lightColor: light
		darkColor: dark

		rank: 1
		file: 1

		piece: 3

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: b1

		lightColor: light
		darkColor: dark

		rank: 1
		file: 2

		piece: 5

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: c1

		lightColor: light
		darkColor: dark

		rank: 1
		file: 3

		piece: 4

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: d1

		lightColor: light
		darkColor: dark

		rank: 1
		file: 4

		piece: 2

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: e1

		lightColor: light
		darkColor: dark

		rank: 1
		file: 5

		piece: 1

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: f1

		lightColor: light
		darkColor: dark

		rank: 1
		file: 6

		piece: 4

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: g1

		lightColor: light
		darkColor: dark

		rank: 1
		file: 7

		piece: 5

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: h1

		lightColor: light
		darkColor: dark

		rank: 1
		file: 8

		piece: 3

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	// Second rank
	Square {
		id: a2

		lightColor: light
		darkColor: dark

		rank: 2
		file: 1

		piece: 6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: b2

		lightColor: light
		darkColor: dark

		rank: 2
		file: 2

		piece: 6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: c2

		lightColor: light
		darkColor: dark

		rank: 2
		file: 3

		piece: 6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: d2

		lightColor: light
		darkColor: dark

		rank: 2
		file: 4

		piece: 6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: e2

		lightColor: light
		darkColor: dark

		rank: 2
		file: 5

		piece: 6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: f2

		lightColor: light
		darkColor: dark

		rank: 2
		file: 6

		piece: 6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: g2

		lightColor: light
		darkColor: dark

		rank: 2
		file: 7

		piece: 6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: h2

		lightColor: light
		darkColor: dark

		rank: 2
		file: 8

		piece: 6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	// Third rank
	Square {
		id: a3

		lightColor: light
		darkColor: dark

		rank: 3
		file: 1

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: b3

		lightColor: light
		darkColor: dark

		rank: 3
		file: 2

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: c3

		lightColor: light
		darkColor: dark

		rank: 3
		file: 3

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: d3

		lightColor: light
		darkColor: dark

		rank: 3
		file: 4

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: e3

		lightColor: light
		darkColor: dark

		rank: 3
		file: 5

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: f3

		lightColor: light
		darkColor: dark

		rank: 3
		file: 6

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: g3

		lightColor: light
		darkColor: dark

		rank: 3
		file: 7

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: h3

		lightColor: light
		darkColor: dark

		rank: 3
		file: 8

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	// Fourth rank
	Square {
		id: a4

		lightColor: light
		darkColor: dark

		rank: 4
		file: 1

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: b4

		lightColor: light
		darkColor: dark

		rank: 4
		file: 2

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: c4

		lightColor: light
		darkColor: dark

		rank: 4
		file: 3

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: d4

		lightColor: light
		darkColor: dark

		rank: 4
		file: 4

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: e4

		lightColor: light
		darkColor: dark

		rank: 4
		file: 5

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: f4

		lightColor: light
		darkColor: dark

		rank: 4
		file: 6

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: g4

		lightColor: light
		darkColor: dark

		rank: 4
		file: 7

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: h4

		lightColor: light
		darkColor: dark

		rank: 4
		file: 8

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	// Fifth rank
	Square {
		id: a5

		lightColor: light
		darkColor: dark

		rank: 5
		file: 1

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: b5

		lightColor: light
		darkColor: dark

		rank: 5
		file: 2

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: c5

		lightColor: light
		darkColor: dark

		rank: 5
		file: 3

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: d5

		lightColor: light
		darkColor: dark

		rank: 5
		file: 4

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: e5

		lightColor: light
		darkColor: dark

		rank: 5
		file: 5

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: f5

		lightColor: light
		darkColor: dark

		rank: 5
		file: 6

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: g5

		lightColor: light
		darkColor: dark

		rank: 5
		file: 7

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: h5

		lightColor: light
		darkColor: dark

		rank: 5
		file: 8

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	// Sixth rank
	Square {
		id: a6

		lightColor: light
		darkColor: dark

		rank: 6
		file: 1

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: b6

		lightColor: light
		darkColor: dark

		rank: 6
		file: 2

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: c6

		lightColor: light
		darkColor: dark

		rank: 6
		file: 3

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: d6

		lightColor: light
		darkColor: dark

		rank: 6
		file: 4

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: e6

		lightColor: light
		darkColor: dark

		rank: 6
		file: 5

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: f6

		lightColor: light
		darkColor: dark

		rank: 6
		file: 6

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: g6

		lightColor: light
		darkColor: dark

		rank: 6
		file: 7

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: h6

		lightColor: light
		darkColor: dark

		rank: 6
		file: 8

		piece: 0

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	// Seventh rank
	Square {
		id: a7

		lightColor: light
		darkColor: dark

		rank: 7
		file: 1

		piece: -6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: b7

		lightColor: light
		darkColor: dark

		rank: 7
		file: 2

		piece: -6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: c7

		lightColor: light
		darkColor: dark

		rank: 7
		file: 3

		piece: -6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: d7

		lightColor: light
		darkColor: dark

		rank: 7
		file: 4

		piece: -6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: e7

		lightColor: light
		darkColor: dark

		rank: 7
		file: 5

		piece: -6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: f7

		lightColor: light
		darkColor: dark

		rank: 7
		file: 6

		piece: -6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: g7

		lightColor: light
		darkColor: dark

		rank: 7
		file: 7

		piece: -6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: h7

		lightColor: light
		darkColor: dark

		rank: 7
		file: 8

		piece: -6

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	// Eighth rank
	Square {
		id: a8

		lightColor: light
		darkColor: dark

		rank: 8
		file: 1

		piece: -3

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: b8

		lightColor: light
		darkColor: dark

		rank: 8
		file: 2

		piece: -5

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: c8

		lightColor: light
		darkColor: dark

		rank: 8
		file: 3

		piece: -4

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: d8

		lightColor: light
		darkColor: dark

		rank: 8
		file: 4

		piece: -1

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: e8

		lightColor: light
		darkColor: dark

		rank: 8
		file: 5

		piece: -2

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: f8

		lightColor: light
		darkColor: dark

		rank: 8
		file: 6

		piece: -4

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: g8

		lightColor: light
		darkColor: dark

		rank: 8
		file: 7

		piece: -5

		onSquareEvent: boardEvent(squareFile, squareRank)
	}

	Square {
		id: h8

		lightColor: light
		darkColor: dark

		rank: 8
		file: 8

		piece: -3

		onSquareEvent: boardEvent(squareFile, squareRank)
	}
}
