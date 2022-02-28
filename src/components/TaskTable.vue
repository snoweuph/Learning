<script>
export default {
  data() {
    return {
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
};
</script>


<template>
  <table class="task-table">
    <thead>
      <tr>
        <th scope="col">Task</th>
        <th scope="col">Status</th>
        <th scope="col" class="text-center table-icon">#</th>
        <th scope="col" class="text-center table-icon">#</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="(task, index) in tasks" :key="index">
        <td>{{ task.name }}</td>
        <td>{{ task.status }}</td>
        <td>
          <div class="text-center">
            <span class="fa fa-pen"></span>
          </div>
        </td>
        <td>
          <div class="text-center">
            <span class="fa fa-trash"></span>
          </div>
        </td>
      </tr>
    </tbody>
  </table>
</template>


<style>
.task-table {
  width: 100%;
  margin: 1rem auto;
}
</style>