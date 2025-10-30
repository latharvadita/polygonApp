// The Polygon class represents a polygon with a set of vertices and a color
class Polygon {

  // List to store the vertices of the polygon
  ArrayList<Vertex> vertices;

  // Color of the polygon
  color polyCol;

  // Constructor to initialize the Polygon object
  Polygon() {
    // Initializes the vertices list as an empty ArrayList
    vertices = new ArrayList<>();

    // Randomly generates a color for the polygon with custom RGB values
    // Random shades of pink :)
    polyCol = color(random(200, 255), random(150, 200), random(180, 220));
  }

  // Method to draw the polygon outline and its vertices
  void drawPolygon() {
    // Disable fill color, set the stroke color to the polygon's color
    noFill();
    stroke(polyCol);

    // Set the stroke weight to 1 for the polygon outline
    strokeWeight(1);

    // Begin drawing the polygon outline
    beginShape();
    for (Vertex v : vertices) {
      vertex(v.x, v.y);
    }
    endShape();

    // Draw the vertices as points with a thicker stroke weight
    strokeWeight(3.5);
    beginShape(POINTS);
    for (Vertex v : vertices) {
      vertex(v.x, v.y);
    }
    endShape();
  }

  // Method to add a vertex to the polygon
  void addVertex(Vertex v) {
    vertices.add(v); // Add the vertex to the list
  }

  // Method to close and complete the polygon, and draw it with a fill color
  void completedPolygon() {
    // Ensure at least 3 vertices are present to form a valid polygon
    if (vertices.size() < 3) {
      return;  // Don't complete the polygon if there are not enough vertices
    }

    // Set a fill color with some transparency and stroke color
    fill(polyCol, 150);
    stroke(polyCol);

    // Begin drawing the filled polygon
    beginShape();
    for (Vertex v : vertices) {
      vertex(v.x, v.y);
    }
    endShape(CLOSE);
  }

  // Method to return a string representation of the polygon's vertices and number of sides
  String toString() {
    String result = vertices.size() + "-gon:\n";
    for (Vertex v : vertices) {
      result += v.toString() + "\n";
    }
    return result;
  }
}
