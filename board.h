typedef enum {
  WHITE,
  BLACK,
} side_t;

typedef enum {
  PAWN,
  KNIGHT,
  BISHOP,
  ROOK,
  QUEEN,
  KING,
} piece_type_t;

typedef struct {
  side_t side;
  piece_type_t piece_type;
} piece_t;

typedef struct {
  piece_t board[8][8];
  int white_kingside_castle:1;
  int white_queenside_castle:1;
  int black_kingside_castle:1;
  int black_queenside_castle:1;
  int en_passant;
} position;
