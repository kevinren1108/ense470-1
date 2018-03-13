<template>
    <div class="page">
        <div>
            <h1>{{ titel }}</h1>
        </div>
        <div class='page__content'>
            <table>
                <tr>
                    <td>Filter1</td>
                    <button class='btn--blue'>Filter1</button>
                </tr>
                <tr>
                    <td>Filter2</td>
                    <td><button class='btn--blue'>Filter2</button></td>
                </tr>
                <tr>
                    <td>List of program</td>
                    <td></td>
                </tr>
                <tr>
                    <td><button class='btn--blue btn--full'>Filter3</button></td>
                </tr>
                <button class='btn--blue btn--full'>Submit Request</button>
            </table>
        </div>
    </div>
</template>

<script>
export default {
  name: 'signup',
  data () {
    return {
      titel: 'Make a new Request'
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
