import 'package:chess_controller/src/models/models.dart';

const PieceType PAWN = PieceType.PAWN;
const PieceType KNIGHT = PieceType.KNIGHT;
const PieceType BISHOP = PieceType.BISHOP;
const PieceType ROOK = PieceType.ROOK;
const PieceType QUEEN = PieceType.QUEEN;
const PieceType KING = PieceType.KING;

const Map<String, PieceType> PIECE_TYPES = {
  'p': PAWN,
  'n': KNIGHT,
  'b': BISHOP,
  'r': ROOK,
  'q': QUEEN,
  'k': KING
};
