<template>
    <div class="page">
        <div class="page__header">
            <h1 class="page__title">{{ title }}</h1>
        </div>
        <div>
            <table>
                <tr><td>First Name: </td><td> <input type="text" id="first__name" size="30" /></td></tr>
                <tr><td>Last Name: </td><td> <input type="text" id="last__name" size="30" /></td></tr>
                <tr><td>Email: </td><td> <input type="email" id="email" size="30" /></td></tr>
                <tr><td>Password: </td><td> <input type="password" id="password" size="30" /></td></tr>
                <tr><td>Verify Password: </td><td> <input type="password" id="vf__password" size="30" /></td></tr>
                <tr><td>Invitation Code: </td><td> <input type="text" id="inv__code" size="30" /></td></tr>
            </table>

            <button class="btn--blue btn--full">Sign up</button>
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
