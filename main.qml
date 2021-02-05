import QtQuick 2.12
import QtQuick.Window 2.12

Window {
	id: root
	width: 1920
	height: 1080
	visible: true
	color: "#d1c0ab"
	title: qsTr("Chess Database")

	property bool whoseTurn: true // true --> white ; false --> black
	property int moveNumber: 1 // starts at one

	property bool hasSelection: false // no piece is currently selected

	property bool canWhiteCastleLong: true
	property bool canWhiteCastleShort: true
	property bool canBlackCastleLong: true
	property bool canBlackCastleShort: true

	property color selectionColor: "#8bd6bf"

	property var selectedSquare
	property var nextSquare

	Rectangle {
		id: board_border
		x: 500
		y: 150
		width: 552
		height: 552
		color: "#2d2112"

		Board {
			id: board
			x: 20
			y: 20

			onBoardEvent: handleBoardEvent(f, r)
		}
	}

	function encodePiece(piece) {
		if (piece === " ") {
			return 0
		} else if (piece === "K") {
			return 1
		} else if (piece === "Q") {
			return 2
		} else if (piece === "R") {
			return 3
		} else if (piece === "B") {
			return 4
		} else if (piece === "N") {
			return 5
		} else if (piece === "P") {
			return 6
		} else if (piece === "k") {
			return -1
		} else if (piece === "q") {
			return -2
		} else if (piece === "r") {
			return -3
		} else if (piece === "b") {
			return -4
		} else if (piece === "n") {
			return -5
		} else if (piece === "p") {
			return -6
		}
	}

	function decodePiece(piece) {
		if (piece === 1) {
			return "K"
		} else if (piece === 2) {
			return "Q"
		} else if (piece === 3) {
			return "R"
		} else if (piece === 4) {
			return "B"
		} else if (piece === 5) {
			return "N"
		} else if (piece === 6) {
			return "P"
		} else if (piece === -1) {
			return "k"
		} else if (piece === -2) {
			return "q"
		} else if (piece === -3) {
			return "r"
		} else if (piece === -4) {
			return "b"
		} else if (piece === -5) {
			return "n"
		} else if (piece === -6) {
			return "p"
		} else {
			return " "
		}
	}

	function pieceType(piece) {
		if (piece === 1) {
			return "king"
		} else if (piece === 2) {
			return "queen"
		} else if (piece === 3) {
			return "rook"
		} else if (piece === 4) {
			return "bishop"
		} else if (piece === 5) {
			return "knight"
		} else if (piece === 6) {
			return "white pawn"
		} else if (piece === -1) {
			return "king"
		} else if (piece === -2) {
			return "queen"
		} else if (piece === -3) {
			return "rook"
		} else if (piece === -4) {
			return "bishop"
		} else if (piece === -5) {
			return "knight"
		} else if (piece === -6) {
			return "black pawn"
		} else {
			return " "
		}
	}

	// A square has been clicked.
	function handleBoardEvent(file, rank) {

		// If no square is currently selected...
		if (!hasSelection) {
			// Verify the clicked square is a viable selection, by checking
			// that the piece is the correct color (if there is a piece)
			if (validateSelection(file, rank)) {
				// If verified, select the square and color it to inform user
				selectedSquare = board.squareArray[file - 1 + (rank - 1) * 8]
				selectedSquare.squareColor = selectionColor
				hasSelection = true
			}
		} else {
			// A square is already selected. Either the next selected square
			// will be a new piece to move, a legal move, or an illegal move
			// An illegal move will deselect the selected piece
			if (validateSelection(file, rank)) {
				// The user has selected a different one of their pieces
				// (or the same, doesn't change the effect, though)
				// So we switch the selection to the most recent piece
				selectedSquare.squareColor = selectedSquare.staticColor
				selectedSquare = board.squareArray[file - 1 + (rank - 1) * 8]
				selectedSquare.squareColor = selectionColor
			} else if (isLegal(file, rank)) {
				nextSquare = board.squareArray[file - 1 + (rank - 1) * 8]
				nextSquare.piece = selectedSquare.piece
				selectedSquare.piece = encodePiece(" ")
				whoseTurn = !whoseTurn
				selectedSquare.squareColor = selectedSquare.staticColor
				selectedSquare = ""
				hasSelection = false
			} else {
				selectedSquare.squareColor = selectedSquare.staticColor
				selectedSquare = ""
				hasSelection = false
			}
		}
	}

	function isLegal(file, rank) {
		var piece = pieceType(selectedSquare.piece)
		var i
		var blocked = false
		if (piece === "king") {
			if (Math.abs(selectedSquare.file - file) <= 1) {
				if (Math.abs(selectedSquare.rank - rank) <= 1) {
					if (isEmptyOrEnemy(file, rank)) {
						return true
					}
				} else {
					return false
				}
			} else {
				return false
			}
		} else if (piece === "queen") {
			if (Math.abs(file - selectedSquare.file) === Math.abs(
						rank - selectedSquare.rank)) {
				if (file > selectedSquare.file) {
					if (rank > selectedSquare.rank) {
						// Up and to the right
						blocked = false
						for (i = 1; i < Math.abs(
								 file - selectedSquare.file); i++) {
							if (!isEmpty(selectedSquare.file + i,
										 selectedSquare.rank + i)) {
								blocked = true
							}
						}
						if (blocked) {
							return false
						}
						if (isEmptyOrEnemy(file, rank)) {
							return true
						} else {
							return false
						}
					} else {
						// Down and to the right
						blocked = false
						for (i = 1; i < Math.abs(
								 file - selectedSquare.file); i++) {
							if (!isEmpty(selectedSquare.file + i,
										 selectedSquare.rank - i)) {
								blocked = true
							}
						}
						if (blocked) {
							return false
						}
						if (isEmptyOrEnemy(file, rank)) {
							return true
						} else {
							return false
						}
					}
				} else {
					if (rank > selectedSquare.rank) {
						// Up and to the left
						blocked = false
						for (i = 1; i < Math.abs(
								 file - selectedSquare.file); i++) {
							if (!isEmpty(selectedSquare.file - i,
										 selectedSquare.rank + i)) {
								blocked = true
							}
						}
						if (blocked) {
							return false
						}
						if (isEmptyOrEnemy(file, rank)) {
							return true
						} else {
							return false
						}
					} else {
						// Down and to the left
						blocked = false
						for (i = 1; i < Math.abs(
								 file - selectedSquare.file); i++) {
							if (!isEmpty(selectedSquare.file - i,
										 selectedSquare.rank - i)) {
								blocked = true
							}
						}
						if (blocked) {
							return false
						}
						if (isEmptyOrEnemy(file, rank)) {
							return true
						} else {
							return false
						}
					}
				}
			} else if (file === selectedSquare.file) {
				if (rank > selectedSquare.rank) {
					blocked = false
					for (i = selectedSquare.rank + 1; i < rank; i++) {
						if (!isEmpty(file, i)) {
							blocked = true
						}
					}
					if (blocked === true) {
						return false
					}
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				} else {
					blocked = false
					for (i = selectedSquare.rank - 1; i > rank; i--) {
						if (!isEmpty(file, i)) {
							blocked = true
						}
					}
					if (blocked === true) {
						return false
					}
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				}
			} else if (rank === selectedSquare.rank) {
				if (file > selectedSquare.file) {
					blocked = false
					for (i = selectedSquare.file + 1; i < file; i++) {
						if (!isEmpty(i, rank)) {
							blocked = true
						}
					}
					if (blocked === true) {
						return false
					}
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				} else {
					blocked = false
					for (i = selectedSquare.file - 1; i > file; i--) {
						if (!isEmpty(i, rank)) {
							blocked = true
						}
					}
					if (blocked === true) {
						return false
					}
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				}
			} else {
				return false
			}
		} else if (piece === "rook") {
			if (file === selectedSquare.file) {
				if (rank > selectedSquare.rank) {
					blocked = false
					for (i = selectedSquare.rank + 1; i < rank; i++) {
						if (!isEmpty(file, i)) {
							blocked = true
						}
					}
					if (blocked === true) {
						return false
					}
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				} else {
					blocked = false
					for (i = selectedSquare.rank - 1; i > rank; i--) {
						if (!isEmpty(file, i)) {
							blocked = true
						}
					}
					if (blocked === true) {
						return false
					}
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				}
			} else if (rank === selectedSquare.rank) {
				if (file > selectedSquare.file) {
					blocked = false
					for (i = selectedSquare.file + 1; i < file; i++) {
						if (!isEmpty(i, rank)) {
							blocked = true
						}
					}
					if (blocked === true) {
						return false
					}
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				} else {
					blocked = false
					for (i = selectedSquare.file - 1; i > file; i--) {
						if (!isEmpty(i, rank)) {
							blocked = true
						}
					}
					if (blocked === true) {
						return false
					}
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				}
			} else {
				return false
			}
		} else if (piece === "bishop") {
			if (Math.abs(file - selectedSquare.file) === Math.abs(
						rank - selectedSquare.rank)) {
				if (file > selectedSquare.file) {
					if (rank > selectedSquare.rank) {
						// Up and to the right
						blocked = false
						for (i = 1; i < Math.abs(
								 file - selectedSquare.file); i++) {
							if (!isEmpty(selectedSquare.file + i,
										 selectedSquare.rank + i)) {
								blocked = true
							}
						}
						if (blocked) {
							return false
						}
						if (isEmptyOrEnemy(file, rank)) {
							return true
						} else {
							return false
						}
					} else {
						// Down and to the right
						blocked = false
						for (i = 1; i < Math.abs(
								 file - selectedSquare.file); i++) {
							if (!isEmpty(selectedSquare.file + i,
										 selectedSquare.rank - i)) {
								blocked = true
							}
						}
						if (blocked) {
							return false
						}
						if (isEmptyOrEnemy(file, rank)) {
							return true
						} else {
							return false
						}
					}
				} else {
					if (rank > selectedSquare.rank) {
						// Up and to the left
						blocked = false
						for (i = 1; i < Math.abs(
								 file - selectedSquare.file); i++) {
							if (!isEmpty(selectedSquare.file - i,
										 selectedSquare.rank + i)) {
								blocked = true
							}
						}
						if (blocked) {
							return false
						}
						if (isEmptyOrEnemy(file, rank)) {
							return true
						} else {
							return false
						}
					} else {
						// Down and to the left
						blocked = false
						for (i = 1; i < Math.abs(
								 file - selectedSquare.file); i++) {
							if (!isEmpty(selectedSquare.file - i,
										 selectedSquare.rank - i)) {
								blocked = true
							}
						}
						if (blocked) {
							return false
						}
						if (isEmptyOrEnemy(file, rank)) {
							return true
						} else {
							return false
						}
					}
				}
			} else {
				return false
			}
		} else if (piece === "knight") {
			if (Math.abs(file - selectedSquare.file) === 1) {
				if (Math.abs(rank - selectedSquare.rank) === 2) {
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				} else {
					return false
				}
			} else if (Math.abs(file - selectedSquare.file) === 2) {
				if (Math.abs(rank - selectedSquare.rank) === 1) {
					if (isEmptyOrEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				} else {
					return false
				}
			} else {
				return false
			}
		} else if (piece === "white pawn") {
			if (file === selectedSquare.file) {
				if (rank === selectedSquare.rank + 1) {
					if (isEmpty(file, rank)) {
						return true
					} else {
						return false
					}
				} else if (rank === selectedSquare.rank + 2) {
					if (selectedSquare.rank === 2) {
						if (isEmpty(file, rank)) {
							return true
						} else {
							return false
						}
					} else {
						return false
					}
				}
			} else if (Math.abs(file - selectedSquare.file) === 1) {
				if (rank === selectedSquare.rank + 1) {
					if (isEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				} else {
					return false
				}
			} else {
				return false
			}
		} else if (piece === "black pawn") {
			if (file === selectedSquare.file) {
				if (rank === selectedSquare.rank - 1) {
					if (isEmpty(file, rank)) {
						return true
					} else {
						return false
					}
				} else if (rank === selectedSquare.rank - 2) {
					if (selectedSquare.rank === 7) {
						if (isEmpty(file, rank)) {
							return true
						} else {
							return false
						}
					} else {
						return false
					}
				}
			} else if (Math.abs(file - selectedSquare.file) === 1) {
				if (rank === selectedSquare.rank - 1) {
					if (isEnemy(file, rank)) {
						return true
					} else {
						return false
					}
				} else {
					return false
				}
			} else {
				return false
			}
		} else {
			return false
		}
	}

	function isEnemy(file, rank) {
		if (whoseTurn) {
			if (board.squareArray[file - 1 + (rank - 1) * 8].piece < 0) {
				return true
			} else {
				return false
			}
		} else {
			if (board.squareArray[file - 1 + (rank - 1) * 8].piece > 0) {
				return true
			} else {
				return false
			}
		}
	}

	function isEmptyOrEnemy(file, rank) {
		if (whoseTurn) {
			if (board.squareArray[file - 1 + (rank - 1) * 8].piece <= 0) {
				return true
			} else {
				return false
			}
		} else {
			if (board.squareArray[file - 1 + (rank - 1) * 8].piece >= 0) {
				return true
			} else {
				return false
			}
		}
	}

	function isEmpty(file, rank) {
		if (board.squareArray[file - 1 + (rank - 1) * 8].piece === 0) {
			return true
		} else {
			return false
		}
	}

	function validateSelection(file, rank) {
		if (whoseTurn) {
			if (board.squareArray[file - 1 + (rank - 1) * 8].piece > 0) {
				return true
			} else {
				return false
			}
		} else {
			if (board.squareArray[file - 1 + (rank - 1) * 8].piece < 0) {
				return true
			} else {
				return false
			}
		}
	}
}
