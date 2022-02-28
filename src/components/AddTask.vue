<template>
  <div class="add-task">
    <input type="text" placeholder="Enter Task" id="add-Task-Input" />
    <button class="add-task-submit">Submit</button>
  </div>
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
  background-color: var(--vt-c-mint-dark1);
  border-color: var(--vt-c-mint-dark2);
}
</style>