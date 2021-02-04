import QtQuick 2.12
import QtQuick.Window 2.12

Window {
	width: 1920
	height: 1080
	visible: true
	color: "#d1c0ab"
	title: qsTr("Chess Database")

	Rectangle {
		x: 500
		y: 150
		width: 552
		height: 552
		color: "#2d2112"

		Board {
			x: 20
			y: 20
		}
	}
}
