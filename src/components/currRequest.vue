<template>
    <div class="page">
        <div>
            <h1>{{ titel }}</h1>
        </div>
        <div class='page__content'>
            <table>
                <tr>
                    <td>First request</td>
                    <td><button class='btn--blue request__button'>view</button></td>
                    <td><button class='btn--blue request__button'>delete</button></td>
                </tr>
                <button class='btn--blue btn--full'>New Request</button>
            </table>
        </div>
    </div>
</template>

<script>
export default {
  name: 'signup',
  data () {
    return {
      titel: 'Current Request'
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

.request__button{
    align-items: right;
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
