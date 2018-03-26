<template>
    <div class="page">
        <div class="page__header">
            <h1 class="page__title">{{ title }}</h1>
        </div>
        <div>
            <table>
                <tr><td>First Name: </td><td> <input type="text" id="first__name" v-model="first__name" size="30" /></td></tr>
                <tr><td>Last Name: </td><td> <input type="text" id="last__name" v-model="last__name" size="30" /></td></tr>
                <tr><td>Email: </td><td> <input type="email" id="email" v-model="email" size="30" /></td></tr>
                <tr><td>Password: </td><td> <input type="password" id="password" v-model="password" size="30" /></td></tr>
                <tr><td>Verify Password: </td><td> <input type="password" id="vf__password" v-model="vf__password" size="30" /></td></tr>
                <tr><td>Invitation Code: </td><td> <input type="text" id="inv__code" v-model="inv__code" size="30" /></td></tr>
            </table>

            <button class="btn--blue btn--full" @click="submit__signup" >Sign up</button>
        </div>
    </div>
</template>

<script>
import AuthenticationServices from '@/services/AuthenticationServices'
export default {
  name: 'signup',
  data () {
    return {
      title: 'Sign up',
      first__name: '',
      last__name: '',
      email: '',
      password: '',
      vf__password: '',
      inv__code: '',
      error: null
    }
  },
  methods: {
    async submit__signup () {
      try {
        await AuthenticationServices.sign__up({
          first__name: this.first__name,
          last__name: this.last__name,
          email: this.email,
          password: this.password,
          inv__code: this.inv__code
        })
      } catch (error) {
        this.error = error.response.data.error
      }
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2, p {
    text-align: left;
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
