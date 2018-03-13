<template>
  <div class="page">
    <div class="page__header">
        <h1 class="page__title">{{ title }}</h1>
    </div>
    <div class="page__content">
      Username: <input type="text">
      Password: <input type="text">
      <button class="btn--blue btn--full">Log in</button>
    </div>
  </div>
</template>

<script>
export default {
  name: 'login',
  data () {
    return {
      title: 'Log in'
    }
  }
}
</script>

<style>

</style>
