<template>
    <div class="page">
        <div>
            <h1>{{ titel }}</h1>
        </div>
        <div class='page__content'>
            <table>
                <tr>
                    <td>First name:</td>
                    <td>{{ firstname }}</td>
                </tr>
                <tr>
                    <td>Last name:</td>
                    <td>{{ lastname }}</td>
                </tr>
                <tr>
                    <td>Email address:</td>
                    <td>{{ email }}</td>
                </tr>
                <tr>
                    <td>Company:</td>
                    <td>{{ company }}</td>
                </tr>
                <tr>
                    <td>Request:</td>
                    <td>{{ request }}</td>
                </tr>
                <tr>
                    <td><button class='btn--blue btn--full'>Accept</button></td>
                    <td><button class='btn--blue btn--full'>Decline</button></td>
                </tr>
            </table>
        </div>
    </div>
</template>

<script>
export default {
  name: 'signup',
  data () {
    return {
      titel: 'Approver/ Anaylst Ticket Viewer',
      firstname: 'frank',
      lastname: 'James',
      email: 'fj@gmail.com',
      company: 'city of Regina',
      request: 'mysql'
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
