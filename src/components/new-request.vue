<template>
  <div class="page">
  <div v-if="this.$store.state.isUserLoggedIn" class='page__content'>
    <div class="page__title-container page__title-container--button">
      <h1 class="page__title">Request Software</h1>
    </div>
    <div style="position: relative;">
      <input type="search" id="searchbar" placeholder="Search..." v-model="query">
      <div v-if="this.matches.length > 0 && !this.selected"  id="search-results-container" :style="{'z-index': this.zIndex}">
        <ul id="search-results-list">
          <li class="search-results-list__item" v-for="item in this.matches" :key="item.id" @click="resultSelect(item.name)">{{item.name}}</li>
        </ul>
      </div>
    </div>
    <div class="page__btn-container">
      <button class="btn btn--blue btn--large btn--main">Cancel</button>
      <button class="btn btn--blue btn--large btn--main">Request</button>
    </div>
  </div>
  </div>
</template>

<script>
export default {
  name: 'NewRequestPage',
  data () {
    return {
      query: '',
      software: [
        {name: "Alpha Bravo Delta", id: 0},
        {name: "Astro Jammers", id:1},
        {name: "Grave Jomers", id: 2},
        {name: "Stellar Fellar", id: 3}
      ],
<<<<<<< HEAD
      matches: []
    }
  },
  methods: {
    search: function() {
      this.matches = []
      for (item in this.software) {
        if (item.includes(query)) {
          this.matches.push(item)
        }
      }
      return thismatches
    },
    async signup () {
    var isValid = this.validate()
    if (!isValid) {
      return 1
    } else {
      try {
        await AuthenticationServices.sign__up({
          approval_status: this.first__name,
          software_ID: this.last__name,
          email: this.email,
          password: this.password,
          account__type: this.account__type
        })
      } catch (error) {
        this.error = error
      }
=======
      matches: [],
      selected: false,
      zIndex: 0
>>>>>>> a2c1d511511bf8b07d8f8cb1c02113a3daf2b6e7
    }
   },
  },
  watch: {
    query: function(query) {
      let currMatches = []
      if (query.length > 0 && !this.selected) {
        for (let item of this.software) {
          if (item.name.toLowerCase().includes(query.toLowerCase())) {
            currMatches.push(item)
          }
        }
      }
      this.matches = currMatches
      this.zIndex = this.matches.length > 0 ? 100 : 0
      this.selected = false
    }
  },
  methods: {
    resultSelect: function(result) {
      this.query = result
      this.selected = true
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
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
.page__title {
  /* padding: 0 0 20px; */
  margin: 0;
}
#searchbar {
  width: 100%;
  height: 50px;
  border: 1px solid rgba(74, 84, 90, 0.4);
  border-radius: 4px;
  background: #FBFBFB;
  padding: 12px 12px;
  box-sizing: border-box;
  font-size: 1.3rem;
  margin: 0 0 11px;
}
#search-results-container {
  width: 100%;
  margin: -5px 0 0;
  padding: 6px 6px;
  border: 1px solid rgba(74, 84, 90, 0.4);
  border-radius: 4px;
  background: #FBFBFB;
  position: absolute;
  box-sizing: border-box;
}
#search-results-list {
  margin: 0;
  padding: 0;
}
.search-results-list__item {
  padding: 5px 10px;
  text-align: left;
  width: 100%;
  border-radius: 4px;
  box-sizing: border-box;
}
.search-results-list__item:hover {
  transition: all 0.2s ease 0s;
  background: #EEEEEE;
  cursor: pointer;
}
.page__btn-container {
  width: 100%;
  box-sizing: border-box;
  display: flex;
  justify-content: space-between;
  flex-wrap: nowrap;
}
.btn--main {
  flex-grow: 1;
  max-width: 49%;
  height: 50px;
}
.btn--blue:hover {
  background: #0085be;
}
.btn--blue:active {
  background: #0071a1;
}
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
a {
    color: #42b983;
}
</style>
