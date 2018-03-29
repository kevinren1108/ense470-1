<template>
    <div class="page">
        <div class="page__content">
          <template v-if="!this.$store.state.isUserLoggedIn">
            <div class="page__title-container">
              <h1 class="page__title">Welcome</h1>
            </div>
            <div>
              <p>
                This application is a portal for requesting software.
                If you are an approver, you can manage the requests for
                your software here as well.
              </p>
              <br>
              <h3>
                Please login to continue
              </h3>
            </div>
            <div class="page__btn-container">
              <button class="btn--blue btn--large btn--main" @click="$router.push('/login')">Log in</button>
              <button class="btn--blue btn--large btn--main" @click="$router.push('/signup')">Sign up</button>
            </div>
          </template>
          <template v-else>
            <div class="page__title-container">
              <h1 class="page__title">Welcome, {{this.$store.state.user.first__name}}</h1>
            </div>
            <div class='page__content'>
              <div class="page__title-container page__title-container--button">
                <h1 class="page__title">My Software</h1>
              </div>
              <div class="list-container">
                <ul class="list">
                  <div v-for="item in software" :key="item.id">
                    <li class="list__item list__item--request">
                      <span class="list__item__title">{{item.name}}</span>
                      <span class="list__item__btn-container"><button class="btn--blue list__item__btn" @click="$router.push('/request/' + request.id)">View</button></span>
                    </li>
                    <hr>
                  </div>
                </ul>
              </div>
            </div>
          </template>
          <!-- <div id="row-1"><input v-on:change="checkEmail()" type="text" class="login__input" id="email" placeholder="Email"/><div id="em__msg"></div></div>
          <div id="row-2"><input v-on:change="checkPassword()" type="password" class="login__input" id="password" placeholder="Password"/><div id="pw__msg"></div></div>
          <div id="row-3">
            <router-link to="/"><button v-on:click="validate()" class="btn--blue btn--large" id="login__submit">Log in</button></router-link>
            <p>Dont have an account? <a href="/#/signup" class="basic-link">Sign up now</a></p>
          </div> -->
        </div>
    </div>
</template>

<script>
export default {
  name: 'index',
  data () {
    return {
      description: 'This is a portal for requesting access to any software you may need. Please log in to continue.',
      software: [
        {
          name: 'Generic Software 1',
          id: 0
        },
        {
          name: 'Unique Software',
          id: 1
        }
      ]
    }
  },
  methods: {
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.page {
  padding: 0;
  display: flex;
  width: 60%;
  min-width: 500px;
  height: 60%;
  align-items: center;
}
.page__content {
  width: 100%;
  /* height: 100%; */
  padding: 0;
  box-sizing: border-box;
}
.page__btn-container {
  width: 100%;
}
.btn--main {
  width: 35%;
}
.login__input {
  width: 100%;
  margin: 10px 0;
  padding: 16px;
  border-radius: 4px;
  border: 1px solid rgba(74, 84, 90, 0.4);
  box-sizing: border-box;
}
#row-3 {
  width: 100%;
  padding: 10px 0 0;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
#login__submit {
  padding: 16px 64px;
}
.list-container {
  width: 100%;
  border: 1px solid rgba(74, 84, 90, 0.4);
  border-radius: 4px;
  background: #FBFBFB;
  padding: 6px 6px;
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
h1, h2, h3 {
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
</style>
