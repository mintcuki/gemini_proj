import React, { useState } from 'react';

function AddTodo({ addTodo }) {
  const [text, setText] = useState('');

  const handleSubmit = (e) => {
    e.preventDefault();
    if (text.trim()) {
      addTodo(text);
      setText('');
    }
  };

  return (
    <form className="add-todo-form" onSubmit={handleSubmit}>
      <input
        type="text"
        placeholder="할 일을 입력하세요..."
        value={text}
        onChange={(e) => setText(e.target.value)}
      />
      <button type="submit">추가</button>
    </form>
  );
}

export default AddTodo;
