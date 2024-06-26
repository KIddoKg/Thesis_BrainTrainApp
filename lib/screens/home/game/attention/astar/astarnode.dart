class AstarNode {
  AstarNode? parent;
  AstarNode? next;
  late int x;
  late int y;
  late double g;
  late double f;

  AstarNode(this.x, this.y, {this.parent, double cost = 0.0}) {
    g = (parent != null ? parent!.g : 0) + cost;
  }

  @override
  bool operator ==(dynamic other) {
    return (x == other.x && y == other.y);
  }

  int get hashCode => super.hashCode;
}