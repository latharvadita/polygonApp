# Polygon Maker – Object-Oriented Programming Project

This is a **Processing** sketch from my Object-Oriented Programming class. It demonstrates the use of classes, objects, and composition by allowing users to create, display, and manipulate 2D polygons dynamically using the mouse and keyboard.

## Features

- **Create polygons with mouse clicks**
  - Left-click to add vertices
  - Right-click to complete a polygon (requires 3+ vertices)
- **Dynamic polygon display**
  - Random fill color with transparency
  - Random stroke color
  - Highlights the most recently created polygon
  - Displays the number of polygons and coordinates of the last polygon
- **Keyboard functionality**
  - `e` → Erase the most recently drawn polygon  
  - `c` → Clear all polygons  
  - Bonus: `W`, `A`, `S`, `D` keys to move the selected polygon
- **Object-oriented design**
  - `Vertex` class represents individual vertices  
  - `Polygon` class manages drawing and storage of polygons  
  - `polygonApp.pde` handles user interaction and program flow

## Project Structure

- `Vertex.pde` → Defines the `Vertex` class, storing x/y coordinates and providing a `toString()` method.  
- `Polygon.pde` → Defines the `Polygon` class, which stores vertices, handles drawing, and includes a `toString()` method.  
- `polygonApp.pde` → Main sketch file containing `setup()`, `draw()`, `mousePressed()`, and `keyPressed()` methods for user interaction.

## How to Run

1. Open the folder in **Processing IDE**.  
2. Run `polygonApp.pde`.  
3. Interact with the sketch using your mouse and keyboard to create and manage polygons.

## Tags

Processing, Java, Polygons, Graphics, Interactive, OOP, Object-Oriented Programming
