library utils;

import 'package:chess_controller/src/models/models.dart';

int rank(int i) {
  return i >> 4;
}

int file(int i) {
  return i & 15;
}

String algebraic(int i) {
  var f = file(i), r = rank(i);
  return 'abcdefgh'.substring(f, f + 1) + '87654321'.substring(r, r + 1);
}

Color swap_color(Color c) {
  return c == Color.WHITE ? Color.BLACK : Color.WHITE;
}

bool is_digit(String c) {
  return '0123456789'.contains(c);
}
