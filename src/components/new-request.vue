<template>
  <div class="page">
  <div v-if="this.$store.state.isUserLoggedIn" class='page__content'>
    <div class="page__title-container page__title-container--button">
      <h1 class="page__title">Request Software</h1>
    </div>
    <div>
      <input type="search" id="searchbar" placeholder="Search..." @change="search" v-model="query">
      <div :class="{ searching: positiveSearchResults,
                     'not-searching': !positiveSearchResults }" id="search-results">
        {{matches}}
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
        "Alpha Bravo Delta",
        "Astro Jammers",
        "Grave Jomers",
        "Stellar Fellar"
      ],
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
    }
  },
  watch: {
    query: function(val) {
      this.matches = []
      for (var item in this.software) {
        if (item.includes(val)) {
          this.matches.push(item)
        }
      }
    }
  },
  computed: {
    positiveSearchResults: function() {
      return this.matches.length > 0
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
  z-index: 100;
}
#search-results {
  width: 100%;
  margin: 5px 0 0;
  border: 1px solid rgba(74, 84, 90, 0.4);
  border-radius: 4px;
  background: #FBFBFB;
}
.searching {
 visibility: visible;
}
.not-searching {
  visibility: hidden;
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
