<template>
    <div class="page">
        <div v-if="this.$store.state.isUserLoggedIn" class='page__content'>
            <div class="page__title-container page__title-container--button">
                <h1 class="page__title">Details</h1>
            </div>
            <div v-if="this.$store.state.isUserLoggedIn" class="list-container">
                <ul class="list">
                    <div>
                      <div v-if="ticket !== null" >
                        <span>Software Name: {{ticket.Software.softwareName}}</span>
                        <hr>
                        <span>Status: {{ticket.approval_status}}</span>
                        <hr>
                        <span v-if="ticket.approval_status != 'Pending'">Approve by: {{approver}}</span>
                        <hr v-if="ticket.approval_status != 'Pending'">
                        <span>Opened at: {{ticket.createdAt}}</span>
                        <hr>
                        <span>Last Updated at: {{ticket.updatedAt}}</span>
                        <hr>
                        <span v-if="ticket.approval_status != 'Pending'">Activate code: {{activate_code}}</span>
                        <hr v-if="ticket.approval_status != 'Pending'">
                        <div v-if="ticket.approval_status == 'Pending'">
                        <template v-if="$store.state.user.account__type === 1">
                                <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="approve">Approve</button></span>
                                <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="deny">Deny</button></span>
                        </template>
                        </div>
                      </div>
                    </div>
                </ul>
            </div>
        </div>
    </div>
</template>

<script>
import TicketService from '@/services/TicketService'
export default {
  // This page may be unnecessary if we have request details
  name: 'RequestDetailsPage',
  data () {
    return {
      ticket: null,
      activate_code: 'DASD-1ED1-VCUD-SI3N-DIAM',
      approver: 'Joe Davis'
    }
  },
  async mounted () {
    this.ticket = (await TicketService.GetTicketDetails(this.$route.params.id)).data
    // do a request to the backend for all the tickets
  },
  async decision () {
    try {
      const response = await AuthenticationServices.decision({
        id: this.id,
        new_state: this.new_state
      })
      this.$store.dispatch('login', {user: response.data.user, token: response.data.token})
        .then(() => this.$router.push('/'))
    } catch (error) {
      this.error = error
    }
  },
  methods: {
    async approve () {
      try {
        const response = await TicketService.ApproveTicket(
          parseInt(this.$route.params.id)
        ).then(() => this.$router.push('/my-requests'))
      } catch (err) {
        this.error = err
      }
    },
    async deny () {
      try {
        const response = await TicketService.DenyTicket(
          parseInt(this.$route.params.id)
        ).then(() => this.$router.push('/my-requests'))
      } catch (err) {
        this.error = err
      }
    },
    checkIfApprover () {
      for (item in this.$store.state.managedSoftwareIds) {
      }
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
