class Vertex {
  // Instance varibales x and y (integers)
  float x, y;

  // Constructor to initialize the vertex with coordinates
  Vertex(float x, float y) {
    this.x = x;
    this.y = y;
  }

  // Returns the string representation of the vertex
  public String toString() {
    return "(" + int(x) + ", " + int(y) + ")";
  }
}
