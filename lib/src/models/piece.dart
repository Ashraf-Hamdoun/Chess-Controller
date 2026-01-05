import 'package:chess_controller/src/models/color.dart';

class Piece {
  PieceType type;
  final Color color;
  Piece(this.type, this.color);

  String get name {
    return '${color.toString().toLowerCase()}_${type.fullName}';
  }
}

class PieceType {
  final int shift;
  final String name;
  const PieceType._internal(this.shift, this.name);

  static const PieceType PAWN = PieceType._internal(0, 'p');
  static const PieceType KNIGHT = PieceType._internal(1, 'n');
  static const PieceType BISHOP = PieceType._internal(2, 'b');
  static const PieceType ROOK = PieceType._internal(3, 'r');
  static const PieceType QUEEN = PieceType._internal(4, 'q');
  static const PieceType KING = PieceType._internal(5, 'k');

  String get fullName {
    switch (this) {
      case PAWN:
        return 'pawn';
      case KNIGHT:
        return 'knight';
      case BISHOP:
        return 'bishop';
      case ROOK:
        return 'rook';
      case QUEEN:
        return 'queen';
      case KING:
        return 'king';
      default:
        return 'unknown';
    }
  }

  @override
  int get hashCode => shift;
  @override
  String toString() => name;
  String toLowerCase() => name;
  String toUpperCase() => name.toUpperCase();
}
