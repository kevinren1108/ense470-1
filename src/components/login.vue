<template>
  <div class="page">
    <div class="page__header">
        <h1 class="page__title">{{ title }}</h1>
    </div>
    <div class="page__content">
      Email: <input type="text" v-model: email >
      Password: <input type="text" v-model: password >
      <button class="btn--blue btn--full">Log in</button>
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
      try {
        await AuthenticationServices.login({
          email: this.email,
          password: this.password
        })
      } catch (error) {
        this.error = error.response.data.error
      }
    }
  }
}
</script>

<style>

</style>
