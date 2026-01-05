# chess_controller

A powerful and flexible chess engine for Dart. It provides a comprehensive API for chess logic, including move generation, validation, FEN/PGN parsing, and game state management.

This library is a Dart port of the popular chess.js library.

## Features

-   **FEN Support:** Load and export game states using Forsyth-Edwards Notation.
-   **PGN Support:** Load and export games in Portable Game Notation, including headers.
-   **Move Generation:** Generate all legal moves for a given position.
-   **Game State:** Detect check, checkmate, stalemate, draws by insufficient material, and threefold repetition.
-   **History:** Keep track of moves, and undo moves.
-   **And more...**

## Installation

Add this to your `pubspec.yaml` file:

```yaml
dependencies:
  chess_controller: ^0.8.1
```

Then run `dart pub get` or `flutter pub get`.

## Usage

Here's a simple example of how to use the `chess_controller` library:

```dart
import 'package:chess_controller/chess_controller.dart';

void main() {
  // Create a new chess game
  final chess = Chess();

  // Make some moves
  chess.move('e4');
  chess.move('e5');
  chess.move('Nf3');
  chess.move('Nc6');

  // Print the current position as ASCII
  print(chess.ascii);

  // Get the game's PGN
  print(chess.pgn());

  // Check game status
  if (chess.game_over) {
    print('Game Over!');
  }
}
```

This will output:

```
   +------------------------+
 8 | r . b q k b . r |
 7 | p p p . . p p p |
 6 | . . n . . n . . |
 5 | . . . . p . . . |
 4 | . . . . P . . . |
 3 | . . . . . N . . |
 2 | P P P P . P P P |
 1 | R N B Q K B . R |
   +------------------------+
     a  b  c  d  e  f  g  h

[Event "?"]
[Site "?"]
[Date "????.??.??"]
[Round "?"]
[White "?"]
[Black "?"]
[Result "*"]

1. e4 e5 2. Nf3 Nc6
```
