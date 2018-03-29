<template>
  <div class="page">
      <div class="page__content">
        <h1 class="page__title">Log in</h1>
        <div id="row-1"><input v-on:change="checkEmail()" type="text" class="login__input" id="email" placeholder="Email" v-model="email"/><div id="em__msg"></div></div>
        <div id="row-2"><input v-on:change="checkPassword()" type="password" class="login__input" id="password" placeholder="Password" v-model="password"/><div id="pw__msg"></div></div>
        <div id="row-3">
          <button @click="login" class="btn--blue btn--large" id="login__submit">Log in</button>
          <p>Dont have an account? <router-link to="/signup" class="basic-link">Sign up now</router-link></p>
        </div>
      </div>
    </div>
</template>

<script>
import AuthenticationServices from '@/services/AuthenticationServices'
export default {
  name: 'login',
  data () {
    return {
      title: 'Log in',
      email: '',
      password: '',
      error: null
    }
  },
  methods: {
    async login () {
      var isValid = this.validate()
      if (!isValid) {
        return 1
      } else {
        try {
          const response = await AuthenticationServices.login({
            email: this.email,
            password: this.password
          })
          this.$store.dispatch('login', response.data.user, response.data.token)
            .then(() => this.$router.push('/'))
        } catch (error) {
          this.error = error
        }
      }
    },
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
      if (emErrorMsg.length > 0 || pwErrorMsg > 0) {
        return false
      } else {
        return true
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
