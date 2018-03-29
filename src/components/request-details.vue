<template>
    <div class="page">
        <div class='page__content'>
            <div class="page__title-container page__title-container--button">
                <h1 class="page__title">Ticket</h1>
            </div>
            <div class="list-container">
                <ul class="list">
                    
                        <li class="list__item list__item--request">
                            <span class="list__item__title">{{firstname}}</span>
                            <span class="list__item__title">{{ticket.lastname}}</span>
                            <span class="list__item__title">{{ticket.email}}</span>
                            <span class="list__item__title">{{ticket.company}}</span>
                            <span class="list__item__title">{{ticket.request}}</span>
                            <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="$router.push('/request/' + request.id)">Accept</button></span>
                            <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="$router.push('/request/' + request.id)">Decline</button></span>
                        </li>
                    <hr>
                    
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
export default {
  // This page may be unnecessary if we have request details
  name: 'RequestDetailsPage',
  data () {
    return {
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
