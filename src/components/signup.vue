<template>
    <div class="welcome">
        <div>
            <h1>{{ titel }}</h1>
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

            <p><input class="btn--blue" type="submit" value="Submit"></p>
        </div>
    </div>
</template>

<script>
export default {
  name: 'signup',
  data () {
    return {
      titel: 'Sign up',
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
.btn--blue {
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
