// ArrayList to hold all the polygons
ArrayList<Polygon> polygons;
// Stores the current polygon being created
Polygon currentPolygon;

// Track polygon creation state
boolean newPoly = true; 
// Index to track the most recent polygon
int track = -1;

// setup() is called once when the program starts, used for initialization
void setup() {
  // Set canvas size
  size(800, 600);
  
  // Initialize the list of polygons
  polygons = new ArrayList<>();
  
  // Initialize a new Polygon object to start drawing
  currentPolygon = new Polygon();
}

// draw() contains the loops to draw the polygons
void draw() {
  // Set background color - dark green
  background(2, 48, 32); 

  // Loop through all polygons and draw them, highlight the most recent one
  for (int i = 0; i < polygons.size(); i++) {
    Polygon p = polygons.get(i);
    
    // Set a thicker stroke for the most recent polygon
    if (i == track) {
      strokeWeight(6);  // Thicker stroke for the most recent polygon
    } else {
      strokeWeight(2.5); // Default stroke weight for other polygons
    }

    // Call the completedPolygon method for each polygon
    p.completedPolygon();
  }

  // Draw the current polygon being created (only if there are vertices)
  if (currentPolygon.vertices.size() > 0) {
    currentPolygon.drawPolygon(); 
  }

  // Display the number of polygons and the most recent polygon's details
  fill(255, 255, 255);
  textSize(15);
  text("Polygons: " + polygons.size(), 20, 20);
  
  // Display the details of the most recent polygon if one exists
  if (track >= 0) {
    text("Most recent: " + polygons.get(track).toString(), 20, 40);
  }
}

// mousePressed() is triggered when the mouse button is pressed
void mousePressed() {
  // If the left mouse button is pressed, start a new polygon
  if (mouseButton == LEFT) {
    newPoly = false;
    // Add a vertex to the current polygon at the mouse position
    currentPolygon.addVertex(new Vertex(mouseX, mouseY));
  }

  // If the right mouse button is pressed and the polygon has more than 2 vertices, finalize the current polygon
  if (mouseButton == RIGHT && currentPolygon.vertices.size() > 2) {
    newPoly = true;
    // Add the completed polygon to the list of polygons
    polygons.add(currentPolygon);
    // Set the index of the most recent polygon
    track = polygons.size() - 1;
    // Create a new polygon for future vertex additions
    currentPolygon = new Polygon();
  }
}



// Why was the polygon always invited to parties?
// Because it had so many sides to the story '_'



// keyPressed() is triggered when a key is pressed
void keyPressed() {
  // If 'e' is pressed, remove the most recent polygon
  if (key == 'e') {
    if (polygons.size() > 0) {
      polygons.remove(polygons.size() - 1);
      track = polygons.size() - 1;
    }
  } 
  // If 'c' is pressed, clear all polygons
  else if (key == 'c') {
    polygons.clear();
    track = -1;
  } 
  
  
  
  // Extra credit :)
  // If 'w', 'a', 's', or 'd' is pressed, move the recent polygon
  else if (key == 'w') {
    movePoly(0, -5.5);
  } else if (key == 'a') {
    movePoly(-5.5, 0);
  } else if (key == 's') {
    movePoly(0, 5.5);
  } else if (key == 'd') {
    movePoly(5.5, 0);
  }
}

// movePoly() moves the most recent polygon by 5.5 units
void movePoly(float dx, float dy) {
  // If there is a polygon to move :(
  if (track >= 0) {
    // Loop through all vertices of the selected polygon and apply the movement
    for (Vertex v : polygons.get(track).vertices) {
      v.x += dx;
      v.y += dy;
    }
  }
}
