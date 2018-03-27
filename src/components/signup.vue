<template>
  <div class="page">
      <div class="page__content">
        <div class="page__title-container">
          <h1 class="page__title">Sign up</h1>
        </div>
        <div id="row-1"><input v-on:change="checkFirstName()" type="text" v-model="first__name" class="login__input" id="first__name" placeholder="First Name"/><div id="fn__msg"></div></div>
        <div id="row-2"><input v-on:change="checkLastName()" type="text" v-model="last__name" class="login__input" id="last__name" placeholder="Last Name"/><div id="ln__msg"></div></div>
        <div id="row-3"><input v-on:change="checkEmail()" type="text" v-model="email" class="login__input" id="email" placeholder="Email"/><div id="em__msg"></div></div>
        <div id="row-4"><input type="password" v-model="password" class="login__input" id="password" placeholder="Password"/><div id="pw__msg"></div></div>
        <div id="row-5"><input type="password" v-model="vf__password" class="login__input" id="verify__password" placeholder="Verify Password"/><div id="vpw__msg"></div></div>
        <div id="row-6">
          <button v-on:click="validate(); submit__signup"  class="btn--blue btn--large" id="signup__submit">Sign up</button>
          <p>Already have an account? <router-link to="/login" class="basic-link">Log in here</router-link></p>
        </div>
      </div>
  </div>
</template>

<script>
import AuthenticationServices from '@/services/AuthenticationServices'
export default {
  name: 'SignupPage',
  data () {
    return {
      title: 'Sign up',
      first__name: '',
      last__name: '',
      email: '',
      password: '',
      vf__password: '',
      user__status: '1',
      error: null
    }
  },
  methods: {
    async submit__signup () {
      var isValid = this.validate()
      if (!isValid) {
<<<<<<< HEAD
        return }
      else {
=======
        return 1
      } else {
>>>>>>> 1fa9044d5339709a81b574af3422f1580725f0a9
        try {
          const response = await AuthenticationServices.sign__up({
            first__name: this.first__name,
            last__name: this.last__name,
            email: this.email,
            password: this.password,
            user__status: this.user__status
          })
          this.$store.dispatch('setToken', response.data.token)
          this.$store.dispatch('setUser', response.data.user)
        } catch (error) {
          this.error = error.response.data.error
        }
      }
    },
    validate: function () {
      // email
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
      // verify password
      var verifyPassword = document.getElementById('verify__password').value
      var password = document.getElementById('password').value
      var vpwErrorMsg = ''
      if (verifyPassword !== password) {
        vpwErrorMsg += 'Password need matches <br>'
      }
      if (vpwErrorMsg.length > 0) {
        document.getElementById('vpw__msg').innerHTML = vpwErrorMsg
      } else {
        document.getElementById('vpw__msg').innerHTML = ''
      }
      var errorMsg = emErrorMsg + vpwErrorMsg
      if (errorMsg.length > 0) {
        return false
      }
    }
  }
}
</script>

<style scoped>
#content {
  /* padding: 0; */
  /* align-items: center; */
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
  /* margin: 0 0 120px; */
  padding: 0;
  box-sizing: border-box;
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
