import QtQuick 2.0

Item {
	property color squareColor
	property int rank
	property int file
	property int piece

	Rectangle {
		width: 64
		height: 64
		color: squareColor

		Image {
			anchors.fill: parent
			source: if (piece == 1) {
						"pieces/K.png"
					} else if (piece == 2) {
						"pieces/Q.png"
					} else if (piece == 3) {
						"pieces/R.png"
					} else if (piece == 4) {
						"pieces/B.png"
					} else if (piece == 5) {
						"pieces/N.png"
					} else if (piece == 6) {
						"pieces/P.png"
					} else if (piece == -1) {
						"pieces/k.png"
					} else if (piece == -2) {
						"pieces/q.png"
					} else if (piece == -3) {
						"pieces/r.png"
					} else if (piece == -4) {
						"pieces/b.png"
					} else if (piece == -5) {
						"pieces/n.png"
					} else if (piece == -6) {
						"pieces/p.png"
					} else {

					}
		}
	}
}
