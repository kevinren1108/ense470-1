<template>
  <div class="page">
      <div class="page__content">
        <h1 class="page__title">Sign up</h1>
        <div id="row-1"><input type="text" class="login__input" id="username" placeholder="First Name"/></div>
        <div id="row-2"><input type="text" class="login__input" id="username" placeholder="Last Name"/></div>
        <div id="row-3"><input type="text" class="login__input" id="username" placeholder="Email"/></div>
        <div id="row-4"><input type="password" class="login__input" id="password" placeholder="Password"/></div>
        <div id="row-5"><input type="password" class="login__input" id="password" placeholder="Verify Password"/></div>
        <div id="row-6">
          <button class="btn--blue btn--large" id="signup__submit">Sign up</button>
          <p>Already have an account? <router-link to="/login" class="basic-link">Log in here</router-link></p>
        </div>
      </div>
  </div>
</template>

<script>
export default {
  name: 'SignupPage',
  data () {
    return {
      title: 'Sign up'
    }
  }
}
</script>

<style scoped>
#content {
  padding: 0;
  align-items: center;
}
.page {
  padding: 0;
  width: 100%;
  min-width: 500px;
  height: 100%;
  display: flex;
  align-items: center;
}
.page__content {
  width: 500px;
  /* height: 100%; */
  margin: 0 0 120px;
  padding: 0;
  box-sizing: border-box;
}
.page__title {
  /* padding: 0 0 20px; */
  margin: 0 0 10px;
}
.login__input {
  width: 100%;
  margin: 10px 0;
  padding: 16px;
  border-radius: 4px;
  border: 1px solid rgba(74, 84, 90, 0.4);
  box-sizing: border-box;
}
#row-6 {
  width: 100%;
  padding: 10px 0 0;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
#signup__submit {
  padding: 16px 64px;
}
h1, h2, p {
  text-align: left;
  padding: 0;
  margin: 0;
}

h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
