<template>
    <div class="welcome">
        <div>
            <h1>{{ welcome }}</h1>
        </div>

        <div>
            <h2>{{ description }} </h2>
        </div>

        <div id="app-5">
            <p>{{ message }}</p>
            <p><button>sign up</button> <button>log in</button></p>
        </div>
    </div>
</template>

<script>
export default {
  name: 'signup',
  data () {
    return {
      welcome: 'Welcome',
      description: 'This is a government website allow user download their desired software',
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
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
button {
    background-color: #0098DB; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
</style>
