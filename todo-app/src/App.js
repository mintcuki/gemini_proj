import React, { useState, useEffect } from 'react';
import './App.css';
import AddTodo from './components/AddTodo';
import TodoItem from './components/TodoItem';

function App() {
  const [todos, setTodos] = useState(() => {
    const savedTodos = localStorage.getItem('todos');
    if (savedTodos) {
      return JSON.parse(savedTodos);
    } else {
      return [];
    }
  });

  useEffect(() => {
    localStorage.setItem('todos', JSON.stringify(todos));
  }, [todos]);

  const addTodo = (text) => {
    const newTodo = {
      id: Date.now(),
      text: text,
      completed: false,
    };
    setTodos([...todos, newTodo]);
  };

  const toggleComplete = (id) => {
    setTodos(
      todos.map((todo) =>
        todo.id === id ? { ...todo, completed: !todo.completed } : todo
      )
    );
  };

  const deleteTodo = (id) => {
    setTodos(todos.filter((todo) => todo.id !== id));
  };

  return (
    <div className="App">
      <div className="container">
        <header className="header">
          <h1>할 일 목록</h1>
        </header>
        <AddTodo addTodo={addTodo} />
        <div className="todo-list">
          {todos.length > 0 ? (
            todos.map((todo) => (
              <TodoItem
                key={todo.id}
                todo={todo}
                toggleComplete={toggleComplete}
                deleteTodo={deleteTodo}
              />
            ))
          ) : (
            <p className="empty-message">할 일이 없습니다. 새로운 할 일을 추가해보세요!</p>
          )}
        </div>
      </div>
    </div>
  );
}

export default App;