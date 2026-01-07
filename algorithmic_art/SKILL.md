---
name: algorithmic_art
router_kit: FullStackKit
description: Guide for creating generative art, flow fields and interactive visuals with p5.js.
metadata:
  skillport:
    category: design
    tags: [algorithmic art, architecture, automation, best practices, clean code, coding, collaboration, compliance, debugging, design patterns, development, documentation, efficiency, git, optimization, productivity, programming, project management, quality assurance, refactoring, software engineering, standards, testing, utilities, version control, workflow]      - creative
---

# 🎨 Algorithmic Art

> Generative art guide with p5.js.

---

## 📋 Basic Structure

```javascript
function setup() {
  createCanvas(800, 600);
  background(20);
}

function draw() {
  // Animation loop
}
```

---

## 🔧 Basic Shapes

```javascript
// Line
line(x1, y1, x2, y2);

// Rectangle
rect(x, y, width, height);

// Ellipse
ellipse(x, y, width, height);

// Point
point(x, y);

// Colors
fill(r, g, b, alpha);
stroke(r, g, b);
noFill();
noStroke();
```

---

## 🌀 Flow Fields

```javascript
let flowField = [];
let cols, rows;
let scale = 20;

function setup() {
  createCanvas(800, 600);
  cols = floor(width / scale);
  rows = floor(height / scale);
  
  // Create flow field
  for (let y = 0; y < rows; y++) {
    for (let x = 0; x < cols; x++) {
      let angle = noise(x * 0.1, y * 0.1) * TWO_PI;
      flowField.push(p5.Vector.fromAngle(angle));
    }
  }
}
```

---

## ✨ Particle Systems

```javascript
class Particle {
  constructor() {
    this.pos = createVector(random(width), random(height));
    this.vel = createVector(0, 0);
    this.acc = createVector(0, 0);
  }
  
  update() {
    this.vel.add(this.acc);
    this.vel.limit(4);
    this.pos.add(this.vel);
    this.acc.mult(0);
  }
  
  show() {
    point(this.pos.x, this.pos.y);
  }
}
```

---

## 🎲 Seeded Randomness

```javascript
// Reproducible randomness
randomSeed(42);
noiseSeed(42);

// Perlin noise
let n = noise(x, y);

// Random range
let r = random(0, 100);
```

---

## 🖱️ Interactivity

```javascript
function mouseMoved() {
  // Mouse position: mouseX, mouseY
}

function mousePressed() {
  // Click handler
}

function keyPressed() {
  if (key === 's') {
    saveCanvas('artwork', 'png');
  }
}
```

---

### 💾 High-Res Export (Print-Ready)
```javascript
// Press 'S' to save high-res
function keyPressed() {
  if (key === 's') {
    pixelDensity(4); // 4x resolution for print
    saveCanvas('artwork_' + frameCount, 'png');
    pixelDensity(1); // Reset for performance
  }
}
```

### 🚀 Performance (Shaders)
For pixel-level manipulation, use GLSL shaders in WEBGL mode instead of `pixels[]` array for 100x speedup.

---

*Algorithmic Art v1.1 - Enhanced*

## 🔄 Workflow

> **Source:** [Generative Design Process](https://www.illustration.app/blog/the-generative-design-process-from-ai-output-to-polished-visual)

### Phase 1: Concept & Rules
- [ ] **Define Theme**: e.g., "Organic Decay", "Geometric Order".
- [ ] **Set Constraints**: Color palette (max 3 colors), Aspect ratio.
- [ ] **Choose Algorithm**: Flow fields, Cellular Automata, Recursion.

### Phase 2: Implementation (Sketching)
- [ ] **Setup**: Configure canvas and basic loop.
- [ ] **Primitives**: Draw static shapes to test composition.
- [ ] **Dynamics**: Add movement/change (using `draw()` loop).

### Phase 3: Generative Logic
- [ ] **Introduce Randomness**: Use `random()` inside controlled bounds.
- [ ] **Apply Noise**: Replace random with `noise()` for natural flow.
- [ ] **Interaction**: Couple variables with mouse/keyboard inputs.

### Phase 4: Tuning & Curation
- [ ] **Parameterize**: Create variables for `scale`, `speed`, `density`.
- [ ] **Seed Testing**: Test different `randomSeed()` values.
- [ ] **Selection**: Curate the best outputs.

### Checkpoints
| Phase | Verification                       |
| ----- | ---------------------------------- |
| 1     | Concept and constraints are clear  |
| 2     | Basic loop runs without errors     |
| 3     | Output shows variation on each run |
| 4     | Performance stable (>30 FPS)       |
