import 'package:chess_controller/chess_controller.dart';

class Move {
  final Color color;
  final int from;
  final int to;
  final int flags;
  final PieceType piece;
  final PieceType? captured;
  final PieceType? promotion;
  final String? comment;
  const Move(this.color, this.from, this.to, this.flags, this.piece,
      this.captured, this.promotion, [this.comment]);

  String get fromAlgebraic {
    return algebraic(from);
  }

  String get toAlgebraic {
    return algebraic(to);
  }
}
