<template>
    <div class="page">
        <div class='page__content'>
            <div class="page__title-container page__title-container--button">
                <h1 class="page__title">Ticket</h1>
            </div>
            <div v-if="this.$store.state.isUserLoggedIn" class="list-container">
                <ul class="list">
                    <div v-for="ticket in tickets" :key="ticket.id">
                      <div><span>Requested by: {{ticket.firstname}}</span></div>
                      <hr>
                      <div><span>Approve by: {{ticket.approver}}</span></div>
                      <hr>
                      <div><span>Opened at: {{ticket.opened}}</span></div>
                      <hr>
                      <div><span>Last Updated at: {{ticket.lastUpdated}}</span></div>
                      <hr>
                      <template v-if="$store.state.user.account__type === 1">
                        <div>                        
                            <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="$router.push('/request/' + request.id)">Accept</button></span>
                            <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="$router.push('/request/' + request.id)">Decline</button></span>             
                        </div>
                      </template>
                    </div>
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
      tickets: [{
        firstname: 'frank', 
        lastname: 'James', 
        email: 'fj@gmail.com', 
        company: 'city of Regina', 
        request: 'mysql',
        approver: 'Tom',
        opened: '01:02 03/04/2015',
        lastUpdated: '01:02 03/04/2015',
        id: 1}]
    }
  },
  async mounted() {
    this.requests = (await TicketService.GetAllTickets()).data
    //do a request to the backend for all the tickets
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
