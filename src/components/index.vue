<template>
    <div class="welcome">
        <div>
            <h1>{{ welcome }}</h1>
        </div>

        <div>
            <h2>{{ description }} </h2>
        </div>

        <div>
            <p><button class="btn--blue">Log in</button> Dont have an account? <a href="/#/signup">Sign up now</a></p>
        </div>
    </div>
</template>

<script>
export default {
  name: 'signup',
  data () {
    return {
      welcome: 'Welcome',
      description: 'This is a government website allow user download their desired software'
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

button {
    background-color: #0098DB; /* Green */
    border: none;
    border-radius: 4px;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
</style>
