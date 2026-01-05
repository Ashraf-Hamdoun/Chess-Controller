// lib/src/constants/strings.dart
library constants_strings;

const String SYMBOLS = 'pnbrqkPNBRQK';

const String DEFAULT_POSITION =
    'rnbqkbnr/pppppppp/8/8/8/8/PPPPPPPP/RNBQKBNR w KQkq - 0 1';

const Map<String, String> FLAGS = {
  'NORMAL': 'n',
  'CAPTURE': 'c',
  'BIG_PAWN': 'b',
  'EP_CAPTURE': 'e',
  'PROMOTION': 'p',
  'KSIDE_CASTLE': 'k',
  'QSIDE_CASTLE': 'q'
};

const List<String> POSSIBLE_RESULTS = ['1-0', '0-1', '1/2-1/2', '*'];
