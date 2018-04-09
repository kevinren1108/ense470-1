<template>
  <div class="page">
    <div v-if="this.$store.state.isUserLoggedIn" class='page__content'>
      <div class="page__title-container page__title-container--button">
        <h1 class="page__title">My Requests</h1>
        <span class="page__title__btn-container"><button class="btn--green page__title__btn btn--large" @click="$router.push('/new-request')">New Request</button></span>
      </div>
      <div class="list-container">
        <ul class="list">
          <div v-for="request in requests" :key="request.id">
            <li  v-if="request.UserId === $store.state.user.id" class="list__item list__item--request">
              <span class="list__item__title">{{request.id}}</span>
              <span class="list__item__status">{{request.approval_status}}</span>
              <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="$router.push('/request/' + request.id)">View</button></span>
            </li>
            <hr v-if="request.user_id === $store.state.user.id">
          </div>
        </ul>
      </div>
      <div v-if="$store.state.user.account__type === 1">
        <div class="page__title-container page__title-container--button">
          <h1 class="page__title">Pending Tickets</h1>
        </div>
        <div class="list-container">
          <ul class="list">
            <div v-for="ticket in tickets" :key="ticket.id">
              <li  v-if="ticket.approval_status === 'Pending'" class="list__item list__item--request">
                <span class="list__item__title">{{ticket.id}}</span>
                <span class="list__item__status">{{ticket.approval_status}}</span>
                <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="$router.push('/request/' + ticket.id)">View</button></span>
              </li>
              <hr v-if="ticket.user_id === $store.state.user.id">
            </div>
          </ul>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import TicketService from '@/services/TicketService'
export default {
  name: 'MyRequestsPage',
  data () {
    return {
      requests: null,
      tickets: null
    }
  },
  async mounted () {
    this.requests = (await TicketService.GetMyRequests($store.state.user.id)).data
    this.tickets = (await TicketService.GetMyPendingTickets($store.state.user.id)).data
    // do a request to the backend for all the tickets
  }
}
</script>

<style scoped>
.page {
  padding: 0;
  width: 100%;
  min-width: 500px;
  height: 100%;
  display: flex;
  align-items: center;
}
.page__content {
  width: 100%;
  /* height: 100%; */
  /* margin: 0 0 120px; */
  padding: 0;
  box-sizing: border-box;
}
.page__title-container--button {
  width: 100%;
  margin: 0 0 11px;
  display: flex;
  justify-content: space-between;
  align-items: center;
}
.page__title {
  /* padding: 0 0 20px; */
  margin: 0;
}
.page__title__btn {
  /* margin: 0 16px 0 0; */
  width: 217px;
  padding: 16px 24px;
  border-radius: 4px;
  white-space: nowrap;
}
.list-container {
  width: 100%;
  border: 1px solid rgba(74, 84, 90, 0.4);
  border-radius: 4px;
  background: #FBFBFB;
  padding: 6px 6px;
  margin: 0 0 10px;
  box-sizing: border-box;
}
.list {
  margin: 0;
}
.list__btn-container {
  padding: 0 10px;
}
.list__btn--full {
  width: 100%;
  border-radius: 4px;
  padding: 17px 32px;
  margin: 5px 0;
  box-shadow: 1px 1px 4px 0 rgba(0,0,0,0.1),
              2px 4px 4px 0 rgba(0,0,0,0.05);
}
.list__item {
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin: 0;
  padding: 5px 10px;
  border-radius: 4px;
}
.list__item:hover {
  transition: all 0.2s ease 0s;
  background: #EEEEEE;
}
.list__item__title {
  width: 40%;
  text-align: left;
}
.list__item__status {
  width: 40%;
  text-align: center;
}
.list__item__btn-container {
  width: 20%;
  text-align: right;
}
.list__item__btn {
  border-radius: 4px;
  padding: 12px 32px;
  box-shadow: 1px 1px 4px 0 rgba(0,0,0,0.1),
              2px 4px 4px 0 rgba(0,0,0,0.05);
}
hr {
  margin: 6px;
  border: 0;
  height: 1px;
  background: rgba(31, 44, 51, 0.1);
}
h1, h2, p {
  text-align: left;
  padding: 0;
  margin: 0;
}

h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  margin: 0;
}
a {
  color: #42b983;
}
</style>
