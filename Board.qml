import QtQuick 2.0

Item {

	width: 512
	height: 512

	property color light: "#d1c4b5"
	property color dark: "#75634e"

	// First rank
	Square {
		id: a1

		x: 0 * 64
		y: 7 * 64

		squareColor: dark

		rank: 1
		file: 1

		piece: 3
	}

	Square {
		id: a2

		x: 1 * 64
		y: 7 * 64

		squareColor: light

		rank: 1
		file: 2

		piece: 5
	}

	Square {
		id: a3

		x: 2 * 64
		y: 7 * 64

		squareColor: dark

		rank: 1
		file: 3

		piece: 4
	}

	Square {
		id: a4

		x: 3 * 64
		y: 7 * 64

		squareColor: light

		rank: 1
		file: 4

		piece: 2
	}

	Square {
		id: a5

		x: 4 * 64
		y: 7 * 64

		squareColor: dark

		rank: 1
		file: 5

		piece: 1
	}

	Square {
		id: a6

		x: 5 * 64
		y: 7 * 64

		squareColor: light

		rank: 1
		file: 6

		piece: 4
	}

	Square {
		id: a7

		x: 6 * 64
		y: 7 * 64

		squareColor: dark

		rank: 1
		file: 7

		piece: 5
	}

	Square {
		id: a8

		x: 7 * 64
		y: 7 * 64

		squareColor: light

		rank: 1
		file: 8

		piece: 3
	}
}
