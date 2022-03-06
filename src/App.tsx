import React from 'react';
import logo from './logo.png';
import './App.css';
import './table.css'

function App() {
  return (
    <div className="app">
      <header>
        <img src={logo} className="logo" alt="logo" width="125" height="125" />
        <h1>React.js Todo App</h1>
      </header>
      <main>
        <div className="add-task">
          <input
            v-model="task"
            type="text"
            placeholder="Enter Task"
            id="add-Task-Input"
          />
          <button className="add-task-submit">Submit</button>
        </div>
        <table className="task-table">
          <thead>
            <tr>
              <th scope="col">Task</th>
              <th scope="col" id="table-head-status">Status</th>
              <th scope="col" className="text-center table-icon">#</th>
              <th scope="col" className="text-center table-icon">#</th>
            </tr>
          </thead>
          <tbody>
            <tr >
              <td></td>
              <td className="text-center task-status">
                <select name="task-status" className="task-status-select">
                  <option>
                  </option>
                </select>
              </td>
              <td>
                <div className="text-center task-action-button" >
                  <span className="fa fa-pen"></span>
                </div>
              </td>
              <td>
                <div className="text-center task-action-button" >
                  <span className="fa fa-trash"></span>
                </div>
              </td>
            </tr>
          </tbody>
        </table>
      </main>
    </div>
  );
}

export default App;
