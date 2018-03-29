<template>
  <div class="page">
      <div class="page__content">
        <div class="page__title-container">
          <h1 class="page__title">Sign up</h1>
        </div>
        <div id="row-1"><input type="text" v-model="first__name" class="login__input" id="first__name" placeholder="First Name"/><div id="fn__msg"></div></div>
        <div id="row-2"><input type="text" v-model="last__name" class="login__input" id="last__name" placeholder="Last Name"/><div id="ln__msg"></div></div>
        <div id="row-3"><input type="text" v-model="email" class="login__input" id="email" placeholder="Email"/><div id="em__msg"></div></div>
        <div id="row-4"><input type="password" v-model="password" class="login__input" id="password" placeholder="Password"/><div id="pw__msg"></div></div>
        <div id="row-5"><input type="password" v-model="vf__password" class="login__input" id="verify__password" placeholder="Verify Password"/><div id="vpw__msg"></div></div>
        <div id="row-6">
          <button @click="signup"  class="btn--blue btn--large" id="signup__submit">Sign up</button>
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
      account__type: '0',
      error: null
    }
  },
  methods: {
    async signup () {
      var isValid = this.validate()
      if (!isValid) {
        return 1
      } else {
        try {
          const response = await AuthenticationServices.sign__up({
            first__name: this.first__name,
            last__name: this.last__name,
            email: this.email,
            password: this.password,
            account__type: this.account__type
          })
           // if(account__type === '1'){
           //   AuthenticationServices.new__approver({
           //     UserId: response.data.id,
           //   })
           // }
          this.$store.dispatch('login', {user: response.data.user, token: response.data.token})
            .then(response => this.$router.push('/'))
        } catch (error) {
          this.error = error
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
      } else {
        return true
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
