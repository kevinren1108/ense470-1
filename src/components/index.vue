<template>
    <div class="page">
        <div class="side-banner">
          <h1>Welcome</h1>
        </div>
        <div class="page__content">
          <h1 class="page__title">Log in</h1>
          <div id="row-1"><input type="text" class="login__input" id="username" placeholder="Username"/></div>
          <div id="row-2"><input type="password" class="login__input" id="password" placeholder="Password"/></div>
          <div id="row-3">
            <router-link to="/"><button class="btn--blue btn--large" id="login__submit">Log in</button></router-link>
            <p>Dont have an account? <a href="/#/signup">Sign up now</a></p>
          </div>
        </div>
    </div>
</template>

<script>
export default {
  name: 'index',
  data () {
    return {
      description: 'This is a portal for requesting access to any software you may need. Please log in to continue.'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.page {
  padding: 0;
  display: flex;
  width: 100%;
  height: 60%;
  align-items: center;
}
.side-banner {
  height: 100%;
  width: 25%;
  display: flex;
  align-items: center;
  background: linear-gradient(to right, #14a9e9 , #0098d8);
  border-radius: 8px 0 0 8px;
}
.side-banner h1 {
  width: 100%;
  text-align: center;
  font-variant: small-caps;
  font-size: 2.1rem;
  color: #F2FAFD;
  text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.075);
}
.page__content {
  width: 100%;
  /* height: 100%; */
  padding: 40px;
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
#row-3 {
  width: 100%;
  padding: 10px 0 0;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
#login__submit {
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
