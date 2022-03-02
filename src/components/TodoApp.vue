<script>
export default {
  data() {
    return {
      task: "",
      editedTask: null,
      availableStatuses: ["to-do", "in-progress", "done"],
      tasks: [
        {
          name: "Placeholder Name 1",
          status: "to-do",
        },
        {
          name: "Placeholder Name 2",
          status: "done",
        },
      ],
    };
  },
  methods: {
    submitTask() {
      if (this.task === "") return;
      console.log(!this.editedTask);
      if (this.editedTask === null) {
        this.tasks.push({
          name: this.task,
          status: "to-do",
        });
      } else {
        this.tasks[this.editedTask].name = this.task;
        this.editedTask = null;
      }

      this.task = "";
    },
    delTask(index) {
      this.tasks.splice(index, 1);
    },
    editTask(index) {
      this.task = this.tasks[index].name;
      this.editedTask = index;
    },
    editStatus(objectIndex, statusIndex) {
      this.tasks[objectIndex].status = this.availableStatuses[statusIndex];
    },
  },
};
</script>

<template>
  <div class="add-task">
    <input
      v-model="task"
      type="text"
      placeholder="Enter Task"
      id="add-Task-Input"
    />
    <button @click="submitTask" class="add-task-submit">Submit</button>
  </div>
  <table class="task-table">
    <thead>
      <tr>
        <th scope="col">Task</th>
        <th scope="col" id="table-head-status">Status</th>
        <th scope="col" class="text-center table-icon">#</th>
        <th scope="col" class="text-center table-icon">#</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(task, index) in tasks" :key="index">
        <td>{{ task.name }}</td>
        <td class="text-center task-status">
          <select
            name="task-status"
            class="task-status-select"
            @change="editStatus(index, $event.target.value)"
          >
            <option
              v-for="(status, statusIndex) in availableStatuses"
              :key="status"
              :value="statusIndex"
            >
              {{ status }}
            </option>
          </select>
        </td>
        <td>
          <div class="text-center task-action-button" @click="editTask(index)">
            <span class="fa fa-pen"></span>
          </div>
        </td>
        <td>
          <div class="text-center task-action-button" @click="delTask(index)">
            <span class="fa fa-trash"></span>
          </div>
        </td>
      </tr>
    </tbody>
  </table>
</template>

<style>
.add-task {
  margin: 0 auto;
  display: flex;
  justify-content: center;
}
#add-Task-Input {
  height: 1rem;
  width: 100%;
  padding: 1rem;
  margin-right: 0.1rem;
  border-radius: 0.25rem;
  border: none;
}
.add-task-submit {
  background-color: var(--vt-c-mint);
  border-radius: 0.25rem;
  /*make a round border*/
  border: 0.1rem solid var(--vt-c-mint-dark1);
  transition-duration: 100ms;
}
.add-task-submit:hover {
  background-color: var(--vt-c-mint-light2);
  border-color: var(--vt-c-mint);
}
.add-task-submit:active {
  background-color: var(--vt-c-mint-light1);
  border-color: var(--vt-c-mint-light2);
}
@media (prefers-color-scheme: dark) {
  .add-task-submit:hover {
    background-color: var(--vt-c-mint-light2);
    border-color: var(--vt-c-mint);
  }
  .add-task-submit:active {
    background-color: var(--vt-c-mint-dark1);
    border-color: var(--vt-c-mint-dark2);
  }
}
.task-table {
  width: 100%;
  margin: 1rem auto;
}
#table-head-status {
  width: 8rem;
}
.task-status {
  padding: 0;
}
.task-status-select {
  color: var(--color-text);
  background-color: var(--color-background);
  border: none;
  outline: none;
  width: 100%;
  height: 100%;
}
.task-status-select:hover {
  color: var(--vt-c-mint);
}
.task-status-select:active {
  color: var(--vt-c-mint-dark1);
}
.task-status-select option {
  color: var(--vt-c-mint);
}
.task-action-button {
  transition-duration: 100ms;
}
.task-action-button:hover {
  color: var(--vt-c-mint);
}
.task-action-button:active {
  color: var(--vt-c-mint-dark1);
}
</style>