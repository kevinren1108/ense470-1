<template>
    <div class="page">
        <div class="page__content">
          <h1 class="page__title">Welcome</h1>
          <div>
            <p>
              This application is a portal for requesting software.
              If you are an approver, you can manage the requests for
              your software here as well.
            </p>
            <br>
            <h3>
              Please login to continue
            </h3>
          </div>
          <div class="page__btn-container">
            <button class="btn--blue btn--large btn--main" @click="$router.push('/login')">Log in</button>
            <button class="btn--blue btn--large btn--main" @click="$router.push('/signup')">Sign up</button>
          </div>
          <!-- <div id="row-1"><input v-on:change="checkEmail()" type="text" class="login__input" id="email" placeholder="Email"/><div id="em__msg"></div></div>
          <div id="row-2"><input v-on:change="checkPassword()" type="password" class="login__input" id="password" placeholder="Password"/><div id="pw__msg"></div></div>
          <div id="row-3">
            <router-link to="/"><button v-on:click="validate()" class="btn--blue btn--large" id="login__submit">Log in</button></router-link>
            <p>Dont have an account? <a href="/#/signup" class="basic-link">Sign up now</a></p>
          </div> -->
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
  },
  methods: {
    validate: function () {
      var email = document.getElementById('email').value
      var emErrorMsg = ''
      if (!(/^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/.test(email))) {
        emErrorMsg += 'You have entered an invalid email address <br> '
      }
      if (emErrorMsg.length > 0) {
        document.getElementById('em__msg').innerHTML = emErrorMsg
      } else {
        document.getElementById('em__msg').innerHTML = ''
      }
      // password
      var password = document.getElementById('password').value
      var pwErrorMsg = ''
      if (password.length < 8) {
        pwErrorMsg += 'You have to enter at least 8 characters <br> '
      }
      if (pwErrorMsg.length > 0) {
        document.getElementById('pw__msg').innerHTML = pwErrorMsg
      } else {
        document.getElementById('pw__msg').innerHTML = ''
      }
    },
    checkEmail: function () {
      var email = document.getElementById('email').value
      var errorMsg = ''
      if (!(/^\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+$/.test(email))) {
        errorMsg += 'You have entered an invalid email address'
      }
      if (errorMsg.length > 0) {
        document.getElementById('em__msg').innerHTML = errorMsg
      } else {
        document.getElementById('em__msg').innerHTML = ''
      }
    },
    checkPassword: function () {
      var password = document.getElementById('password').value
      var errorMsg = ''
      if (password.length < 8) {
        errorMsg += 'You have to enter at least 8 characters'
      }
      if (errorMsg.length > 0) {
        document.getElementById('pw__msg').innerHTML = errorMsg
      } else {
        document.getElementById('pw__msg').innerHTML = ''
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.page {
  padding: 0;
  display: flex;
  width: 60%;
  min-width: 500px;
  height: 60%;
  align-items: center;
}
.page__content {
  width: 100%;
  /* height: 100%; */
  padding: 0;
  box-sizing: border-box;
}
.page__title {
  /* padding: 0 0 20px; */
  margin: 0 0 10px;
}
.page__btn-container {
  width: 100%;
}
.btn--main {
  width: 35%;
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
</style>
