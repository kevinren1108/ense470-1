<template>
  <div id="app">
    <div id="nav">
      <div id="nav__top">

      </div>
      <div id="nav__bottom">

      </div>
    </div>
    <router-view/>
  </div>
</template>

<script>
export default {
  name: 'App'
}
</script>

<style>
html, body {
  padding: 0;
  margin: 0;
}
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin: 0;
  width: 100vw;
  height: 100vh;

  display: grid;
  grid-template-rows: 1fr 5fr 1fr;
  background: #F4F4F5;
}
#nav {
  grid-row: 1 / 2;
  background: #2c3e50;
}
#nav__top {
  background: #2c3e50;
}
#nav__bottom {
  background: #0098DB;
}
</style>
