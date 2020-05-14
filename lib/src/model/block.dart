part of tetris;

class Block {
  List<Tile> tiles = List<Tile>(4);
  Tile rotationTile;
  String color;

  void move(String direction) {
    switch (direction) {
      case 'left':
        tiles.forEach((t) => t.x -= 1);
        break;
      case 'right':
        tiles.forEach((t) => t.x += 1);
        break;
      case 'up':
        tiles.forEach((t) => t.y -= 1);
        break;
      case 'down':
        tiles.forEach((t) => t.y += 1);
        break;
    }
  }

  rotateRight() {
    tiles.forEach((tile) {
      int x = tile.x;
      tile.x = rotateTile.x - tile.y + rotateTile.y;
      tile.y = rotateTile.y - x + rotateTile.x;
    })
  }
  
  rotateRight() {
    tiles.forEach((tile) {
      int x = tile.x;
      tile.x = rotateTile.x + tile.y - rotateTile.y;
      tile.y = rotateTile.y - x + rotateTile.x;
    })
  }
}
