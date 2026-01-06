# Project Context: Gemini Project

## Overview
This directory contains a **React-based Todo Application** located in the `todo-app/` subdirectory. The project is a standard Single Page Application (SPA) bootstrapped with [Create React App](https://github.com/facebook/create-react-app).

### Key Technologies
- **Frontend Framework:** React (v19)
- **State Management:** React Hooks (`useState`, `useEffect`)
- **Persistence:** Browser `localStorage`
- **Styling:** CSS modules and standard CSS files
- **Testing:** Jest & React Testing Library

## Directory Structure
```
gemini_proj/
├── todo-app/               # Main application directory
│   ├── public/             # Static assets (index.html, manifest.json)
│   ├── src/                # Source code
│   │   ├── components/     # Reusable UI components (AddTodo, TodoItem)
│   │   ├── App.js          # Main component & state logic
│   │   ├── index.js        # Entry point
│   │   └── ...
│   ├── package.json        # Dependencies and scripts
│   └── README.md           # Original CRA documentation
└── GEMINI.md               # This context file
```

## Building and Running
All commands should be executed from within the `todo-app` directory.

1.  **Navigate to the project directory:**
    ```bash
    cd todo-app
    ```

2.  **Install Dependencies:**
    ```bash
    npm install
    ```

3.  **Start Development Server:**
    Runs the app in development mode. Open [http://localhost:3000](http://localhost:3000) to view it in the browser.
    ```bash
    npm start
    ```

4.  **Run Tests:**
    Launches the test runner in interactive watch mode.
    ```bash
    npm test
    ```

5.  **Build for Production:**
    Builds the app for production to the `build` folder.
    ```bash
    npm run build
    ```

## Development Conventions

### Code Style & Patterns
*   **Functional Components:** The project exclusively uses functional components with Hooks.
*   **Component Structure:**
    *   `App.js`: Acts as the main container and holds the global state (list of todos).
    *   `components/`: Contains presentational and smaller functional components like `AddTodo` and `TodoItem`.
*   **State Management:**
    *   State is lifted up to `App.js`.
    *   Functions for modifying state (`addTodo`, `toggleComplete`, `deleteTodo`) are passed down as props.
*   **Persistence:** `useEffect` is used in `App.js` to sync the todo list with `localStorage` on every change.
*   **Naming:**
    *   Components: `PascalCase` (e.g., `TodoItem`)
    *   Functions/Variables: `camelCase` (e.g., `toggleComplete`)

### Language
The application UI currently uses **Korean** (e.g., "할 일 목록", "할 일이 없습니다"). Ensure future UI additions maintain this localization or implement a localization strategy if expanding.
