<template>
  <div id="app">
    <div id="navbar">
      <div id="navbar__top">
        <div id="navbar__title">Software Procurement Portal</div>
        <button id="navbar__btn-login" class="btn--green btn--small">Log in</button>
      </div>
      <div id="navbar__bottom">
        <div id="navbar__bottom__links"></div>
        <div class="navbar__bottom__link" id="navbar_home">Home</div>
        <div class="navbar__bottom__link" id="navbar_placeholder">Placeholder</div>
      </div>
    </div>
    <div id="body">
      <router-view id="content"/>
    </div>
    <div id="footer"></div>
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
.btn--green {
  border: none;
  color: #F2FAFD;
  background: #55BA47;
}
.btn--blue {
  border: none;
  color: #F2FAFD;
  background: #0098DB;
}
.btn--small {
  border-radius: 4px;
  padding: 8px 16px;
}
.btn--large {
  border-radius: 8px;
  padding: 16px 32px;
}
#app {
  font-family: Arial, Helvetica, 'Avenir', sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin: 0;
  width: 100vw;
  height: 100vh;

  display: grid;
  grid-template-rows: 2fr 11fr 1fr;
  background: #F4F4F5;
}
#navbar {
  grid-row: 1 / 2;
  display: flex;
  flex-direction: column;
}
#navbar__top {
  width: 100%;
  height: 50%;
  background: #1F2C33;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
#navbar__title {
  color: #F2FAFD;
  margin: 0 20px;
}
#navbar__btn-login {
  margin: 0 20px;
}
#navbar__btn-login:hover {
  background: #499e3e;
  cursor: pointer;
}
#navbar__btn-login:active {
  background: #408a36;
}
#navbar__bottom {
  width: 100%;
  height: 50%;
  background: #0098DB;
  color: #F2FAFD;
  display: flex;
  align-items: center;
  justify-content: flex-start;
}
#navbar__bottom__links {
  margin: 0 10px;
}
.navbar__bottom__link {
  height: 100%;
  padding: 0 16px;
  display: flex;
  align-items: center;
}
.navbar__bottom__link:hover {
  color: #0098d8;
  background: #F4F4F5;
  cursor: pointer;
}
.navbar__bottom__link:active {
  color: #0098d8;
  background: #F4F4F5;
}
#body {
  width: 100%;
  grid-row: 2 / 3;
  margin: 0;
  padding: 0;
  background: #F4F4F5;
  display: flex;
  align-items: center;
}
#content {
  width: 100%;
  box-sizing: border-box;
  background: #FFFFFF;
  margin: 20px 10%;
  padding: 10px;
  border-radius: 12px;
  box-shadow: 2px 2px 12px 0 rgba(0,0,0,0.125),
              4px 6px 18px 0 rgba(0,0,0,0.075);
}
#footer {
  width: 100%;
  height: 100%;
  background: #1F2C33;
  grid-row: 3 / 4;
}
</style>
